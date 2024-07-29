	.file	"tasks.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	pxCurrentTCB
	.section	.sbss,"aw",@nobits
	.align	2
	.type	pxCurrentTCB, @object
	.size	pxCurrentTCB, 4
pxCurrentTCB:
	.zero	4
	.local	pxReadyTasksLists
	.comm	pxReadyTasksLists,180,4
	.local	xDelayedTaskList1
	.comm	xDelayedTaskList1,20,4
	.local	xDelayedTaskList2
	.comm	xDelayedTaskList2,20,4
	.local	pxDelayedTaskList
	.comm	pxDelayedTaskList,4,4
	.local	pxOverflowDelayedTaskList
	.comm	pxOverflowDelayedTaskList,4,4
	.local	xPendingReadyList
	.comm	xPendingReadyList,20,4
	.local	xTasksWaitingTermination
	.comm	xTasksWaitingTermination,20,4
	.local	uxDeletedTasksWaitingCleanUp
	.comm	uxDeletedTasksWaitingCleanUp,4,4
	.local	xSuspendedTaskList
	.comm	xSuspendedTaskList,20,4
	.local	uxCurrentNumberOfTasks
	.comm	uxCurrentNumberOfTasks,4,4
	.local	xTickCount
	.comm	xTickCount,4,4
	.local	uxTopReadyPriority
	.comm	uxTopReadyPriority,4,4
	.local	xSchedulerRunning
	.comm	xSchedulerRunning,4,4
	.local	xPendedTicks
	.comm	xPendedTicks,4,4
	.local	xYieldPendings
	.comm	xYieldPendings,4,4
	.local	xNumOfOverflows
	.comm	xNumOfOverflows,4,4
	.local	uxTaskNumber
	.comm	uxTaskNumber,4,4
	.local	xNextTaskUnblockTime
	.comm	xNextTaskUnblockTime,4,4
	.local	xIdleTaskHandles
	.comm	xIdleTaskHandles,4,4
	.section	.srodata,"a"
	.align	2
	.type	uxTopUsedPriority, @object
	.size	uxTopUsedPriority, 4
uxTopUsedPriority:
	.word	8
	.local	uxSchedulerSuspended
	.comm	uxSchedulerSuspended,4,4
	.section	.rodata
	.align	2
.LC0:
	.string	"tasks.c"
	.text
	.align	1
	.type	prvCreateStaticTask, @function
prvCreateStaticTask:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	lw	a5,-56(s0)
	bne	a5,zero,.L2
	li	a1,1267
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L2:
	lw	a5,-60(s0)
	bne	a5,zero,.L3
	li	a1,1268
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L3:
	li	a5,100
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	li	a5,100
	beq	a4,a5,.L4
	li	a1,1276
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L4:
	lw	a5,-24(s0)
	lw	a5,-60(s0)
	beq	a5,zero,.L5
	lw	a5,-56(s0)
	beq	a5,zero,.L5
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	li	a2,100
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	lw	a5,-20(s0)
	lw	a4,-56(s0)
	sw	a4,48(a5)
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,95(a5)
	li	a7,0
	lw	a6,-20(s0)
	lw	a5,-64(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewTask
	j	.L6
.L5:
	sw	zero,-20(s0)
.L6:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	prvCreateStaticTask, .-prvCreateStaticTask
	.align	1
	.globl	xTaskCreateStatic
	.type	xTaskCreateStatic, @function
xTaskCreateStatic:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	zero,-24(s0)
	addi	a5,s0,-24
	mv	a7,a5
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvCreateStaticTask
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	lw	a0,-20(s0)
	call	prvAddNewTaskToReadyList
.L9:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	xTaskCreateStatic, .-xTaskCreateStatic
	.align	1
	.type	prvCreateTask, @function
prvCreateTask:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beq	a5,zero,.L12
	li	a0,100
	call	pvPortMalloc
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	li	a2,100
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,48(a5)
	j	.L14
.L13:
	lw	a0,-24(s0)
	call	vPortFree
	j	.L14
.L12:
	sw	zero,-20(s0)
.L14:
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	lw	a5,-20(s0)
	sb	zero,95(a5)
	li	a7,0
	lw	a6,-20(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewTask
.L15:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	prvCreateTask, .-prvCreateTask
	.align	1
	.globl	xTaskCreate
	.type	xTaskCreate, @function
xTaskCreate:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvCreateTask
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beq	a5,zero,.L18
	lw	a0,-24(s0)
	call	prvAddNewTaskToReadyList
	li	a5,1
	sw	a5,-20(s0)
	j	.L19
.L18:
	li	a5,-1
	sw	a5,-20(s0)
.L19:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	xTaskCreate, .-xTaskCreate
	.align	1
	.type	prvInitialiseNewTask, @function
prvInitialiseNewTask:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	lw	a5,-60(s0)
	lw	a4,48(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,165
	mv	a0,a4
	call	memset
	lw	a5,-60(s0)
	lw	a4,48(a5)
	lw	a3,-44(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-16
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,15
	beq	a5,zero,.L22
	li	a1,1840
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L22:
	lw	a5,-40(s0)
	beq	a5,zero,.L23
	sw	zero,-20(s0)
	j	.L24
.L27:
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a3,-60(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	sb	a4,52(a5)
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L31
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L24:
	lw	a4,-20(s0)
	li	a5,11
	bleu	a4,a5,.L27
	j	.L26
.L31:
	nop
.L26:
	lw	a5,-60(s0)
	sb	zero,63(a5)
.L23:
	lw	a4,-52(s0)
	li	a5,8
	bleu	a4,a5,.L28
	li	a1,1894
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L28:
	lw	a4,-52(s0)
	li	a5,8
	bleu	a4,a5,.L29
	li	a5,8
	sw	a5,-52(s0)
.L29:
	lw	a5,-60(s0)
	lw	a4,-52(s0)
	sw	a4,44(a5)
	lw	a5,-60(s0)
	lw	a4,-52(s0)
	sw	a4,72(a5)
	lw	a5,-60(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	vListInitialiseItem
	lw	a5,-60(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	vListInitialiseItem
	lw	a5,-60(s0)
	lw	a4,-60(s0)
	sw	a4,16(a5)
	li	a4,9
	lw	a5,-52(s0)
	sub	a4,a4,a5
	lw	a5,-60(s0)
	sw	a4,24(a5)
	lw	a5,-60(s0)
	lw	a4,-60(s0)
	sw	a4,36(a5)
	lw	a2,-48(s0)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	pxPortInitialiseStack
	mv	a4,a0
	lw	a5,-60(s0)
	sw	a4,0(a5)
	lw	a5,-56(s0)
	beq	a5,zero,.L32
	lw	a5,-56(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
.L32:
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	prvInitialiseNewTask, .-prvInitialiseNewTask
	.align	1
	.type	prvAddNewTaskToReadyList, @function
prvAddNewTaskToReadyList:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
#APP
# 2025 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxCurrentNumberOfTasks)
	sw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	bne	a5,zero,.L34
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,-36(s0)
	sw	a4,%lo(pxCurrentTCB)(a5)
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	li	a5,1
	bne	a4,a5,.L35
	call	prvInitialiseTaskLists
	j	.L35
.L34:
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	bne	a5,zero,.L35
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lw	a5,-36(s0)
	lw	a5,44(a5)
	bgtu	a4,a5,.L35
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,-36(s0)
	sw	a4,%lo(pxCurrentTCB)(a5)
.L35:
	lui	a5,%hi(uxTaskNumber)
	lw	a5,%lo(uxTaskNumber)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxTaskNumber)
	sw	a4,%lo(uxTaskNumber)(a5)
	lui	a5,%hi(uxTaskNumber)
	lw	a4,%lo(uxTaskNumber)(a5)
	lw	a5,-36(s0)
	sw	a4,64(a5)
	lw	a5,-36(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-36(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-36(s0)
	sw	a4,12(a5)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lw	a4,-36(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-36(s0)
	addi	a4,a5,4
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-36(s0)
	sw	a4,20(a5)
	lw	a5,-36(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-36(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L36
#APP
# 2083 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L36:
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	beq	a5,zero,.L38
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lw	a5,-36(s0)
	lw	a5,44(a5)
	bgeu	a4,a5,.L38
#APP
# 2089 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L38:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	prvAddNewTaskToReadyList, .-prvAddNewTaskToReadyList
	.align	1
	.globl	vTaskDelete
	.type	vTaskDelete, @function
vTaskDelete:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
#APP
# 2201 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-36(s0)
	bne	a5,zero,.L40
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L41
.L40:
	lw	a5,-36(s0)
.L41:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	bne	a5,zero,.L42
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bne	a5,zero,.L42
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a5,a4,a5
	not	a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L42:
	lw	a5,-24(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L43
	lw	a5,-24(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	uxListRemove
.L43:
	lui	a5,%hi(uxTaskNumber)
	lw	a5,%lo(uxTaskNumber)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxTaskNumber)
	sw	a4,%lo(uxTaskNumber)(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	beq	a5,zero,.L44
	lw	a5,-28(s0)
	beq	a5,zero,.L44
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a1,a5
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a0,a5,%lo(xTasksWaitingTermination)
	call	vListInsertEnd
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	lw	a5,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	sw	a4,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	li	a5,1
	sw	a5,-20(s0)
	j	.L45
.L44:
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxCurrentNumberOfTasks)
	sw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	call	prvResetNextTaskUnblockTime
.L45:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L46
#APP
# 2308 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L46:
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L47
	lw	a0,-24(s0)
	call	prvDeleteTCB
.L47:
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	beq	a5,zero,.L50
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L50
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	beq	a5,zero,.L49
	li	a5,4096
	addi	a1,a5,-1770
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L49:
#APP
# 2327 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L50:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	vTaskDelete, .-vTaskDelete
	.align	1
	.globl	xTaskDelayUntil
	.type	xTaskDelayUntil, @function
xTaskDelayUntil:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L52
	li	a5,4096
	addi	a1,a5,-1743
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L52:
	lw	a5,-40(s0)
	bne	a5,zero,.L53
	li	a5,4096
	addi	a1,a5,-1742
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L53:
	call	vTaskSuspendAll
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a4,%lo(uxSchedulerSuspended)(a5)
	li	a5,1
	beq	a4,a5,.L54
	li	a5,4096
	addi	a1,a5,-1734
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L54:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	bgeu	a4,a5,.L55
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	bgeu	a4,a5,.L56
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L56
	li	a5,1
	sw	a5,-20(s0)
	j	.L56
.L55:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	bltu	a4,a5,.L57
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L56
.L57:
	li	a5,1
	sw	a5,-20(s0)
.L56:
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	beq	a5,zero,.L58
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	li	a1,0
	mv	a0,a5
	call	prvAddCurrentTaskToDelayedList
.L58:
	call	xTaskResumeAll
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	bne	a5,zero,.L59
#APP
# 2420 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L59:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	xTaskDelayUntil, .-xTaskDelayUntil
	.align	1
	.globl	vTaskDelay
	.type	vTaskDelay, @function
vTaskDelay:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	beq	a5,zero,.L62
	call	vTaskSuspendAll
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a4,%lo(uxSchedulerSuspended)(a5)
	li	a5,1
	beq	a4,a5,.L63
	li	a5,4096
	addi	a1,a5,-1648
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L63:
	li	a1,0
	lw	a0,-36(s0)
	call	prvAddCurrentTaskToDelayedList
	call	xTaskResumeAll
	sw	a0,-20(s0)
.L62:
	lw	a5,-20(s0)
	bne	a5,zero,.L65
#APP
# 2472 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L65:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	vTaskDelay, .-vTaskDelay
	.align	1
	.globl	eTaskGetState
	.type	eTaskGetState, @function
eTaskGetState:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	bne	a5,zero,.L67
	li	a5,4096
	addi	a1,a5,-1598
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L67:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-28(s0)
	bne	a4,a5,.L68
	sw	zero,-20(s0)
	j	.L69
.L68:
#APP
# 2509 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-28(s0)
	lw	a5,20(a5)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	lw	a5,40(a5)
	sw	a5,-36(s0)
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	sw	a5,-40(s0)
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a5,%lo(pxOverflowDelayedTaskList)(a5)
	sw	a5,-44(s0)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L70
#APP
# 2516 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L70:
	lw	a4,-36(s0)
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	bne	a4,a5,.L71
	li	a5,1
	sw	a5,-20(s0)
	j	.L69
.L71:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L72
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	bne	a4,a5,.L73
.L72:
	li	a5,2
	sw	a5,-20(s0)
	j	.L69
.L73:
	lw	a4,-32(s0)
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	bne	a4,a5,.L74
	lw	a5,-28(s0)
	lw	a5,40(a5)
	bne	a5,zero,.L75
	li	a5,3
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L76
.L79:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	andi	a4,a5,0xff
	li	a5,1
	bne	a4,a5,.L77
	li	a5,2
	sw	a5,-20(s0)
	j	.L69
.L77:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L76:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L79
	j	.L69
.L75:
	li	a5,2
	sw	a5,-20(s0)
	j	.L69
.L74:
	lw	a4,-32(s0)
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a5,a5,%lo(xTasksWaitingTermination)
	beq	a4,a5,.L80
	lw	a5,-32(s0)
	bne	a5,zero,.L81
.L80:
	li	a5,4
	sw	a5,-20(s0)
	j	.L69
.L81:
	li	a5,1
	sw	a5,-20(s0)
.L69:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	eTaskGetState, .-eTaskGetState
	.align	1
	.globl	uxTaskPriorityGet
	.type	uxTaskPriorityGet, @function
uxTaskPriorityGet:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
#APP
# 2626 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-36(s0)
	bne	a5,zero,.L84
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L85
.L84:
	lw	a5,-36(s0)
.L85:
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,44(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L86
#APP
# 2633 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L86:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	uxTaskPriorityGet, .-uxTaskPriorityGet
	.align	1
	.globl	uxTaskPriorityGetFromISR
	.type	uxTaskPriorityGetFromISR, @function
uxTaskPriorityGetFromISR:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L89
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L90
.L89:
	lw	a5,-36(s0)
.L90:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	uxTaskPriorityGetFromISR, .-uxTaskPriorityGetFromISR
	.align	1
	.globl	uxTaskBasePriorityGet
	.type	uxTaskBasePriorityGet, @function
uxTaskBasePriorityGet:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
#APP
# 2700 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-36(s0)
	bne	a5,zero,.L93
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L94
.L93:
	lw	a5,-36(s0)
.L94:
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,72(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L95
#APP
# 2707 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L95:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	uxTaskBasePriorityGet, .-uxTaskBasePriorityGet
	.align	1
	.globl	uxTaskBasePriorityGetFromISR
	.type	uxTaskBasePriorityGetFromISR, @function
uxTaskBasePriorityGetFromISR:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L98
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L99
.L98:
	lw	a5,-36(s0)
.L99:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a5,72(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	uxTaskBasePriorityGetFromISR, .-uxTaskBasePriorityGetFromISR
	.align	1
	.globl	vTaskPrioritySet
	.type	vTaskPrioritySet, @function
vTaskPrioritySet:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	zero,-20(s0)
	lw	a4,-56(s0)
	li	a5,8
	bleu	a4,a5,.L102
	li	a5,4096
	addi	a1,a5,-1316
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L102:
	lw	a4,-56(s0)
	li	a5,8
	bleu	a4,a5,.L103
	li	a5,8
	sw	a5,-56(s0)
.L103:
#APP
# 2792 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-52(s0)
	bne	a5,zero,.L104
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L105
.L104:
	lw	a5,-52(s0)
.L105:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a5,72(a5)
	sw	a5,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	beq	a4,a5,.L106
	lw	a4,-56(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L107
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	beq	a4,a5,.L108
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	lw	a4,-56(s0)
	bleu	a4,a5,.L108
	li	a5,1
	sw	a5,-20(s0)
	j	.L108
.L107:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L108
	li	a5,1
	sw	a5,-20(s0)
.L108:
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a4,72(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	beq	a4,a5,.L109
	lw	a5,-24(s0)
	lw	a5,44(a5)
	lw	a4,-56(s0)
	bleu	a4,a5,.L110
.L109:
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,44(a5)
.L110:
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,72(a5)
	lw	a5,-24(s0)
	lw	a5,24(a5)
	blt	a5,zero,.L111
	li	a4,9
	lw	a5,-56(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,24(a5)
.L111:
	lw	a5,-24(s0)
	lw	a3,20(a5)
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	bne	a3,a5,.L112
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	bne	a5,zero,.L113
	lw	a5,-32(s0)
	li	a4,1
	sll	a5,a4,a5
	not	a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L113:
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-36(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
.L112:
	lw	a5,-20(s0)
	beq	a5,zero,.L106
#APP
# 2947 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L106:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L115
#APP
# 2971 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L115:
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	vTaskPrioritySet, .-vTaskPrioritySet
	.align	1
	.globl	vTaskSuspend
	.type	vTaskSuspend, @function
vTaskSuspend:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
#APP
# 3129 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-36(s0)
	bne	a5,zero,.L117
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L118
.L117:
	lw	a5,-36(s0)
.L118:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	bne	a5,zero,.L119
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bne	a5,zero,.L119
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a5,a4,a5
	not	a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L119:
	lw	a5,-24(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L120
	lw	a5,-24(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	uxListRemove
.L120:
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a1,a5
	lui	a5,%hi(xSuspendedTaskList)
	addi	a0,a5,%lo(xSuspendedTaskList)
	call	vListInsertEnd
	sw	zero,-20(s0)
	j	.L121
.L123:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	andi	a4,a5,0xff
	li	a5,1
	bne	a4,a5,.L122
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sb	zero,92(a5)
.L122:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L121:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L123
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L124
#APP
# 3216 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L124:
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	beq	a5,zero,.L125
#APP
# 3226 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	call	prvResetNextTaskUnblockTime
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L125
#APP
# 3230 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L125:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L130
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	beq	a5,zero,.L127
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	beq	a5,zero,.L128
	li	a5,4096
	addi	a1,a5,-854
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L128:
#APP
# 3243 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
	j	.L130
.L127:
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	lw	a4,-28(s0)
	bne	a4,a5,.L129
	lui	a5,%hi(pxCurrentTCB)
	sw	zero,%lo(pxCurrentTCB)(a5)
	j	.L130
.L129:
	call	vTaskSwitchContext
.L130:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	vTaskSuspend, .-vTaskSuspend
	.align	1
	.type	prvTaskIsTaskSuspended, @function
prvTaskIsTaskSuspended:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L132
	li	a5,4096
	addi	a1,a5,-802
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L132:
	lw	a5,-28(s0)
	lw	a4,20(a5)
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	bne	a4,a5,.L133
	lw	a5,-28(s0)
	lw	a4,40(a5)
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	beq	a4,a5,.L133
	lw	a5,-28(s0)
	lw	a5,40(a5)
	bne	a5,zero,.L133
	li	a5,1
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L134
.L137:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	andi	a4,a5,0xff
	li	a5,1
	bne	a4,a5,.L135
	sw	zero,-20(s0)
	j	.L133
.L135:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L134:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L137
.L133:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	prvTaskIsTaskSuspended, .-prvTaskIsTaskSuspended
	.align	1
	.globl	vTaskResume
	.type	vTaskResume, @function
vTaskResume:
.LFB23:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L140
	li	a5,4096
	addi	a1,a5,-734
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L140:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-20(s0)
	beq	a4,a5,.L143
	lw	a5,-20(s0)
	beq	a5,zero,.L143
#APP
# 3379 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a0,-20(s0)
	call	prvTaskIsTaskSuspended
	mv	a5,a0
	beq	a5,zero,.L142
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a4,a5,4
	lw	a5,-24(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,20(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lw	a5,-20(s0)
	lw	a5,44(a5)
	bgeu	a4,a5,.L142
#APP
# 3393 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L142:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L143
#APP
# 3400 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L143:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	vTaskResume, .-vTaskResume
	.align	1
	.globl	xTaskResumeFromISR
	.type	xTaskResumeFromISR, @function
xTaskResumeFromISR:
.LFB24:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L145
	li	a5,4096
	addi	a1,a5,-672
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L145:
	sw	zero,-28(s0)
	lw	a0,-24(s0)
	call	prvTaskIsTaskSuspended
	mv	a5,a0
	beq	a5,zero,.L146
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L147
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L148
	li	a5,1
	sw	a5,-20(s0)
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
.L148:
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-32(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	j	.L146
.L147:
	lw	a5,-24(s0)
	addi	a5,a5,24
	mv	a1,a5
	lui	a5,%hi(xPendingReadyList)
	addi	a0,a5,%lo(xPendingReadyList)
	call	vListInsertEnd
.L146:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	xTaskResumeFromISR, .-xTaskResumeFromISR
	.section	.rodata
	.align	2
.LC1:
	.string	"IDLE"
	.text
	.align	1
	.type	prvCreateIdleTasks, @function
prvCreateIdleTasks:
.LFB25:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	li	a5,1
	sw	a5,-20(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L151
.L154:
	lui	a5,%hi(.LC1)
	addi	a4,a5,%lo(.LC1)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-28(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-28(a5)
	beq	a5,zero,.L162
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L151:
	lw	a4,-28(s0)
	li	a5,11
	ble	a4,a5,.L154
	j	.L153
.L162:
	nop
.L153:
	sw	zero,-24(s0)
	j	.L155
.L160:
	lui	a5,%hi(prvIdleTask)
	addi	a5,a5,%lo(prvIdleTask)
	sw	a5,-32(s0)
	sw	zero,-48(s0)
	sw	zero,-52(s0)
	addi	a3,s0,-56
	addi	a4,s0,-52
	addi	a5,s0,-48
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	vApplicationGetIdleTaskMemory
	lw	a2,-56(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	addi	a1,s0,-44
	mv	a6,a4
	li	a4,0
	li	a3,0
	lw	a0,-32(s0)
	call	xTaskCreateStatic
	mv	a3,a0
	lui	a5,%hi(xIdleTaskHandles)
	lw	a4,-24(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xIdleTaskHandles)
	add	a5,a4,a5
	sw	a3,0(a5)
	lui	a5,%hi(xIdleTaskHandles)
	lw	a4,-24(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xIdleTaskHandles)
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L156
	li	a5,1
	sw	a5,-20(s0)
	j	.L157
.L156:
	sw	zero,-20(s0)
.L157:
	lw	a5,-20(s0)
	beq	a5,zero,.L163
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L155:
	lw	a5,-24(s0)
	ble	a5,zero,.L160
	j	.L159
.L163:
	nop
.L159:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	prvCreateIdleTasks, .-prvCreateIdleTasks
	.align	1
	.globl	vTaskStartScheduler
	.type	vTaskStartScheduler, @function
vTaskStartScheduler:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	call	prvCreateIdleTasks
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L165
	call	xTimerCreateTimerTask
	sw	a0,-20(s0)
.L165:
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L166
#APP
# 3712 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xNextTaskUnblockTime)
	li	a4,-1
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	lui	a5,%hi(xSchedulerRunning)
	li	a4,1
	sw	a4,%lo(xSchedulerRunning)(a5)
	lui	a5,%hi(xTickCount)
	sw	zero,%lo(xTickCount)(a5)
	call	xPortStartScheduler
	j	.L167
.L166:
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L167
	li	a5,4096
	addi	a1,a5,-339
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L167:
	lui	a5,%hi(uxTopUsedPriority)
	lw	a5,%lo(uxTopUsedPriority)(a5)
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	vTaskStartScheduler, .-vTaskStartScheduler
	.align	1
	.globl	vTaskEndScheduler
	.type	vTaskEndScheduler, @function
vTaskEndScheduler:
.LFB27:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	call	xTimerGetTimerDaemonTaskHandle
	mv	a5,a0
	mv	a0,a5
	call	vTaskDelete
	sw	zero,-20(s0)
	j	.L169
.L170:
	lui	a5,%hi(xIdleTaskHandles)
	lw	a4,-20(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xIdleTaskHandles)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	vTaskDelete
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L169:
	lw	a5,-20(s0)
	ble	a5,zero,.L170
	call	prvCheckTasksWaitingTermination
#APP
# 3804 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xSchedulerRunning)
	sw	zero,%lo(xSchedulerRunning)(a5)
	call	vPortEndScheduler
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	vTaskEndScheduler, .-vTaskEndScheduler
	.align	1
	.globl	vTaskSuspendAll
	.type	vTaskSuspendAll, @function
vTaskSuspendAll:
.LFB28:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxSchedulerSuspended)
	sw	a4,%lo(uxSchedulerSuspended)(a5)
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	vTaskSuspendAll, .-vTaskSuspendAll
	.align	1
	.globl	xTaskResumeAll
	.type	xTaskResumeAll, @function
xTaskResumeAll:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	sw	zero,-24(s0)
#APP
# 3976 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	sw	zero,-32(s0)
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L173
	li	a5,4096
	addi	a1,a5,-113
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L173:
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxSchedulerSuspended)
	sw	a4,%lo(uxSchedulerSuspended)(a5)
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L174
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	beq	a5,zero,.L174
	j	.L175
.L178:
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,12(a5)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,40(a5)
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	lw	a5,28(a5)
	lw	a4,-20(s0)
	lw	a4,32(a4)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a5,32(a5)
	lw	a4,-20(s0)
	lw	a4,28(a4)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a5,a5,24
	bne	a4,a5,.L176
	lw	a5,-20(s0)
	lw	a4,32(a5)
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L176:
	lw	a5,-20(s0)
	sw	zero,40(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,20(a5)
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	lw	a4,12(a4)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	lw	a4,-20(s0)
	lw	a4,8(a4)
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	bne	a4,a5,.L177
	lw	a5,-20(s0)
	lw	a4,12(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
.L177:
	lw	a5,-20(s0)
	sw	zero,20(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	lw	a5,-44(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	sw	a4,12(a5)
	lw	a5,-44(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a4,a5,4
	lw	a5,-44(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,20(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L175
	lui	a5,%hi(xYieldPendings)
	lw	a4,-32(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xYieldPendings)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
.L175:
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,0(a5)
	bne	a5,zero,.L178
	lw	a5,-20(s0)
	beq	a5,zero,.L179
	call	prvResetNextTaskUnblockTime
.L179:
	lui	a5,%hi(xPendedTicks)
	lw	a5,%lo(xPendedTicks)(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	beq	a5,zero,.L180
.L182:
	call	xTaskIncrementTick
	mv	a5,a0
	beq	a5,zero,.L181
	lui	a5,%hi(xYieldPendings)
	lw	a4,-32(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xYieldPendings)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
.L181:
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	bne	a5,zero,.L182
	lui	a5,%hi(xPendedTicks)
	sw	zero,%lo(xPendedTicks)(a5)
.L180:
	lui	a5,%hi(xYieldPendings)
	lw	a4,-32(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xYieldPendings)
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L174
	li	a5,1
	sw	a5,-24(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
#APP
# 4086 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L174:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L183
#APP
# 4101 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L183:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	xTaskResumeAll, .-xTaskResumeAll
	.align	1
	.globl	xTaskGetTickCount
	.type	xTaskGetTickCount, @function
xTaskGetTickCount:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	xTaskGetTickCount, .-xTaskGetTickCount
	.align	1
	.globl	xTaskGetTickCountFromISR
	.type	xTaskGetTickCountFromISR, @function
xTaskGetTickCountFromISR:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	xTaskGetTickCountFromISR, .-xTaskGetTickCountFromISR
	.align	1
	.globl	uxTaskGetNumberOfTasks
	.type	uxTaskGetNumberOfTasks, @function
uxTaskGetNumberOfTasks:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	mv	a0,a5
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	uxTaskGetNumberOfTasks, .-uxTaskGetNumberOfTasks
	.align	1
	.globl	pcTaskGetName
	.type	pcTaskGetName, @function
pcTaskGetName:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L192
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L193
.L192:
	lw	a5,-36(s0)
.L193:
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L194
	li	a5,4096
	addi	a1,a5,89
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L194:
	lw	a5,-20(s0)
	addi	a5,a5,52
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	pcTaskGetName, .-pcTaskGetName
	.align	1
	.type	prvSearchForNameWithinSingleList, @function
prvSearchForNameWithinSingleList:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,60(sp)
	.cfi_offset 8, -4
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	zero,-20(s0)
	sw	zero,-36(s0)
	lw	a5,-52(s0)
	addi	a5,a5,8
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L197
	lw	a5,-52(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	j	.L198
.L207:
	lw	a5,-32(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L199
.L204:
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,52(a5)
	sb	a5,-41(s0)
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	lbu	a4,-41(s0)
	beq	a4,a5,.L200
	li	a5,1
	sw	a5,-28(s0)
	j	.L201
.L200:
	lbu	a5,-41(s0)
	bne	a5,zero,.L201
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-28(s0)
.L201:
	lw	a5,-28(s0)
	bne	a5,zero,.L209
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L199:
	lw	a4,-24(s0)
	li	a5,11
	bleu	a4,a5,.L204
	j	.L203
.L209:
	nop
.L203:
	lw	a5,-20(s0)
	bne	a5,zero,.L210
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
.L198:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L207
	j	.L197
.L210:
	nop
.L197:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,60(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	prvSearchForNameWithinSingleList, .-prvSearchForNameWithinSingleList
	.align	1
	.globl	xTaskGetHandle
	.type	xTaskGetHandle, @function
xTaskGetHandle:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	li	a5,9
	sw	a5,-20(s0)
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	li	a5,11
	bleu	a4,a5,.L212
	li	a5,4096
	addi	a1,a5,179
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L212:
	call	vTaskSuspendAll
.L215:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	prvSearchForNameWithinSingleList
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L221
	lw	a5,-20(s0)
	bne	a5,zero,.L215
	j	.L214
.L221:
	nop
.L214:
	lw	a5,-24(s0)
	bne	a5,zero,.L216
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a1,-36(s0)
	mv	a0,a5
	call	prvSearchForNameWithinSingleList
	sw	a0,-24(s0)
.L216:
	lw	a5,-24(s0)
	bne	a5,zero,.L217
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a5,%lo(pxOverflowDelayedTaskList)(a5)
	lw	a1,-36(s0)
	mv	a0,a5
	call	prvSearchForNameWithinSingleList
	sw	a0,-24(s0)
.L217:
	lw	a5,-24(s0)
	bne	a5,zero,.L218
	lw	a1,-36(s0)
	lui	a5,%hi(xSuspendedTaskList)
	addi	a0,a5,%lo(xSuspendedTaskList)
	call	prvSearchForNameWithinSingleList
	sw	a0,-24(s0)
.L218:
	lw	a5,-24(s0)
	bne	a5,zero,.L219
	lw	a1,-36(s0)
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a0,a5,%lo(xTasksWaitingTermination)
	call	prvSearchForNameWithinSingleList
	sw	a0,-24(s0)
.L219:
	call	xTaskResumeAll
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	xTaskGetHandle, .-xTaskGetHandle
	.align	1
	.globl	xTaskGetStaticBuffers
	.type	xTaskGetStaticBuffers, @function
xTaskGetStaticBuffers:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	bne	a5,zero,.L223
	li	a5,4096
	addi	a1,a5,248
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L223:
	lw	a5,-44(s0)
	bne	a5,zero,.L224
	li	a5,4096
	addi	a1,a5,249
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L224:
	lw	a5,-36(s0)
	bne	a5,zero,.L225
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L226
.L225:
	lw	a5,-36(s0)
.L226:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lbu	a4,95(a5)
	li	a5,2
	bne	a4,a5,.L227
	lw	a5,-24(s0)
	lw	a4,48(a5)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a5,-44(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	li	a5,1
	sw	a5,-20(s0)
	j	.L228
.L227:
	lw	a5,-24(s0)
	lbu	a4,95(a5)
	li	a5,1
	bne	a4,a5,.L229
	lw	a5,-24(s0)
	lw	a4,48(a5)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a5,-44(s0)
	sw	zero,0(a5)
	li	a5,1
	sw	a5,-20(s0)
	j	.L228
.L229:
	sw	zero,-20(s0)
.L228:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	xTaskGetStaticBuffers, .-xTaskGetStaticBuffers
	.align	1
	.globl	uxTaskGetSystemState
	.type	uxTaskGetSystemState, @function
uxTaskGetSystemState:
.LFB37:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	li	a5,9
	sw	a5,-24(s0)
	call	vTaskSuspendAll
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	lw	a4,-40(s0)
	bltu	a4,a5,.L232
.L233:
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-36(s0)
	add	a3,a5,a4
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	li	a2,1
	mv	a1,a5
	mv	a0,a3
	call	prvListTasksWithinSingleList
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L233
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-36(s0)
	add	a4,a5,a4
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	li	a2,2
	mv	a1,a5
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-36(s0)
	add	a4,a5,a4
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a5,%lo(pxOverflowDelayedTaskList)(a5)
	li	a2,2
	mv	a1,a5
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-36(s0)
	add	a4,a5,a4
	li	a2,4
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a1,a5,%lo(xTasksWaitingTermination)
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-36(s0)
	add	a4,a5,a4
	li	a2,3
	lui	a5,%hi(xSuspendedTaskList)
	addi	a1,a5,%lo(xSuspendedTaskList)
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	beq	a5,zero,.L232
	lw	a5,-44(s0)
	sw	zero,0(a5)
.L232:
	call	xTaskResumeAll
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	uxTaskGetSystemState, .-uxTaskGetSystemState
	.align	1
	.globl	xTaskGetIdleTaskHandle
	.type	xTaskGetIdleTaskHandle, @function
xTaskGetIdleTaskHandle:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lui	a5,%hi(xIdleTaskHandles)
	lw	a5,%lo(xIdleTaskHandles)(a5)
	bne	a5,zero,.L236
	li	a5,4096
	addi	a1,a5,379
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L236:
	lui	a5,%hi(xIdleTaskHandles)
	lw	a5,%lo(xIdleTaskHandles)(a5)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	xTaskGetIdleTaskHandle, .-xTaskGetIdleTaskHandle
	.align	1
	.globl	xTaskGetIdleTaskHandleForCore
	.type	xTaskGetIdleTaskHandleForCore, @function
xTaskGetIdleTaskHandleForCore:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L239
	li	a5,4096
	addi	a1,a5,392
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L239:
	lui	a5,%hi(xIdleTaskHandles)
	lw	a4,-20(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xIdleTaskHandles)
	add	a5,a4,a5
	lw	a5,0(a5)
	bne	a5,zero,.L240
	li	a5,4096
	addi	a1,a5,396
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L240:
	lui	a5,%hi(xIdleTaskHandles)
	lw	a4,-20(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xIdleTaskHandles)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	xTaskGetIdleTaskHandleForCore, .-xTaskGetIdleTaskHandleForCore
	.align	1
	.globl	xTaskCatchUpTicks
	.type	xTaskCatchUpTicks, @function
xTaskCatchUpTicks:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	beq	a5,zero,.L243
	li	a5,4096
	addi	a1,a5,462
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L243:
	call	vTaskSuspendAll
#APP
# 4565 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xPendedTicks)
	lw	a4,%lo(xPendedTicks)(a5)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lui	a5,%hi(xPendedTicks)
	sw	a4,%lo(xPendedTicks)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L244
#APP
# 4569 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L244:
	call	xTaskResumeAll
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	xTaskCatchUpTicks, .-xTaskCatchUpTicks
	.align	1
	.globl	xTaskAbortDelay
	.type	xTaskAbortDelay, @function
xTaskAbortDelay:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L247
	li	a5,4096
	addi	a1,a5,491
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L247:
	call	vTaskSuspendAll
	lw	a0,-36(s0)
	call	eTaskGetState
	mv	a4,a0
	li	a5,2
	bne	a4,a5,.L248
	li	a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
#APP
# 4606 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-24(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L249
	lw	a5,-24(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	uxListRemove
	lw	a5,-24(s0)
	li	a4,1
	sb	a4,96(a5)
.L249:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L250
#APP
# 4622 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L250:
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-28(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-28(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-28(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L251
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
	j	.L251
.L248:
	sw	zero,-20(s0)
.L251:
	call	xTaskResumeAll
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	xTaskAbortDelay, .-xTaskAbortDelay
	.align	1
	.globl	xTaskIncrementTick
	.type	xTaskIncrementTick, @function
xTaskIncrementTick:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L254
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	addi	a5,a5,1
	sw	a5,-24(s0)
	lui	a5,%hi(xTickCount)
	lw	a4,-24(s0)
	sw	a4,%lo(xTickCount)(a5)
	lw	a5,-24(s0)
	bne	a5,zero,.L255
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	beq	a5,zero,.L256
	li	a5,4096
	addi	a1,a5,611
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L256:
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	sw	a5,-28(s0)
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	lui	a5,%hi(pxDelayedTaskList)
	sw	a4,%lo(pxDelayedTaskList)(a5)
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a4,-28(s0)
	sw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	lui	a5,%hi(xNumOfOverflows)
	lw	a5,%lo(xNumOfOverflows)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xNumOfOverflows)
	sw	a4,%lo(xNumOfOverflows)(a5)
	call	prvResetNextTaskUnblockTime
.L255:
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a5,%lo(xNextTaskUnblockTime)(a5)
	lw	a4,-24(s0)
	bltu	a4,a5,.L257
.L264:
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L258
	lui	a5,%hi(xNextTaskUnblockTime)
	li	a4,-1
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	j	.L257
.L258:
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,12(a5)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bgeu	a4,a5,.L259
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a4,-36(s0)
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	j	.L257
.L259:
	lw	a5,-32(s0)
	lw	a5,20(a5)
	sw	a5,-40(s0)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	lw	a4,-32(s0)
	lw	a4,12(a4)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	lw	a5,12(a5)
	lw	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a4,4(a5)
	lw	a5,-32(s0)
	addi	a5,a5,4
	bne	a4,a5,.L260
	lw	a5,-32(s0)
	lw	a4,12(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
.L260:
	lw	a5,-32(s0)
	sw	zero,20(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L261
	lw	a5,-32(s0)
	lw	a5,40(a5)
	sw	a5,-44(s0)
	lw	a5,-32(s0)
	lw	a5,28(a5)
	lw	a4,-32(s0)
	lw	a4,32(a4)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	lw	a5,32(a5)
	lw	a4,-32(s0)
	lw	a4,28(a4)
	sw	a4,4(a5)
	lw	a5,-44(s0)
	lw	a4,4(a5)
	lw	a5,-32(s0)
	addi	a5,a5,24
	bne	a4,a5,.L262
	lw	a5,-32(s0)
	lw	a4,32(a5)
	lw	a5,-44(s0)
	sw	a4,4(a5)
.L262:
	lw	a5,-32(s0)
	sw	zero,40(a5)
	lw	a5,-44(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-44(s0)
	sw	a4,0(a5)
.L261:
	lw	a5,-32(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-32(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-48(s0)
	lw	a5,-32(s0)
	lw	a4,-48(s0)
	sw	a4,8(a5)
	lw	a5,-48(s0)
	lw	a4,8(a5)
	lw	a5,-32(s0)
	sw	a4,12(a5)
	lw	a5,-48(s0)
	lw	a5,8(a5)
	lw	a4,-32(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-32(s0)
	addi	a4,a5,4
	lw	a5,-48(s0)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-32(s0)
	sw	a4,20(a5)
	lw	a5,-32(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-32(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-32(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L264
	li	a5,1
	sw	a5,-20(s0)
	j	.L264
.L257:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a5)
	li	a5,1
	bleu	a4,a5,.L265
	li	a5,1
	sw	a5,-20(s0)
.L265:
	lui	a5,%hi(xPendedTicks)
	lw	a5,%lo(xPendedTicks)(a5)
	bne	a5,zero,.L266
	call	vApplicationTickHook
.L266:
	lui	a5,%hi(xYieldPendings)
	lw	a5,%lo(xYieldPendings)(a5)
	beq	a5,zero,.L267
	li	a5,1
	sw	a5,-20(s0)
	j	.L267
.L254:
	lui	a5,%hi(xPendedTicks)
	lw	a5,%lo(xPendedTicks)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xPendedTicks)
	sw	a4,%lo(xPendedTicks)(a5)
	call	vApplicationTickHook
.L267:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	xTaskIncrementTick, .-xTaskIncrementTick
	.globl	__clzsi2
	.align	1
	.globl	vTaskSwitchContext
	.type	vTaskSwitchContext, @function
vTaskSwitchContext:
.LFB43:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	beq	a5,zero,.L270
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
	j	.L276
.L270:
	lui	a5,%hi(xYieldPendings)
	sw	zero,%lo(xYieldPendings)(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,48(a5)
	sw	a5,-20(s0)
	li	a5,-1515872256
	addi	a5,a5,1445
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L272
	lw	a5,-20(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L272
	lw	a5,-20(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L272
	lw	a5,-20(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	lw	a4,-24(s0)
	beq	a4,a5,.L273
.L272:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a5,a5,52
	sw	a5,-28(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a1,-28(s0)
	mv	a0,a5
	call	vApplicationStackOverflowHook
.L273:
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	mv	a4,a5
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-32(s0)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bne	a5,zero,.L274
	li	a5,4096
	addi	a1,a5,1022
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L274:
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,4(a5)
	lw	a5,-36(s0)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,4(a5)
	lw	a5,-36(s0)
	addi	a5,a5,8
	bne	a4,a5,.L275
	lw	a5,-36(s0)
	lw	a4,12(a5)
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L275:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,12(a5)
	lui	a5,%hi(pxCurrentTCB)
	sw	a4,%lo(pxCurrentTCB)(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
.L276:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	vTaskSwitchContext, .-vTaskSwitchContext
	.align	1
	.globl	vTaskPlaceOnEventList
	.type	vTaskPlaceOnEventList, @function
vTaskPlaceOnEventList:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L278
	li	a5,4096
	addi	a1,a5,1156
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L278:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a5,a5,24
	mv	a1,a5
	lw	a0,-20(s0)
	call	vListInsert
	li	a1,1
	lw	a0,-24(s0)
	call	prvAddCurrentTaskToDelayedList
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	vTaskPlaceOnEventList, .-vTaskPlaceOnEventList
	.align	1
	.globl	vTaskPlaceOnUnorderedEventList
	.type	vTaskPlaceOnUnorderedEventList, @function
vTaskPlaceOnUnorderedEventList:
.LFB45:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L280
	li	a5,4096
	addi	a1,a5,1186
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L280:
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L281
	li	a5,4096
	addi	a1,a5,1190
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L281:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a3,-40(s0)
	li	a4,-2147483648
	or	a4,a3,a4
	sw	a4,24(a5)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-20(s0)
	sw	a4,28(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-20(s0)
	lw	a4,8(a4)
	sw	a4,32(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	addi	a4,a4,24
	sw	a4,4(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a4,a5,24
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-36(s0)
	sw	a4,40(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	li	a1,1
	lw	a0,-44(s0)
	call	prvAddCurrentTaskToDelayedList
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	vTaskPlaceOnUnorderedEventList, .-vTaskPlaceOnUnorderedEventList
	.align	1
	.globl	vTaskPlaceOnEventListRestricted
	.type	vTaskPlaceOnEventListRestricted, @function
vTaskPlaceOnEventListRestricted:
.LFB46:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L283
	li	a5,4096
	addi	a1,a5,1218
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L283:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-20(s0)
	sw	a4,28(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-20(s0)
	lw	a4,8(a4)
	sw	a4,32(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	addi	a4,a4,24
	sw	a4,4(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a4,a5,24
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-36(s0)
	sw	a4,40(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	lw	a5,-44(s0)
	beq	a5,zero,.L284
	li	a5,-1
	sw	a5,-40(s0)
.L284:
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	prvAddCurrentTaskToDelayedList
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	vTaskPlaceOnEventListRestricted, .-vTaskPlaceOnEventListRestricted
	.align	1
	.globl	xTaskRemoveFromEventList
	.type	xTaskRemoveFromEventList, @function
xTaskRemoveFromEventList:
.LFB47:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a5,12(a5)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L286
	li	a5,4096
	addi	a1,a5,1273
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L286:
	lw	a5,-24(s0)
	lw	a5,40(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a5,28(a5)
	lw	a4,-24(s0)
	lw	a4,32(a4)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a5,32(a5)
	lw	a4,-24(s0)
	lw	a4,28(a4)
	sw	a4,4(a5)
	lw	a5,-28(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a5,a5,24
	bne	a4,a5,.L287
	lw	a5,-24(s0)
	lw	a4,32(a5)
	lw	a5,-28(s0)
	sw	a4,4(a5)
.L287:
	lw	a5,-24(s0)
	sw	zero,40(a5)
	lw	a5,-28(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-28(s0)
	sw	a4,0(a5)
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L288
	lw	a5,-24(s0)
	lw	a5,20(a5)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	lw	a4,12(a4)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lw	a4,-24(s0)
	lw	a4,8(a4)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a5,a5,4
	bne	a4,a5,.L289
	lw	a5,-24(s0)
	lw	a4,12(a5)
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L289:
	lw	a5,-24(s0)
	sw	zero,20(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-40(s0)
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a5,-40(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-40(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-40(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	j	.L290
.L288:
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,28(a5)
	lw	a5,-32(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,32(a5)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,24
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,24
	lw	a5,-32(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lui	a4,%hi(xPendingReadyList)
	addi	a4,a4,%lo(xPendingReadyList)
	sw	a4,40(a5)
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	sw	a4,0(a5)
.L290:
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L291
	li	a5,1
	sw	a5,-20(s0)
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
	j	.L292
.L291:
	sw	zero,-20(s0)
.L292:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	xTaskRemoveFromEventList, .-xTaskRemoveFromEventList
	.align	1
	.globl	vTaskRemoveFromUnorderedEventList
	.type	vTaskRemoveFromUnorderedEventList, @function
vTaskRemoveFromUnorderedEventList:
.LFB48:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L295
	li	a5,4096
	addi	a1,a5,1351
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L295:
	lw	a4,-40(s0)
	li	a5,-2147483648
	or	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L296
	li	a5,4096
	addi	a1,a5,1362
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L296:
	lw	a5,-36(s0)
	lw	a5,16(a5)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,-36(s0)
	lw	a4,8(a4)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	lw	a4,-36(s0)
	lw	a4,4(a4)
	sw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a5,4(a5)
	lw	a4,-36(s0)
	bne	a4,a5,.L297
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,4(a5)
.L297:
	lw	a5,-36(s0)
	sw	zero,16(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,20(a5)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	lw	a4,12(a4)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	lw	a4,-20(s0)
	lw	a4,8(a4)
	sw	a4,4(a5)
	lw	a5,-28(s0)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	bne	a4,a5,.L298
	lw	a5,-20(s0)
	lw	a4,12(a5)
	lw	a5,-28(s0)
	sw	a4,4(a5)
.L298:
	lw	a5,-20(s0)
	sw	zero,20(a5)
	lw	a5,-28(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-28(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	sw	a4,12(a5)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a4,a5,4
	lw	a5,-32(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,20(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L300
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
.L300:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	vTaskRemoveFromUnorderedEventList, .-vTaskRemoveFromUnorderedEventList
	.align	1
	.globl	vTaskSetTimeOutState
	.type	vTaskSetTimeOutState, @function
vTaskSetTimeOutState:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L302
	li	a5,4096
	addi	a1,a5,1418
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L302:
#APP
# 5515 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xNumOfOverflows)
	lw	a4,%lo(xNumOfOverflows)(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lui	a5,%hi(xTickCount)
	lw	a4,%lo(xTickCount)(a5)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L304
#APP
# 5520 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L304:
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	vTaskSetTimeOutState, .-vTaskSetTimeOutState
	.align	1
	.globl	vTaskInternalSetTimeOutState
	.type	vTaskInternalSetTimeOutState, @function
vTaskInternalSetTimeOutState:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lui	a5,%hi(xNumOfOverflows)
	lw	a4,%lo(xNumOfOverflows)(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lui	a5,%hi(xTickCount)
	lw	a4,%lo(xTickCount)(a5)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	vTaskInternalSetTimeOutState, .-vTaskInternalSetTimeOutState
	.align	1
	.globl	xTaskCheckForTimeOut
	.type	xTaskCheckForTimeOut, @function
xTaskCheckForTimeOut:
.LFB51:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L307
	li	a5,4096
	addi	a1,a5,1449
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L307:
	lw	a5,-40(s0)
	bne	a5,zero,.L308
	li	a5,4096
	addi	a1,a5,1450
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L308:
#APP
# 5548 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lbu	a5,96(a5)
	beq	a5,zero,.L309
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sb	zero,96(a5)
	li	a5,1
	sw	a5,-20(s0)
	j	.L310
.L309:
	lw	a5,-40(s0)
	lw	a4,0(a5)
	li	a5,-1
	bne	a4,a5,.L311
	sw	zero,-20(s0)
	j	.L310
.L311:
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lui	a5,%hi(xNumOfOverflows)
	lw	a5,%lo(xNumOfOverflows)(a5)
	beq	a4,a5,.L312
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,-24(s0)
	bltu	a4,a5,.L312
	li	a5,1
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	sw	zero,0(a5)
	j	.L310
.L312:
	lw	a5,-40(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	bgeu	a4,a5,.L313
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sub	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a0,-36(s0)
	call	vTaskInternalSetTimeOutState
	sw	zero,-20(s0)
	j	.L310
.L313:
	lw	a5,-40(s0)
	sw	zero,0(a5)
	li	a5,1
	sw	a5,-20(s0)
.L310:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L314
#APP
# 5599 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L314:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	xTaskCheckForTimeOut, .-xTaskCheckForTimeOut
	.align	1
	.globl	vTaskMissedYield
	.type	vTaskMissedYield, @function
vTaskMissedYield:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	vTaskMissedYield, .-vTaskMissedYield
	.align	1
	.globl	uxTaskGetTaskNumber
	.type	uxTaskGetTaskNumber, @function
uxTaskGetTaskNumber:
.LFB53:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	beq	a5,zero,.L318
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a5,68(a5)
	sw	a5,-20(s0)
	j	.L319
.L318:
	sw	zero,-20(s0)
.L319:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE53:
	.size	uxTaskGetTaskNumber, .-uxTaskGetTaskNumber
	.align	1
	.globl	vTaskSetTaskNumber
	.type	vTaskSetTaskNumber, @function
vTaskSetTaskNumber:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	beq	a5,zero,.L323
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,68(a5)
.L323:
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	vTaskSetTaskNumber, .-vTaskSetTaskNumber
	.align	1
	.type	prvIdleTask, @function
prvIdleTask:
.LFB55:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
.L325:
	call	prvCheckTasksWaitingTermination
	j	.L325
	.cfi_endproc
.LFE55:
	.size	prvIdleTask, .-prvIdleTask
	.align	1
	.type	prvInitialiseTaskLists, @function
prvInitialiseTaskLists:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	j	.L327
.L328:
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	mv	a0,a5
	call	vListInitialise
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L327:
	lw	a4,-20(s0)
	li	a5,8
	bleu	a4,a5,.L328
	lui	a5,%hi(xDelayedTaskList1)
	addi	a0,a5,%lo(xDelayedTaskList1)
	call	vListInitialise
	lui	a5,%hi(xDelayedTaskList2)
	addi	a0,a5,%lo(xDelayedTaskList2)
	call	vListInitialise
	lui	a5,%hi(xPendingReadyList)
	addi	a0,a5,%lo(xPendingReadyList)
	call	vListInitialise
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a0,a5,%lo(xTasksWaitingTermination)
	call	vListInitialise
	lui	a5,%hi(xSuspendedTaskList)
	addi	a0,a5,%lo(xSuspendedTaskList)
	call	vListInitialise
	lui	a5,%hi(pxDelayedTaskList)
	lui	a4,%hi(xDelayedTaskList1)
	addi	a4,a4,%lo(xDelayedTaskList1)
	sw	a4,%lo(pxDelayedTaskList)(a5)
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lui	a4,%hi(xDelayedTaskList2)
	addi	a4,a4,%lo(xDelayedTaskList2)
	sw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	prvInitialiseTaskLists, .-prvInitialiseTaskLists
	.align	1
	.type	prvCheckTasksWaitingTermination, @function
prvCheckTasksWaitingTermination:
.LFB57:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	j	.L330
.L332:
#APP
# 6061 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a5,a5,%lo(xTasksWaitingTermination)
	lw	a5,12(a5)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxCurrentNumberOfTasks)
	sw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	lw	a5,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	sw	a4,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L331
#APP
# 6073 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L331:
	lw	a0,-20(s0)
	call	prvDeleteTCB
.L330:
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	lw	a5,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	bne	a5,zero,.L332
	nop
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE57:
	.size	prvCheckTasksWaitingTermination, .-prvCheckTasksWaitingTermination
	.align	1
	.globl	vTaskGetInfo
	.type	vTaskGetInfo, @function
vTaskGetInfo:
.LFB58:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L334
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L335
.L334:
	lw	a5,-36(s0)
.L335:
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a4,a5,52
	lw	a5,-40(s0)
	sw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lw	a5,-40(s0)
	sw	a4,16(a5)
	lw	a5,-24(s0)
	lw	a4,48(a5)
	lw	a5,-40(s0)
	sw	a4,28(a5)
	lw	a5,-24(s0)
	lw	a4,64(a5)
	lw	a5,-40(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,72(a5)
	lw	a5,-40(s0)
	sw	a4,20(a5)
	lw	a5,-40(s0)
	sw	zero,24(a5)
	lw	a4,-48(s0)
	li	a5,5
	beq	a4,a5,.L336
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L337
	lw	a5,-40(s0)
	sw	zero,12(a5)
	j	.L338
.L337:
	lw	a5,-40(s0)
	lw	a4,-48(s0)
	sw	a4,12(a5)
	lw	a4,-48(s0)
	li	a5,3
	bne	a4,a5,.L339
	call	vTaskSuspendAll
	lw	a5,-24(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L340
	lw	a5,-40(s0)
	li	a4,2
	sw	a4,12(a5)
	j	.L341
.L340:
	sw	zero,-20(s0)
	j	.L342
.L344:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	andi	a4,a5,0xff
	li	a5,1
	bne	a4,a5,.L343
	lw	a5,-40(s0)
	li	a4,2
	sw	a4,12(a5)
	j	.L341
.L343:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L342:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L344
.L341:
	call	xTaskResumeAll
.L339:
#APP
# 6230 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-24(s0)
	lw	a4,40(a5)
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	bne	a4,a5,.L345
	lw	a5,-40(s0)
	li	a4,1
	sw	a4,12(a5)
.L345:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L338
#APP
# 6237 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
	j	.L338
.L336:
	lw	a0,-24(s0)
	call	eTaskGetState
	mv	a4,a0
	lw	a5,-40(s0)
	sw	a4,12(a5)
.L338:
	lw	a5,-44(s0)
	beq	a5,zero,.L346
	lw	a5,-24(s0)
	lw	a5,48(a5)
	mv	a0,a5
	call	prvTaskCheckFreeStackSpace
	mv	a4,a0
	lw	a5,-40(s0)
	sw	a4,32(a5)
	j	.L348
.L346:
	lw	a5,-40(s0)
	sw	zero,32(a5)
.L348:
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	vTaskGetInfo, .-vTaskGetInfo
	.align	1
	.type	prvListTasksWithinSingleList, @function
prvListTasksWithinSingleList:
.LFB59:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	lw	a5,-40(s0)
	addi	a5,a5,8
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L350
	lw	a5,-40(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	j	.L351
.L352:
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-36(s0)
	add	a5,a5,a4
	lw	a3,-44(s0)
	li	a2,1
	mv	a1,a5
	lw	a0,-32(s0)
	call	vTaskGetInfo
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
.L351:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L352
.L350:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE59:
	.size	prvListTasksWithinSingleList, .-prvListTasksWithinSingleList
	.align	1
	.type	prvTaskCheckFreeStackSpace, @function
prvTaskCheckFreeStackSpace:
.LFB60:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L355
.L356:
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L355:
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	li	a5,165
	beq	a4,a5,.L356
	lw	a5,-20(s0)
	srli	a5,a5,2
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	prvTaskCheckFreeStackSpace, .-prvTaskCheckFreeStackSpace
	.align	1
	.globl	uxTaskGetStackHighWaterMark
	.type	uxTaskGetStackHighWaterMark, @function
uxTaskGetStackHighWaterMark:
.LFB61:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L359
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L360
.L359:
	lw	a5,-36(s0)
.L360:
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,48(a5)
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	prvTaskCheckFreeStackSpace
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE61:
	.size	uxTaskGetStackHighWaterMark, .-uxTaskGetStackHighWaterMark
	.align	1
	.type	prvDeleteTCB, @function
prvDeleteTCB:
.LFB62:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lbu	a5,95(a5)
	bne	a5,zero,.L363
	lw	a5,-20(s0)
	lw	a5,48(a5)
	mv	a0,a5
	call	vPortFree
	lw	a0,-20(s0)
	call	vPortFree
	j	.L366
.L363:
	lw	a5,-20(s0)
	lbu	a4,95(a5)
	li	a5,1
	bne	a4,a5,.L365
	lw	a0,-20(s0)
	call	vPortFree
	j	.L366
.L365:
	lw	a5,-20(s0)
	lbu	a4,95(a5)
	li	a5,2
	beq	a4,a5,.L366
	li	a5,8192
	addi	a1,a5,-1742
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L366:
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE62:
	.size	prvDeleteTCB, .-prvDeleteTCB
	.align	1
	.type	prvResetNextTaskUnblockTime, @function
prvResetNextTaskUnblockTime:
.LFB63:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L368
	lui	a5,%hi(xNextTaskUnblockTime)
	li	a4,-1
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	j	.L370
.L368:
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,12(a5)
	lw	a4,0(a5)
	lui	a5,%hi(xNextTaskUnblockTime)
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
.L370:
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	prvResetNextTaskUnblockTime, .-prvResetNextTaskUnblockTime
	.align	1
	.globl	xTaskGetCurrentTaskHandle
	.type	xTaskGetCurrentTaskHandle, @function
xTaskGetCurrentTaskHandle:
.LFB64:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	xTaskGetCurrentTaskHandle, .-xTaskGetCurrentTaskHandle
	.align	1
	.globl	xTaskGetCurrentTaskHandleForCore
	.type	xTaskGetCurrentTaskHandleForCore, @function
xTaskGetCurrentTaskHandleForCore:
.LFB65:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L374
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
.L374:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	xTaskGetCurrentTaskHandleForCore, .-xTaskGetCurrentTaskHandleForCore
	.align	1
	.globl	xTaskGetSchedulerState
	.type	xTaskGetSchedulerState, @function
xTaskGetSchedulerState:
.LFB66:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	bne	a5,zero,.L377
	li	a5,1
	sw	a5,-20(s0)
	j	.L378
.L377:
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L379
	li	a5,2
	sw	a5,-20(s0)
	j	.L378
.L379:
	sw	zero,-20(s0)
.L378:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE66:
	.size	xTaskGetSchedulerState, .-xTaskGetSchedulerState
	.align	1
	.globl	xTaskPriorityInherit
	.type	xTaskPriorityInherit, @function
xTaskPriorityInherit:
.LFB67:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	beq	a5,zero,.L382
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bgeu	a4,a5,.L383
	lw	a5,-24(s0)
	lw	a5,24(a5)
	blt	a5,zero,.L384
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	li	a4,9
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,24(a5)
.L384:
	lw	a5,-24(s0)
	lw	a3,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	bne	a3,a5,.L385
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	bne	a5,zero,.L386
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a5,a4,a5
	not	a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L386:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lw	a5,-24(s0)
	sw	a4,44(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-28(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-28(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-28(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	j	.L387
.L385:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lw	a5,-24(s0)
	sw	a4,44(a5)
.L387:
	li	a5,1
	sw	a5,-20(s0)
	j	.L382
.L383:
	lw	a5,-24(s0)
	lw	a4,72(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bgeu	a4,a5,.L382
	li	a5,1
	sw	a5,-20(s0)
.L382:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	xTaskPriorityInherit, .-xTaskPriorityInherit
	.align	1
	.globl	xTaskPriorityDisinherit
	.type	xTaskPriorityDisinherit, @function
xTaskPriorityDisinherit:
.LFB68:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	beq	a5,zero,.L390
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	beq	a4,a5,.L391
	li	a5,8192
	addi	a1,a5,-1492
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L391:
	lw	a5,-24(s0)
	lw	a5,76(a5)
	bne	a5,zero,.L392
	li	a5,8192
	addi	a1,a5,-1491
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L392:
	lw	a5,-24(s0)
	lw	a5,76(a5)
	addi	a4,a5,-1
	lw	a5,-24(s0)
	sw	a4,76(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lw	a5,-24(s0)
	lw	a5,72(a5)
	beq	a4,a5,.L390
	lw	a5,-24(s0)
	lw	a5,76(a5)
	bne	a5,zero,.L390
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	bne	a5,zero,.L393
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a5,a4,a5
	not	a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L393:
	lw	a5,-24(s0)
	lw	a4,72(a5)
	lw	a5,-24(s0)
	sw	a4,44(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,9
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,24(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-28(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-28(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-28(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	li	a5,1
	sw	a5,-20(s0)
.L390:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	xTaskPriorityDisinherit, .-xTaskPriorityDisinherit
	.align	1
	.globl	vTaskPriorityDisinheritAfterTimeout
	.type	vTaskPriorityDisinheritAfterTimeout, @function
vTaskPriorityDisinheritAfterTimeout:
.LFB69:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	li	a5,1
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	beq	a5,zero,.L403
	lw	a5,-24(s0)
	lw	a5,76(a5)
	bne	a5,zero,.L397
	li	a5,8192
	addi	a1,a5,-1398
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L397:
	lw	a5,-24(s0)
	lw	a5,72(a5)
	lw	a4,-56(s0)
	bleu	a4,a5,.L398
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	j	.L399
.L398:
	lw	a5,-24(s0)
	lw	a5,72(a5)
	sw	a5,-20(s0)
.L399:
	lw	a5,-24(s0)
	lw	a5,44(a5)
	lw	a4,-20(s0)
	beq	a4,a5,.L403
	lw	a5,-24(s0)
	lw	a5,76(a5)
	lw	a4,-28(s0)
	bne	a4,a5,.L403
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L400
	li	a5,8192
	addi	a1,a5,-1371
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L400:
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,44(a5)
	lw	a5,-24(s0)
	lw	a5,24(a5)
	blt	a5,zero,.L401
	li	a4,9
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,24(a5)
.L401:
	lw	a5,-24(s0)
	lw	a3,20(a5)
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	bne	a3,a5,.L403
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	bne	a5,zero,.L402
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a5,a4,a5
	not	a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L402:
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-36(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
.L403:
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE69:
	.size	vTaskPriorityDisinheritAfterTimeout, .-vTaskPriorityDisinheritAfterTimeout
	.align	1
	.globl	uxTaskResetEventItemValue
	.type	uxTaskResetEventItemValue, @function
uxTaskResetEventItemValue:
.LFB70:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	li	a3,9
	sub	a4,a3,a4
	sw	a4,24(a5)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	uxTaskResetEventItemValue, .-uxTaskResetEventItemValue
	.align	1
	.globl	pvTaskIncrementMutexHeldCount
	.type	pvTaskIncrementMutexHeldCount, @function
pvTaskIncrementMutexHeldCount:
.LFB71:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L407
	lw	a5,-20(s0)
	lw	a5,76(a5)
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,76(a5)
.L407:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	pvTaskIncrementMutexHeldCount, .-pvTaskIncrementMutexHeldCount
	.align	1
	.globl	ulTaskGenericNotifyTake
	.type	ulTaskGenericNotifyTake, @function
ulTaskGenericNotifyTake:
.LFB72:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	lw	a4,-36(s0)
	li	a5,2
	bleu	a4,a5,.L410
	li	a5,8192
	addi	a1,a5,-565
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L410:
	call	vTaskSuspendAll
#APP
# 7637 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	bne	a5,zero,.L411
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	add	a5,a4,a5
	li	a4,1
	sb	a4,92(a5)
	lw	a5,-44(s0)
	beq	a5,zero,.L411
	li	a5,1
	sw	a5,-20(s0)
.L411:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L412
#APP
# 7659 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L412:
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L413
	li	a1,1
	lw	a0,-44(s0)
	call	prvAddCurrentTaskToDelayedList
.L413:
	call	xTaskResumeAll
	sw	a0,-24(s0)
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L414
	lw	a5,-24(s0)
	bne	a5,zero,.L414
#APP
# 7679 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L414:
#APP
# 7686 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	beq	a5,zero,.L415
	lw	a5,-40(s0)
	beq	a5,zero,.L416
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	j	.L415
.L416:
	lui	a5,%hi(pxCurrentTCB)
	lw	a3,%lo(pxCurrentTCB)(a5)
	lw	a5,-28(s0)
	addi	a4,a5,-1
	lw	a5,-36(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L415:
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sb	zero,92(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L417
#APP
# 7709 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L417:
	lw	a5,-28(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	ulTaskGenericNotifyTake, .-ulTaskGenericNotifyTake
	.align	1
	.globl	xTaskGenericNotifyWait
	.type	xTaskGenericNotifyWait, @function
xTaskGenericNotifyWait:
.LFB73:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-24(s0)
	lw	a4,-36(s0)
	li	a5,2
	bleu	a4,a5,.L420
	li	a5,8192
	addi	a1,a5,-461
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L420:
	call	vTaskSuspendAll
#APP
# 7740 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	andi	a4,a5,0xff
	li	a5,2
	beq	a4,a5,.L421
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-36(s0)
	addi	a4,a4,20
	slli	a4,a4,2
	add	a4,a5,a4
	lw	a3,0(a4)
	lw	a4,-40(s0)
	not	a4,a4
	and	a4,a3,a4
	lw	a3,-36(s0)
	addi	a3,a3,20
	slli	a3,a3,2
	add	a5,a5,a3
	sw	a4,0(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	add	a5,a4,a5
	li	a4,1
	sb	a4,92(a5)
	lw	a5,-52(s0)
	beq	a5,zero,.L421
	li	a5,1
	sw	a5,-24(s0)
.L421:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L422
#APP
# 7767 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L422:
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L423
	li	a1,1
	lw	a0,-52(s0)
	call	prvAddCurrentTaskToDelayedList
.L423:
	call	xTaskResumeAll
	sw	a0,-28(s0)
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L424
	lw	a5,-28(s0)
	bne	a5,zero,.L424
#APP
# 7787 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L424:
#APP
# 7794 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-48(s0)
	beq	a5,zero,.L425
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-48(s0)
	sw	a4,0(a5)
.L425:
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	andi	a4,a5,0xff
	li	a5,2
	beq	a4,a5,.L426
	sw	zero,-20(s0)
	j	.L427
.L426:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-36(s0)
	addi	a4,a4,20
	slli	a4,a4,2
	add	a4,a5,a4
	lw	a3,0(a4)
	lw	a4,-44(s0)
	not	a4,a4
	and	a4,a3,a4
	lw	a3,-36(s0)
	addi	a3,a3,20
	slli	a3,a3,2
	add	a5,a5,a3
	sw	a4,0(a5)
	li	a5,1
	sw	a5,-20(s0)
.L427:
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sb	zero,92(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L428
#APP
# 7824 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L428:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	xTaskGenericNotifyWait, .-xTaskGenericNotifyWait
	.align	1
	.globl	xTaskGenericNotify
	.type	xTaskGenericNotify, @function
xTaskGenericNotify:
.LFB74:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	li	a5,1
	sw	a5,-20(s0)
	lw	a4,-56(s0)
	li	a5,2
	bleu	a4,a5,.L431
	li	a5,8192
	addi	a1,a5,-344
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L431:
	lw	a5,-52(s0)
	bne	a5,zero,.L432
	li	a5,8192
	addi	a1,a5,-343
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L432:
	lw	a5,-52(s0)
	sw	a5,-24(s0)
#APP
# 7852 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a5,-68(s0)
	beq	a5,zero,.L433
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-68(s0)
	sw	a4,0(a5)
.L433:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	sb	a5,-25(s0)
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	li	a4,2
	sb	a4,92(a5)
	lw	a4,-64(s0)
	li	a5,4
	bgtu	a4,a5,.L434
	lw	a5,-64(s0)
	slli	a4,a5,2
	lui	a5,%hi(.L436)
	addi	a5,a5,%lo(.L436)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L436:
	.word	.L450
	.word	.L439
	.word	.L438
	.word	.L437
	.word	.L435
	.text
.L439:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-60(s0)
	or	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L441
.L438:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lw	a3,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L441
.L437:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-60(s0)
	sw	a4,0(a5)
	j	.L441
.L435:
	lbu	a4,-25(s0)
	li	a5,2
	beq	a4,a5,.L442
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-60(s0)
	sw	a4,0(a5)
	j	.L441
.L442:
	sw	zero,-20(s0)
	j	.L441
.L434:
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	beq	a5,zero,.L451
	li	a5,8192
	addi	a1,a5,-290
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
	j	.L451
.L450:
	nop
	j	.L441
.L451:
	nop
.L441:
	lbu	a4,-25(s0)
	li	a5,1
	bne	a4,a5,.L445
	lw	a5,-24(s0)
	lw	a5,20(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	lw	a4,12(a4)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lw	a4,-24(s0)
	lw	a4,8(a4)
	sw	a4,4(a5)
	lw	a5,-32(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a5,a5,4
	bne	a4,a5,.L446
	lw	a5,-24(s0)
	lw	a4,12(a5)
	lw	a5,-32(s0)
	sw	a4,4(a5)
.L446:
	lw	a5,-24(s0)
	sw	zero,20(a5)
	lw	a5,-32(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-32(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-36(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-24(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L447
	li	a5,8192
	addi	a1,a5,-275
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L447:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	bgeu	a4,a5,.L445
#APP
# 7937 "tasks.c" 1
	ecall
# 0 "" 2
#NO_APP
.L445:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L448
#APP
# 7944 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L448:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	xTaskGenericNotify, .-xTaskGenericNotify
	.align	1
	.globl	xTaskGenericNotifyFromISR
	.type	xTaskGenericNotifyFromISR, @function
xTaskGenericNotifyFromISR:
.LFB75:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	li	a5,1
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	bne	a5,zero,.L453
	li	a5,8192
	addi	a1,a5,-222
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L453:
	lw	a4,-56(s0)
	li	a5,2
	bleu	a4,a5,.L454
	li	a5,8192
	addi	a1,a5,-221
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L454:
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	sw	zero,-28(s0)
	lw	a5,-68(s0)
	beq	a5,zero,.L455
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-68(s0)
	sw	a4,0(a5)
.L455:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	sb	a5,-29(s0)
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	li	a4,2
	sb	a4,92(a5)
	lw	a4,-64(s0)
	li	a5,4
	bgtu	a4,a5,.L456
	lw	a5,-64(s0)
	slli	a4,a5,2
	lui	a5,%hi(.L458)
	addi	a5,a5,%lo(.L458)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L458:
	.word	.L474
	.word	.L461
	.word	.L460
	.word	.L459
	.word	.L457
	.text
.L461:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-60(s0)
	or	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L463
.L460:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lw	a3,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L463
.L459:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-60(s0)
	sw	a4,0(a5)
	j	.L463
.L457:
	lbu	a4,-29(s0)
	li	a5,2
	beq	a4,a5,.L464
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-60(s0)
	sw	a4,0(a5)
	j	.L463
.L464:
	sw	zero,-20(s0)
	j	.L463
.L456:
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	beq	a5,zero,.L475
	li	a5,8192
	addi	a1,a5,-147
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
	j	.L475
.L474:
	nop
	j	.L463
.L475:
	nop
.L463:
	lbu	a4,-29(s0)
	li	a5,1
	bne	a4,a5,.L467
	lw	a5,-24(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L468
	li	a5,8192
	addi	a1,a5,-136
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L468:
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L469
	lw	a5,-24(s0)
	lw	a5,20(a5)
	sw	a5,-40(s0)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	lw	a4,12(a4)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lw	a4,-24(s0)
	lw	a4,8(a4)
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a5,a5,4
	bne	a4,a5,.L470
	lw	a5,-24(s0)
	lw	a4,12(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
.L470:
	lw	a5,-24(s0)
	sw	zero,20(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-44(s0)
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	lw	a5,-44(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	lw	a5,-44(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,4
	lw	a5,-44(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,20(a5)
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	j	.L471
.L469:
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,28(a5)
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,32(a5)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	addi	a4,a4,24
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a4,a5,24
	lw	a5,-36(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lui	a4,%hi(xPendingReadyList)
	addi	a4,a4,%lo(xPendingReadyList)
	sw	a4,40(a5)
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	sw	a4,0(a5)
.L471:
	lw	a5,-24(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L467
	lw	a5,-72(s0)
	beq	a5,zero,.L472
	lw	a5,-72(s0)
	li	a4,1
	sw	a4,0(a5)
.L472:
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
.L467:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	xTaskGenericNotifyFromISR, .-xTaskGenericNotifyFromISR
	.align	1
	.globl	vTaskGenericNotifyGiveFromISR
	.type	vTaskGenericNotifyGiveFromISR, @function
vTaskGenericNotifyGiveFromISR:
.LFB76:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a5,-52(s0)
	bne	a5,zero,.L477
	li	a5,8192
	addi	a1,a5,-60
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L477:
	lw	a4,-56(s0)
	li	a5,2
	bleu	a4,a5,.L478
	li	a5,8192
	addi	a1,a5,-59
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L478:
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	sb	a5,-25(s0)
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	li	a4,2
	sb	a4,92(a5)
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lw	a3,-20(s0)
	lw	a5,-56(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lbu	a4,-25(s0)
	li	a5,1
	bne	a4,a5,.L485
	lw	a5,-20(s0)
	lw	a5,40(a5)
	beq	a5,zero,.L480
	li	a5,8192
	addi	a1,a5,-18
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L480:
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	bne	a5,zero,.L481
	lw	a5,-20(s0)
	lw	a5,20(a5)
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	lw	a4,12(a4)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	lw	a4,-20(s0)
	lw	a4,8(a4)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	bne	a4,a5,.L482
	lw	a5,-20(s0)
	lw	a4,12(a5)
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L482:
	lw	a5,-20(s0)
	sw	zero,20(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,a5,-1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a4,1
	sll	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a5,-40(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	sw	a4,12(a5)
	lw	a5,-40(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	addi	a4,a4,4
	sw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a4,a5,4
	lw	a5,-40(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,20(a5)
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	lw	a4,44(a4)
	addi	a3,a5,1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a2,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	j	.L483
.L481:
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,28(a5)
	lw	a5,-32(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	sw	a4,32(a5)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	addi	a4,a4,24
	sw	a4,4(a5)
	lw	a5,-20(s0)
	addi	a4,a5,24
	lw	a5,-32(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lui	a4,%hi(xPendingReadyList)
	addi	a4,a4,%lo(xPendingReadyList)
	sw	a4,40(a5)
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	sw	a4,0(a5)
.L483:
	lw	a5,-20(s0)
	lw	a4,44(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	bleu	a4,a5,.L485
	lw	a5,-60(s0)
	beq	a5,zero,.L484
	lw	a5,-60(s0)
	li	a4,1
	sw	a4,0(a5)
.L484:
	lui	a5,%hi(xYieldPendings)
	li	a4,1
	sw	a4,%lo(xYieldPendings)(a5)
.L485:
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	vTaskGenericNotifyGiveFromISR, .-vTaskGenericNotifyGiveFromISR
	.align	1
	.globl	xTaskGenericNotifyStateClear
	.type	xTaskGenericNotifyStateClear, @function
xTaskGenericNotifyStateClear:
.LFB77:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-40(s0)
	li	a5,2
	bleu	a4,a5,.L487
	li	a5,8192
	addi	a1,a5,54
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L487:
	lw	a5,-36(s0)
	bne	a5,zero,.L488
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L489
.L488:
	lw	a5,-36(s0)
.L489:
	sw	a5,-24(s0)
#APP
# 8252 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,92(a5)
	andi	a4,a5,0xff
	li	a5,2
	bne	a4,a5,.L490
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sb	zero,92(a5)
	li	a5,1
	sw	a5,-20(s0)
	j	.L491
.L490:
	sw	zero,-20(s0)
.L491:
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L492
#APP
# 8264 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L492:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	xTaskGenericNotifyStateClear, .-xTaskGenericNotifyStateClear
	.align	1
	.globl	ulTaskGenericNotifyValueClear
	.type	ulTaskGenericNotifyValueClear, @function
ulTaskGenericNotifyValueClear:
.LFB78:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a4,-40(s0)
	li	a5,2
	bleu	a4,a5,.L495
	li	a5,8192
	addi	a1,a5,93
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	vAssertCalled
.L495:
	lw	a5,-36(s0)
	bne	a5,zero,.L496
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	j	.L497
.L496:
	lw	a5,-36(s0)
.L497:
	sw	a5,-20(s0)
#APP
# 8291 "tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
#NO_APP
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	not	a5,a5
	and	a4,a4,a5
	lw	a3,-20(s0)
	lw	a5,-40(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(xCriticalNesting)
	sw	a4,%lo(xCriticalNesting)(a5)
	lui	a5,%hi(xCriticalNesting)
	lw	a5,%lo(xCriticalNesting)(a5)
	bne	a5,zero,.L498
#APP
# 8298 "tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
#NO_APP
.L498:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	ulTaskGenericNotifyValueClear, .-ulTaskGenericNotifyValueClear
	.align	1
	.type	prvAddCurrentTaskToDelayedList, @function
prvAddCurrentTaskToDelayedList:
.LFB79:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a5,%lo(pxOverflowDelayedTaskList)(a5)
	sw	a5,-28(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sb	zero,96(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a5,a5,4
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	bne	a5,zero,.L501
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	li	a4,1
	sll	a5,a4,a5
	not	a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L501:
	lw	a4,-52(s0)
	li	a5,-1
	bne	a4,a5,.L502
	lw	a5,-56(s0)
	beq	a5,zero,.L502
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,12(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	addi	a4,a4,4
	sw	a4,4(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a4,a5,4
	lw	a5,-32(s0)
	sw	a4,8(a5)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lui	a4,%hi(xSuspendedTaskList)
	addi	a4,a4,%lo(xSuspendedTaskList)
	sw	a4,20(a5)
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	sw	a4,0(a5)
	nop
	j	.L505
.L502:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L504
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a5,a5,4
	mv	a1,a5
	lw	a0,-28(s0)
	call	vListInsert
	j	.L505
.L504:
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a5,a5,4
	mv	a1,a5
	lw	a0,-24(s0)
	call	vListInsert
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a5,%lo(xNextTaskUnblockTime)(a5)
	lw	a4,-36(s0)
	bgeu	a4,a5,.L505
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a4,-36(s0)
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
.L505:
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	prvAddCurrentTaskToDelayedList, .-prvAddCurrentTaskToDelayedList
	.align	1
	.globl	vTaskResetState
	.type	vTaskResetState, @function
vTaskResetState:
.LFB80:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lui	a5,%hi(pxCurrentTCB)
	sw	zero,%lo(pxCurrentTCB)(a5)
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	sw	zero,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	lui	a5,%hi(uxCurrentNumberOfTasks)
	sw	zero,%lo(uxCurrentNumberOfTasks)(a5)
	lui	a5,%hi(xTickCount)
	sw	zero,%lo(xTickCount)(a5)
	lui	a5,%hi(uxTopReadyPriority)
	sw	zero,%lo(uxTopReadyPriority)(a5)
	lui	a5,%hi(xSchedulerRunning)
	sw	zero,%lo(xSchedulerRunning)(a5)
	lui	a5,%hi(xPendedTicks)
	sw	zero,%lo(xPendedTicks)(a5)
	sw	zero,-20(s0)
	j	.L507
.L508:
	lui	a5,%hi(xYieldPendings)
	lw	a4,-20(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(xYieldPendings)
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L507:
	lw	a5,-20(s0)
	ble	a5,zero,.L508
	lui	a5,%hi(xNumOfOverflows)
	sw	zero,%lo(xNumOfOverflows)(a5)
	lui	a5,%hi(uxTaskNumber)
	sw	zero,%lo(uxTaskNumber)(a5)
	lui	a5,%hi(xNextTaskUnblockTime)
	sw	zero,%lo(xNextTaskUnblockTime)(a5)
	lui	a5,%hi(uxSchedulerSuspended)
	sw	zero,%lo(uxSchedulerSuspended)(a5)
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	vTaskResetState, .-vTaskResetState
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
