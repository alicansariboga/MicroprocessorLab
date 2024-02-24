          

MOV AX, 100h
MOV DS, AX

MOV [0500h], 9Bh
MOV [0501h], 52h
                
MOV AX, 00h                
MOV AL, [0500h]
MOV AH, [0501h]
ADD AL, AH       

MOV [0502h], AL  

ret