;;
;;  Copyright (C) 2019 Roman Pauer
;;
;;  Permission is hereby granted, free of charge, to any person obtaining a copy of
;;  this software and associated documentation files (the "Software"), to deal in
;;  the Software without restriction, including without limitation the rights to
;;  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
;;  of the Software, and to permit persons to whom the Software is furnished to do
;;  so, subject to the following conditions:
;;
;;  The above copyright notice and this permission notice shall be included in all
;;  copies or substantial portions of the Software.
;;
;;  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;;  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;;  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;;  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;;  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;;  SOFTWARE.
;;

%include "asm-calls.inc"

%ifidn __OUTPUT_FORMAT__, win32
    %define SoundEngine_StartTimer _SoundEngine_StartTimer
    %define SoundEngine_StopTimer _SoundEngine_StopTimer
    %define SoundEngine_DecodeMP3Stream _SoundEngine_DecodeMP3Stream
    %define SoundEngine_OpenMP3Stream _SoundEngine_OpenMP3Stream
%endif

extern SoundEngine_StartTimer
extern SoundEngine_StopTimer
extern SoundEngine_DecodeMP3Stream
extern SoundEngine_OpenMP3Stream

global SoundEngine_StartTimer_asm2c
global SoundEngine_StopTimer_asm2c
global SoundEngine_DecodeMP3Stream_asm2c
global SoundEngine_OpenMP3Stream_asm2c

%ifidn __OUTPUT_FORMAT__, elf32
section .note.GNU-stack noalloc noexec nowrite progbits
section .text progbits alloc exec nowrite align=16
%else
section .text code align=16
%endif

align 16
SoundEngine_StartTimer_asm2c:

; [esp      ] = return address

        Call_Asm_Stack0 SoundEngine_StartTimer

        retn

; end procedure SoundEngine_StartTimer_asm2c


align 16
SoundEngine_StopTimer_asm2c:

; [esp +   4] = uint32_t uTimerID
; [esp      ] = return address

        Call_Asm_Stack1 SoundEngine_StopTimer

        retn

; end procedure SoundEngine_StopTimer_asm2c


align 16
SoundEngine_DecodeMP3Stream_asm2c:

; [esp +   4] = SE_struc_4 *struc4
; [esp      ] = return address

        Call_Asm_Stack1 SoundEngine_DecodeMP3Stream

        retn

; end procedure SoundEngine_DecodeMP3Stream_asm2c


align 16
SoundEngine_OpenMP3Stream_asm2c:

; [esp +   4] = SE_struc_9 *struc9
; [esp      ] = return address

        Call_Asm_Stack1 SoundEngine_OpenMP3Stream

        retn

; end procedure SoundEngine_OpenMP3Stream_asm2c

