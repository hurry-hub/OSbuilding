00000000  E92100            jmp word 0x24
00000003  0000              add [bx+si],al
00000005  0000              add [bx+si],al
00000007  0000              add [bx+si],al
00000009  0000              add [bx+si],al
0000000B  0014              add [si],dl
0000000D  0000              add [bx+si],al
0000000F  0000              add [bx+si],al
00000011  98                cbw
00000012  40                inc ax
00000013  00FF              add bh,bh
00000015  FF00              inc word [bx+si]
00000017  800B92            or byte [bp+di],0x92
0000001A  0000              add [bx+si],al
0000001C  17                pop ss
0000001D  0000              add [bx+si],al
0000001F  0000              add [bx+si],al
00000021  0000              add [bx+si],al
00000023  008CC88E          add [si-0x7138],cl
00000027  D88EC08E          fmul dword [bp-0x7140]
0000002B  D0BC0001          sar byte [si+0x100],1
0000002F  6631C0            xor eax,eax
00000032  8CC8              mov ax,cs
00000034  66C1E004          shl eax,byte 0x4
00000038  6605807C0000      add eax,0x7c80
0000003E  A30E7C            mov [0x7c0e],ax
00000041  66C1E810          shr eax,byte 0x10
00000045  A2107C            mov [0x7c10],al
00000048  8826137C          mov [0x7c13],ah
0000004C  6631C0            xor eax,eax
0000004F  8CD8              mov ax,ds
00000051  66C1E004          shl eax,byte 0x4
00000055  6605047C0000      add eax,0x7c04
0000005B  66A31E7C          mov [0x7c1e],eax
0000005F  0F01161C7C        lgdt [0x7c1c]
00000064  FA                cli
00000065  E492              in al,0x92
00000067  0C02              or al,0x2
00000069  E692              out 0x92,al
0000006B  0F20C0            mov eax,cr0
0000006E  6683C801          or eax,byte +0x1
00000072  0F22C0            mov cr0,eax
00000075  66EA000000000800  jmp dword 0x8:0x0
0000007D  0000              add [bx+si],al
0000007F  0066B8            add [bp-0x48],ah
00000082  1000              adc [bx+si],al
00000084  8EE8              mov gs,ax
00000086  BF7E07            mov di,0x77e
00000089  0000              add [bx+si],al
0000008B  B40C              mov ah,0xc
0000008D  B050              mov al,0x50
0000008F  65668907          mov [gs:bx],eax
00000093  EBFE              jmp short 0x93
0000007C  E92100            jmp word 0xa0
0000007F  0000              add [bx+si],al
00000081  0000              add [bx+si],al
00000083  0000              add [bx+si],al
00000085  0000              add [bx+si],al
00000087  0014              add [si],dl
00000089  0000              add [bx+si],al
0000008B  0000              add [bx+si],al
0000008D  98                cbw
0000008E  40                inc ax
0000008F  00FF              add bh,bh
00000091  FF00              inc word [bx+si]
00000093  800B92            or byte [bp+di],0x92
00000096  0000              add [bx+si],al
00000098  17                pop ss
00000099  0000              add [bx+si],al
0000009B  0000              add [bx+si],al
0000009D  0000              add [bx+si],al
0000009F  008CC88E          add [si-0x7138],cl
000000A3  D88EC08E          fmul dword [bp-0x7140]
000000A7  D0BC0001          sar byte [si+0x100],1
000000AB  6631C0            xor eax,eax
000000AE  8CC8              mov ax,cs
000000B0  66C1E004          shl eax,byte 0x4
000000B4  6605807C0000      add eax,0x7c80
000000BA  A30E7C            mov [0x7c0e],ax
000000BD  66C1E810          shr eax,byte 0x10
000000C1  A2107C            mov [0x7c10],al
000000C4  8826137C          mov [0x7c13],ah
000000C8  6631C0            xor eax,eax
000000CB  8CD8              mov ax,ds
000000CD  66C1E004          shl eax,byte 0x4
000000D1  6605047C0000      add eax,0x7c04
000000D7  66A31E7C          mov [0x7c1e],eax
000000DB  0F01161C7C        lgdt [0x7c1c]
000000E0  FA                cli
000000E1  E492              in al,0x92
000000E3  0C02              or al,0x2
000000E5  E692              out 0x92,al
000000E7  0F20C0            mov eax,cr0
000000EA  6683C801          or eax,byte +0x1
000000EE  0F22C0            mov cr0,eax
000000F1  66EA000000000800  jmp dword 0x8:0x0
000000F9  0000              add [bx+si],al
000000FB  0066B8            add [bp-0x48],ah
000000FE  1000              adc [bx+si],al
00000100  8EE8              mov gs,ax
00000102  BF7E07            mov di,0x77e
00000105  0000              add [bx+si],al
00000107  B40C              mov ah,0xc
00000109  B050              mov al,0x50
0000010B  65668907          mov [gs:bx],eax
0000010F  EBFE              jmp short 0x10f
0000007C  E92100            jmp word 0xa0
0000007F  0000              add [bx+si],al
00000081  0000              add [bx+si],al
00000083  0000              add [bx+si],al
00000085  0000              add [bx+si],al
00000087  0014              add [si],dl
00000089  0000              add [bx+si],al
0000008B  0000              add [bx+si],al
0000008D  98                cbw
0000008E  40                inc ax
0000008F  00FF              add bh,bh
00000091  FF00              inc word [bx+si]
00000093  800B92            or byte [bp+di],0x92
00000096  0000              add [bx+si],al
00000098  17                pop ss
00000099  0000              add [bx+si],al
0000009B  0000              add [bx+si],al
0000009D  0000              add [bx+si],al
0000009F  008CC88E          add [si-0x7138],cl
000000A3  D88EC08E          fmul dword [bp-0x7140]
000000A7  D0BC0001          sar byte [si+0x100],1
000000AB  6631C0            xor eax,eax
000000AE  8CC8              mov ax,cs
000000B0  66C1E004          shl eax,byte 0x4
000000B4  6605807C0000      add eax,0x7c80
000000BA  A30E7C            mov [0x7c0e],ax
000000BD  66C1E810          shr eax,byte 0x10
000000C1  A2107C            mov [0x7c10],al
000000C4  8826137C          mov [0x7c13],ah
000000C8  6631C0            xor eax,eax
000000CB  8CD8              mov ax,ds
000000CD  66C1E004          shl eax,byte 0x4
000000D1  6605047C0000      add eax,0x7c04
000000D7  66A31E7C          mov [0x7c1e],eax
000000DB  0F01161C7C        lgdt [0x7c1c]
000000E0  FA                cli
000000E1  E492              in al,0x92
000000E3  0C02              or al,0x2
000000E5  E692              out 0x92,al
000000E7  0F20C0            mov eax,cr0
000000EA  6683C801          or eax,byte +0x1
000000EE  0F22C0            mov cr0,eax
000000F1  66EA000000000800  jmp dword 0x8:0x0
000000F9  0000              add [bx+si],al
000000FB  0066B8            add [bp-0x48],ah
000000FE  1000              adc [bx+si],al
00000100  8EE8              mov gs,ax
00000102  BF7E07            mov di,0x77e
00000105  0000              add [bx+si],al
00000107  B40C              mov ah,0xc
00000109  B050              mov al,0x50
0000010B  65668907          mov [gs:bx],eax
0000010F  EBFE              jmp short 0x10f
00007C00  E92100            jmp word 0x7c24
00007C03  0000              add [bx+si],al
00007C05  0000              add [bx+si],al
00007C07  0000              add [bx+si],al
00007C09  0000              add [bx+si],al
00007C0B  0014              add [si],dl
00007C0D  0000              add [bx+si],al
00007C0F  0000              add [bx+si],al
00007C11  98                cbw
00007C12  40                inc ax
00007C13  00FF              add bh,bh
00007C15  FF00              inc word [bx+si]
00007C17  800B92            or byte [bp+di],0x92
00007C1A  0000              add [bx+si],al
00007C1C  17                pop ss
00007C1D  0000              add [bx+si],al
00007C1F  0000              add [bx+si],al
00007C21  0000              add [bx+si],al
00007C23  008CC88E          add [si-0x7138],cl
00007C27  D88EC08E          fmul dword [bp-0x7140]
00007C2B  D0BC0001          sar byte [si+0x100],1
00007C2F  6631C0            xor eax,eax
00007C32  8CC8              mov ax,cs
00007C34  66C1E004          shl eax,byte 0x4
00007C38  6605807C0000      add eax,0x7c80
00007C3E  A30E7C            mov [0x7c0e],ax
00007C41  66C1E810          shr eax,byte 0x10
00007C45  A2107C            mov [0x7c10],al
00007C48  8826137C          mov [0x7c13],ah
00007C4C  6631C0            xor eax,eax
00007C4F  8CD8              mov ax,ds
00007C51  66C1E004          shl eax,byte 0x4
00007C55  6605047C0000      add eax,0x7c04
00007C5B  66A31E7C          mov [0x7c1e],eax
00007C5F  0F01161C7C        lgdt [0x7c1c]
00007C64  FA                cli
00007C65  E492              in al,0x92
00007C67  0C02              or al,0x2
00007C69  E692              out 0x92,al
00007C6B  0F20C0            mov eax,cr0
00007C6E  6683C801          or eax,byte +0x1
00007C72  0F22C0            mov cr0,eax
00007C75  66EA000000000800  jmp dword 0x8:0x0
00007C7D  0000              add [bx+si],al
00007C7F  0066B8            add [bp-0x48],ah
00007C82  1000              adc [bx+si],al
00007C84  8EE8              mov gs,ax
00007C86  BF7E07            mov di,0x77e
00007C89  0000              add [bx+si],al
00007C8B  B40C              mov ah,0xc
00007C8D  B050              mov al,0x50
00007C8F  65668907          mov [gs:bx],eax
00007C93  EBFE              jmp short 0x7c93
