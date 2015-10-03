	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}
	
	mov r3,#-1
	mov r4,#1
	mov r5,#0
loop:
	add r5, r3, r4
	mov r3, r4
	mov r4, r5
	subs r0, r0, #1
	bge loop

	mov r0, r5

	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
