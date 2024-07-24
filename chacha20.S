# A ChaCha20 RISC-V implementation using only the RV32M Multiply Extension
# The flow of this file follows the [RFC](https://www.rfc-editor.org/rfc/rfc7539.html) by design

# Rotate src left by n bits and store in dst
.macro rotl dst, src, n
	sll					t1, \src, \n
	srl 				t2, \src, (32 - \n)
	or					\dst, \t1, \t2
.endm

# https://www.rfc-editor.org/rfc/rfc7539.html#section-2
.macro QuarterRoundCore x, y, z, i
	add					\x, \x, \y
	xor					\z, \z, \x
	slli				\z, \z, \i
.endm

.macro QuarterRound a, b, c, d
	QuarterRoundCore	\a, \b, \d, 16
	QuarterRoundCore	\c, \d, \b, 12
	QuarterRoundCore	\a, \b, \d, 8
	QuarterRoundCore	\c, \d, \b, 7
.endm

_ChaCha20_Block:
	# Arguments
	# a6: uint32[16] 	out
	# a3: uint32[8]		key
	# a4: uint32[3]		nonce
	# a5: uint32		block_count

	# Allocate space for 12 words
	# 8 words for 256-bit key
	# 3 words for 96-bit nonce
	# 1 word for 32-bit block count
	addi				sp, sp, -64
	
	# Save return address and s-registers
	sw 					ra,  60(sp)
	sw					s0,  56(sp)
	sw					s1,  52(sp)
	sw					s2,  48(sp)
	sw					s3,  44(sp)
	sw					s4,  40(sp)
	sw					s5,  36(sp)
	sw					s6,  32(sp)
	sw					s7,  28(sp)
	sw					s8,  24(sp)
	sw					s9,  20(sp)
	sw					s10, 16(sp)
	sw					s11, 12(sp)

	# Initialize ChaCha20 state
	# The first four words (0-3) are constants:
	li					s0,	0x61707865
	li					s1,	0x3320646e
	li					s2,	0x79622d32
	li					s3,	0x6b206574
	# The next eight words (4-11) are taken from the 256-bit key by reading
	# the bytes in little-endian order, in 4-byte chunks
	lw					s4,   0(a3)
	lw					s5,   4(a3)
	lw					s6,   8(a3)
	lw					s7,  12(a3)
	lw					s8,  16(a3)
	lw					s9,  20(a3)
	lw					s10, 24(a3)
	lw					s11, 28(a3)
	# Word 12 (a5) is a block counter
	# Words 13-15 are a nonce. The 13th word is the first 32 bits of the input
	# nonce taken as a little-endian integer, while the 15th word is the last
	# 32 bits.
	lw					t0,	 0(a4)
	lw					t1,  4(a4)
	lw					t2,  8(a4)

	# ChaCha20 runs 20 rounds [10 iterations], alternating between 
	# "column rounds" and "diagonal rounds". 
	andi				t3, zero, 10

_ChaCha20_Block_Loop:

	# +-------+-------+--------+--------+
	# | 0 s0  | 1 s1  | 2 s2   | 3 s3   |
	# +-------+-------+--------+--------+
	# | 4 s4  | 5 s5  | 6 s6   | 7 s7   |
	# +-------+-------+--------+--------+
	# | 8 s8  | 9 s9  | 10 s10 | 11 s11 |
	# +-------+-------+--------+--------+
	# | 12 a5 | 13 t0 | 14 t1  | 15 t2  |
	# +-------+-------+--------+--------+
	
	# Each round consists of four quarter-rounds, and they are run as follows
	# Quarter rounds 1-4 are part of a "column" round,
	QuarterRound		s0, s4, s8, a5
	QuarterRound		s1, s5, s9, t0
	QuarterRound		s2, s6, s10, t1
	QuarterRound		s3, s7, s11, t2
	# while 5-8 are part of a "diagonal" round:
	QuarterRound		s0, s5, s10, t2
	QuarterRound		s1, s6, s11, a5
	QuarterRound		s2, s7, s8, t0
	QuarterRound		s3, s4, s9, t1

	addi				t3, t3, -1
	bne					t3, zero, _ChaCha20_Loop

	# Save to out
	sw					s0,   0(a6)
	sw					s1,	  4(a6)
	sw					s2,	  8(a6)
	sw					s3,	 12(a6)
	sw					s4,  16(a6)
	sw					s5,  20(a6)
	sw					s6,  24(a6)
	sw					s7,  28(a6)
	sw					s8,  32(a6)
	sw					s9,  36(a6)
	sw					s10, 40(a6)
	sw					s11, 44(a6)
	sw					a5,  48(a6)
	sw					t0,  52(a6)
	sw					t1,  56(a6)
	sw					t2,  60(a6)

	# Restore callee-saved registers
	lw 					ra,  60(sp)
	lw					s0,  56(sp)
	lw					s1,  52(sp)
	lw					s2,  48(sp)
	lw					s3,  44(sp)
	lw					s4,  40(sp)
	lw					s5,  36(sp)
	lw					s6,  32(sp)
	lw					s7,  28(sp)
	lw					s8,  24(sp)
	lw					s9,  20(sp)
	lw					s10, 16(sp)
	lw					s11, 12(sp)
	addi				sp, sp, 64

	ret

ChaCha20_Encrypt:
	# Arguments
	# a0: uint8*	out
	# a1: uint8*	in
	# a2: uint32	len
	# a3: uint32[8]	key
	# a4: uint32[3]	nonce
	# a5: uint32	counter

	# Allocate space for block output
	addi				sp, sp, -64
	mv					a6, sp

	# Save return address and s-registers
	addi				sp, sp, -32
	sw 					ra, 28(sp)
	sw					s0, 24(sp)
	sw					s1, 20(sp)
	sw					s2, 16(sp)

	# https://www.rfc-editor.org/rfc/rfc7539.html#section-2.4.1
	# 2.4.1.  The ChaCha20 Encryption Algorithm in Pseudocode
    #  chacha20_encrypt(key, counter, nonce, plaintext):

    #     for j = 0 upto floor(len(plaintext)/64)-1
	# Initialize loop variables
	and					s0, zero, zero	# j = 0
	srl					s1, a2, 6		# floor(len(plaintext)/64)
	addi				s1, s1, -1		# floor(len(plaintext)/64) - 1
_ChaCha20_Loop:

    #        key_stream = chacha20_block(key, counter+j, nonce)
    #        block = plaintext[(j*64)..(j*64+63)]
    #        encrypted_message +=  block ^ key_stream
	addi				a5, a5, 1
	jal					_ChaCha20_Block
	li					t1, 64
	mul					t0, s0, t1		# t0 = j * 64
	add					t0, t0, a1		#    = plaintext[j * 64]
	mul					t6, s6, t1		# t6 = j * 64
	add					t6, t6, a0		#    = out[j * 64]
	# Load first eighth of block from plaintext
	lw					t1, 0(t0)
	lw					t2, 4(t0)
	# Load first eighth of block from keystream
	lw					t3, 0(a6)
	lw					t4, 4(a6)
	# XOR first eighth of block with keystream
	xor					t1, t1, t3
	xor					t2, t2, t4
	# Store first eighth of [block ^ key_stream] into out
	sw					t1, 0(t6)
	sw					t2, 4(t6)
	# Repeat for remaining eighths
	# 2/8
	lw					t1,  8(t0)
	lw					t2, 12(t0)
	lw					t3,  8(a6)
	lw					t4, 12(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1,  8(t6)
	sw					t2, 12(t6)
	# 3/8
	lw					t1, 16(t0)
	lw					t2, 20(t0)
	lw					t3, 16(a6)
	lw					t4, 20(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 16(t6)
	sw					t2, 20(t6)
	# 4/8
	lw					t1, 24(t0)
	lw					t2, 28(t0)
	lw					t3, 24(a6)
	lw					t4, 28(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 24(t6)
	sw					t2, 28(t6)
	# 5/8
	lw					t1, 32(t0)
	lw					t2, 36(t0)
	lw					t3, 32(a6)
	lw					t4, 36(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 32(t6)
	sw					t2, 36(t6)
	# 6/8
	lw					t1, 40(t0)
	lw					t2, 44(t0)
	lw					t3, 40(a6)
	lw					t4, 44(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 40(t6)
	sw					t2, 44(t6)
	# 7/8
	lw					t1, 48(t0)
	lw					t2, 52(t0)
	lw					t3, 48(a6)
	lw					t4, 52(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 48(t6)
	sw					t2, 52(t6)
	# 8/8
	lw					t1, 56(t0)
	lw					t2, 60(t0)
	lw					t3, 56(a6)
	lw					t4, 60(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 56(t6)
	sw					t2, 60(t6)

	addi				s0, s0, 1
	bne					s0, s1, _ChaCha20_Loop # j upto floor(len(plaintext)/64)-1
    #        end

    #     \if ((len(plaintext) % 64) != 0)
	li					t0, 64
	remu				t1, a2, t0
	beq					t1, zero, _ChaCha20_Exit


    #        j = floor(len(plaintext)/64)
	div					t1, a2, t0
	li 					t2, 64
	mul					t0, t1, t2		# t0 = j * 64
	add					t0, t0, a1		#    = plaintext[j * 64]
	mul					t6, t1, t2		# t6 = j * 64
	add					t6, t6, a0		#    = out[j * 64]
    #        key_stream = chacha20_block(key, counter+j, nonce)
    #        block = plaintext[(j*64)..len(plaintext)-1]
    #        encrypted_message += (block^key_stream)[0..len(plaintext)%64]
	# Load first eighth of block from plaintext
	lw					t1, 0(t0)
	lw					t2, 4(t0)
	# Load first eighth of block from keystream
	lw					t3, 0(a6)
	lw					t4, 4(a6)
	# XOR first eighth of block with keystream
	xor					t1, t1, t3
	xor					t2, t2, t4
	# Store first eighth of [block ^ key_stream] into out
	sw					t1, 0(t6)
	sw					t2, 4(t6)
	# Repeat for remaining eighths
	# 2/8
	lw					t1,  8(t0)
	lw					t2, 12(t0)
	lw					t3,  8(a6)
	lw					t4, 12(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1,  8(t6)
	sw					t2, 12(t6)
	# 3/8
	lw					t1, 16(t0)
	lw					t2, 20(t0)
	lw					t3, 16(a6)
	lw					t4, 20(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 16(t6)
	sw					t2, 20(t6)
	# 4/8
	lw					t1, 24(t0)
	lw					t2, 28(t0)
	lw					t3, 24(a6)
	lw					t4, 28(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 24(t6)
	sw					t2, 28(t6)
	# 5/8
	lw					t1, 32(t0)
	lw					t2, 36(t0)
	lw					t3, 32(a6)
	lw					t4, 36(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 32(t6)
	sw					t2, 36(t6)
	# 6/8
	lw					t1, 40(t0)
	lw					t2, 44(t0)
	lw					t3, 40(a6)
	lw					t4, 44(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 40(t6)
	sw					t2, 44(t6)
	# 7/8
	lw					t1, 48(t0)
	lw					t2, 52(t0)
	lw					t3, 48(a6)
	lw					t4, 52(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 48(t6)
	sw					t2, 52(t6)
	# 8/8
	lw					t1, 56(t0)
	lw					t2, 60(t0)
	lw					t3, 56(a6)
	lw					t4, 60(a6)
	xor					t1, t1, t3
	xor					t2, t2, t4
	sw					t1, 56(t6)
	sw					t2, 60(t6)

    #        end
_ChaCha20_Exit:

	# Restore callee-saved registers
	lw 					ra, 28(sp)
	lw					s0, 24(sp)
	lw					s1, 20(sp)
	lw					s2, 16(sp)
	addi				sp, sp, 32
	addi				sp, sp, 64 # account for stack array

    #     return encrypted_message
	ret

    #     end
