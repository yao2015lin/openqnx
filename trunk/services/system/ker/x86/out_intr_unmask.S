#
# $QNXLicenseA:
# Copyright 2007, QNX Software Systems. All Rights Reserved.
# 
# You must obtain a written license from and pay applicable license fees to QNX 
# Software Systems before you may reproduce, modify or distribute this software, 
# or any work that includes all or part of this software.   Free development 
# licenses are available for evaluation and non-commercial purposes.  For more 
# information visit http://licensing.qnx.com or email licensing@qnx.com.
#  
# This file may contain contributions from others.  Please review this entire 
# file for other proprietary rights or license notices, as well as the QNX 
# Development Suite License Guide at http://licensing.qnx.com/license-guide/ 
# for other information.
# $
#

	.extern	interrupt_unmask_vector

	/ Handle transitions from outside the kernel into a kernel routine.

	.globl	outside_intr_unmask
	
	.text

outside_intr_unmask:	/proc	near
	mov	4(%esp),%eax			/ grab interrupt vector
	mov	8(%esp),%edx			/ grab interrupt id
	jmp	interrupt_unmask_vector/ for register calling conventions
/outside_intr_unmask	endp
