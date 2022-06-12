[org 0x0100]

 jmp start
data: db 6, 6, 5, -4, 1
start: mov si, 0
outerloop: mov di, si
add di, 1 ;j=i+1
innerloop: mov al, [data+si]
cmp al, [data+di]
jbe afterswap
mov dl, [data+di]
mov [data+si], dl
mov [data+di], al
afterswap: add di, 1
cmp di, 5
jne innerloop
add si, 1
cmp si, 4
jne outerloop


mov dx, 0x4c00
int 0x21