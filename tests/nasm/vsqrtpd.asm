section .text
	bits 64
	global _start
_start:
	vsqrtpd xmm0, xmm1
	vsqrtpd xmm0, oword [rax]

	vsqrtpd ymm0, ymm1
	vsqrtpd ymm0, yword [rax]
