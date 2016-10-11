/**
 *
 *  Copyright (C) 2016 Roman Pauer
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy of
 *  this software and associated documentation files (the "Software"), to deal in
 *  the Software without restriction, including without limitation the rights to
 *  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 *  of the Software, and to permit persons to whom the Software is furnished to do
 *  so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 *
 */

#if !defined(_WARCRAFT_INT_H_INCLUDED_)
#define _WARCRAFT_INT_H_INCLUDED_

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    volatile Game_register _edi;
    volatile Game_register _esi;
    const Game_register _ebp;
    const Game_register _esp;
    volatile Game_register _ebx;
    volatile Game_register _edx;
    volatile Game_register _ecx;
    volatile Game_register _eax;
    volatile Game_register _eflags;
    const Game_register _eip;
} _cpu_regs;

extern void X86_InterruptProcedure(
    CALL_PARAMS1
    const uint8_t IntNum,
    _cpu_regs *regs
);


#ifdef __cplusplus
}
#endif

#endif /* _WARCRAFT_INT_H_INCLUDED_ */
