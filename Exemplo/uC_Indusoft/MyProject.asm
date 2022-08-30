
_config_io:

;MyProject.c,13 :: 		void config_io()
;MyProject.c,15 :: 		TRISB=0x01;
	MOVLW       1
	MOVWF       TRISB+0 
;MyProject.c,16 :: 		}
L_end_config_io:
	RETURN      0
; end of _config_io

_transmiter_data:

;MyProject.c,17 :: 		void transmiter_data()
;MyProject.c,21 :: 		strcpy(sText,"");           // Inicio de pacote
	MOVLW       _sText+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       ?lstr1_MyProject+0
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(?lstr1_MyProject+0)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;MyProject.c,22 :: 		strcat(sText,"$Dados,");    // Indice "DADOS"
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr2_MyProject+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr2_MyProject+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;MyProject.c,23 :: 		strcat(sText,sS1);          // Envio da primeira variável (S1)
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _sS1+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_sS1+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;MyProject.c,24 :: 		strcat(sText,",");          // Termo de Separação
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr3_MyProject+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr3_MyProject+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;MyProject.c,25 :: 		strcat(sText,sAnalog);      // Envio da Segunda variável (AN0)
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _sAnalog+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_sAnalog+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;MyProject.c,26 :: 		strcat(sText,",*");         // Termo de Separação
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr4_MyProject+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr4_MyProject+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;MyProject.c,27 :: 		strcat(sText,"\r\n");       // Tabulação - quebra de linha
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr5_MyProject+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr5_MyProject+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;MyProject.c,28 :: 		UART1_Write_Text(sText);    // Envio da sting completa para Serial
	MOVLW       _sText+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,29 :: 		Delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_transmiter_data0:
	DECFSZ      R13, 1, 1
	BRA         L_transmiter_data0
	DECFSZ      R12, 1, 1
	BRA         L_transmiter_data0
	DECFSZ      R11, 1, 1
	BRA         L_transmiter_data0
;MyProject.c,30 :: 		}
L_end_transmiter_data:
	RETURN      0
; end of _transmiter_data

_main:

;MyProject.c,32 :: 		void main()
;MyProject.c,34 :: 		config_io();
	CALL        _config_io+0, 0
;MyProject.c,35 :: 		UART1_Init(9600); // inicia a comunicação serial em 9600bps
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;MyProject.c,36 :: 		ADC_Init();       // inicia o canal analógico
	CALL        _ADC_Init+0, 0
;MyProject.c,37 :: 		while(1)
L_main1:
;MyProject.c,39 :: 		if(S1==1)
	BTFSS       PORTB+0, 0 
	GOTO        L_main3
;MyProject.c,41 :: 		iS1=1;
	MOVLW       1
	MOVWF       _iS1+0 
	MOVLW       0
	MOVWF       _iS1+1 
;MyProject.c,42 :: 		}
	GOTO        L_main4
L_main3:
;MyProject.c,43 :: 		else if(S1==0)
	BTFSC       PORTB+0, 0 
	GOTO        L_main5
;MyProject.c,45 :: 		iS1=0;
	CLRF        _iS1+0 
	CLRF        _iS1+1 
;MyProject.c,46 :: 		}
L_main5:
L_main4:
;MyProject.c,47 :: 		iAnalog=ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _iAnalog+0 
	MOVF        R1, 0 
	MOVWF       _iAnalog+1 
;MyProject.c,50 :: 		IntToStr(iS1, sS1);
	MOVF        _iS1+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _iS1+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _sS1+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_sS1+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;MyProject.c,51 :: 		Ltrim(sS1);
	MOVLW       _sS1+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(_sS1+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;MyProject.c,53 :: 		IntToStr(iAnalog, sAnalog);
	MOVF        _iAnalog+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _iAnalog+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _sAnalog+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_sAnalog+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;MyProject.c,54 :: 		Ltrim(sAnalog);
	MOVLW       _sAnalog+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(_sAnalog+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;MyProject.c,56 :: 		transmiter_data();
	CALL        _transmiter_data+0, 0
;MyProject.c,57 :: 		}
	GOTO        L_main1
;MyProject.c,58 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
