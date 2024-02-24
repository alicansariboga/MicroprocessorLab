;student number
MOV [2000h], 32h    
MOV [2001h], 30h
MOV [2002h], 31h
MOV [2003h], 39h
MOV [2004h], 35h
MOV [2005h], 35h
MOV [2006h], 36h
MOV [2007h], 30h
MOV [2008h], 35h
MOV [2009h], 35h
  
; 0100:2000 ,physical 3000
MOV AX,100h                   
MOV DS,AX        
MOV SI,2000h  
           
; 0200:2000 ,physical 4000           
MOV AX, 200h                  
MOV ES,AX     
MOV DI,2000h;                 
    

;Print Screen
MOV CX, 10           
REP MOVSB


MOV AX, 0100h
MOV DS, AX

LEA BX, info

MOV AH, 0Eh

LOOP1:
	MOV AL, [BX]
	CMP AL, 0
	JE FINISH
	INT 10h
	INC BX
JMP LOOP1

;return
FINISH:
MOV AH, 4Ch
INT 21h   


info DB '2019556055 Evening', 0
