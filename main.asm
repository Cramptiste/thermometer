#start=thermometer.exe#

.model small
.stack 100h
.data

.code
main proc
    mov ax,@data
    mov ds,ax
    start:
        in al,125
        cmp al,60;60<temperature<80 
        jl low
        cmp al,80
        jle fin
        jg high

             
    low:
        mov al,1
        out 127,al     
        jmp fin
    high:
        mov al,0
        out 127,al     
    fin:
        jmp start         
endp
end main
