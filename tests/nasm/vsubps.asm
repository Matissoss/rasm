section .text
	bits 64
	global _start
_start:
	vsubps xmm0, xmm1, xmm2
	vsubps xmm8, xmm9, oword [rax]
	vsubps xmm9, xmm0, xmm10
	
	vsubps ymm0, ymm1, ymm2
	vsubps ymm8, ymm9, yword [rax]
	vsubps ymm9, ymm0, ymm10
