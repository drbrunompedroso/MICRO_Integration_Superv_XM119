
_config_io:

;Level_Control.c,21 :: 		void config_io()
;Level_Control.c,23 :: 		TRISC.RC0=0;
	BCF         TRISC+0, 0 
;Level_Control.c,24 :: 		TRISC.RC1=0;
	BCF         TRISC+0, 1 
;Level_Control.c,25 :: 		TRISC.RC2=0;
	BCF         TRISC+0, 2 
;Level_Control.c,26 :: 		TRISC.RC3=0;
	BCF         TRISC+0, 3 
;Level_Control.c,27 :: 		}
L_end_config_io:
	RETURN      0
; end of _config_io

_transmiter_data:

;Level_Control.c,28 :: 		void transmiter_data()
;Level_Control.c,30 :: 		strcpy(sText,"");
	MOVLW       _sText+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       ?lstr1_Level_Control+0
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(?lstr1_Level_Control+0)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;Level_Control.c,31 :: 		strcat(sText,"$Dados,");
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr2_Level_Control+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr2_Level_Control+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,32 :: 		strcat(sText,sNivel);
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _sNivel+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_sNivel+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,33 :: 		strcat(sText,",");
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr3_Level_Control+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr3_Level_Control+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,34 :: 		strcat(sText,sV1);
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _sV1+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_sV1+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,35 :: 		strcat(sText,",");
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr4_Level_Control+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr4_Level_Control+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,36 :: 		strcat(sText,sV2);
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _sV2+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_sV2+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,37 :: 		strcat(sText,",");
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr5_Level_Control+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr5_Level_Control+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,38 :: 		strcat(sText,sV3);
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _sV3+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_sV3+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,39 :: 		strcat(sText,",");
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr6_Level_Control+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr6_Level_Control+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,40 :: 		strcat(sText,sB1);
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _sB1+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_sB1+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,41 :: 		strcat(sText,",*");
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr7_Level_Control+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr7_Level_Control+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,42 :: 		strcat(sText,"\r\n");
	MOVLW       _sText+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       ?lstr8_Level_Control+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(?lstr8_Level_Control+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;Level_Control.c,43 :: 		UART1_Write_Text(sText);
	MOVLW       _sText+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_sText+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Level_Control.c,44 :: 		Delay_ms(200);
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
;Level_Control.c,45 :: 		}
L_end_transmiter_data:
	RETURN      0
; end of _transmiter_data

_main:

;Level_Control.c,47 :: 		void main()
;Level_Control.c,49 :: 		config_io();
	CALL        _config_io+0, 0
;Level_Control.c,50 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;Level_Control.c,51 :: 		ADC_Init();
	CALL        _ADC_Init+0, 0
;Level_Control.c,52 :: 		while(1)
L_main1:
;Level_Control.c,54 :: 		iSensor=ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _iSensor+0 
	MOVF        R1, 0 
	MOVWF       _iSensor+1 
;Level_Control.c,55 :: 		iNivel= iSensor/4.09;
	CALL        _word2double+0, 0
	MOVLW       72
	MOVWF       R4 
	MOVLW       225
	MOVWF       R5 
	MOVLW       2
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	CALL        _double2word+0, 0
	MOVF        R0, 0 
	MOVWF       _iNivel+0 
	MOVF        R1, 0 
	MOVWF       _iNivel+1 
;Level_Control.c,57 :: 		if(iNivel < 50)
	MOVLW       0
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main19
	MOVLW       50
	SUBWF       R0, 0 
L__main19:
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;Level_Control.c,59 :: 		iV1= 1;
	MOVLW       1
	MOVWF       _iV1+0 
	MOVLW       0
	MOVWF       _iV1+1 
;Level_Control.c,60 :: 		iV2= 1;
	MOVLW       1
	MOVWF       _iV2+0 
	MOVLW       0
	MOVWF       _iV2+1 
;Level_Control.c,61 :: 		iV3= 0;
	CLRF        _iV3+0 
	CLRF        _iV3+1 
;Level_Control.c,62 :: 		iB1= 1;
	MOVLW       1
	MOVWF       _iB1+0 
	MOVLW       0
	MOVWF       _iB1+1 
;Level_Control.c,63 :: 		V1= 0;
	BCF         PORTC+0, 0 
;Level_Control.c,64 :: 		V2= 0;
	BCF         PORTC+0, 1 
;Level_Control.c,65 :: 		V3= 1;
	BSF         PORTC+0, 2 
;Level_Control.c,66 :: 		B1= 0;
	BCF         PORTC+0, 3 
;Level_Control.c,67 :: 		}
	GOTO        L_main4
L_main3:
;Level_Control.c,68 :: 		else if (iNivel >= 50 && iNivel < 150)
	MOVLW       0
	SUBWF       _iNivel+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main20
	MOVLW       50
	SUBWF       _iNivel+0, 0 
L__main20:
	BTFSS       STATUS+0, 0 
	GOTO        L_main7
	MOVLW       0
	SUBWF       _iNivel+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main21
	MOVLW       150
	SUBWF       _iNivel+0, 0 
L__main21:
	BTFSC       STATUS+0, 0 
	GOTO        L_main7
L__main15:
;Level_Control.c,70 :: 		iV1= 1;
	MOVLW       1
	MOVWF       _iV1+0 
	MOVLW       0
	MOVWF       _iV1+1 
;Level_Control.c,71 :: 		iV2= 1;
	MOVLW       1
	MOVWF       _iV2+0 
	MOVLW       0
	MOVWF       _iV2+1 
;Level_Control.c,72 :: 		iV3= 1;
	MOVLW       1
	MOVWF       _iV3+0 
	MOVLW       0
	MOVWF       _iV3+1 
;Level_Control.c,73 :: 		iB1= 1;
	MOVLW       1
	MOVWF       _iB1+0 
	MOVLW       0
	MOVWF       _iB1+1 
;Level_Control.c,74 :: 		V1= 0;
	BCF         PORTC+0, 0 
;Level_Control.c,75 :: 		V2= 0;
	BCF         PORTC+0, 1 
;Level_Control.c,76 :: 		V3= 0;
	BCF         PORTC+0, 2 
;Level_Control.c,77 :: 		B1= 0;
	BCF         PORTC+0, 3 
;Level_Control.c,78 :: 		}
	GOTO        L_main8
L_main7:
;Level_Control.c,79 :: 		else if (iNivel >= 150 && iNivel < 200)
	MOVLW       0
	SUBWF       _iNivel+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main22
	MOVLW       150
	SUBWF       _iNivel+0, 0 
L__main22:
	BTFSS       STATUS+0, 0 
	GOTO        L_main11
	MOVLW       0
	SUBWF       _iNivel+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main23
	MOVLW       200
	SUBWF       _iNivel+0, 0 
L__main23:
	BTFSC       STATUS+0, 0 
	GOTO        L_main11
L__main14:
;Level_Control.c,81 :: 		iV1= 0;
	CLRF        _iV1+0 
	CLRF        _iV1+1 
;Level_Control.c,82 :: 		iV2= 1;
	MOVLW       1
	MOVWF       _iV2+0 
	MOVLW       0
	MOVWF       _iV2+1 
;Level_Control.c,83 :: 		iV3= 1;
	MOVLW       1
	MOVWF       _iV3+0 
	MOVLW       0
	MOVWF       _iV3+1 
;Level_Control.c,84 :: 		iB1= 1;
	MOVLW       1
	MOVWF       _iB1+0 
	MOVLW       0
	MOVWF       _iB1+1 
;Level_Control.c,85 :: 		V1= 1;
	BSF         PORTC+0, 0 
;Level_Control.c,86 :: 		V2= 0;
	BCF         PORTC+0, 1 
;Level_Control.c,87 :: 		V3= 0;
	BCF         PORTC+0, 2 
;Level_Control.c,88 :: 		B1= 0;
	BCF         PORTC+0, 3 
;Level_Control.c,89 :: 		}
	GOTO        L_main12
L_main11:
;Level_Control.c,90 :: 		else if (iNivel >= 200)
	MOVLW       0
	SUBWF       _iNivel+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main24
	MOVLW       200
	SUBWF       _iNivel+0, 0 
L__main24:
	BTFSS       STATUS+0, 0 
	GOTO        L_main13
;Level_Control.c,92 :: 		iV1= 0;
	CLRF        _iV1+0 
	CLRF        _iV1+1 
;Level_Control.c,93 :: 		iV2= 0;
	CLRF        _iV2+0 
	CLRF        _iV2+1 
;Level_Control.c,94 :: 		iV3= 1;
	MOVLW       1
	MOVWF       _iV3+0 
	MOVLW       0
	MOVWF       _iV3+1 
;Level_Control.c,95 :: 		iB1= 0;
	CLRF        _iB1+0 
	CLRF        _iB1+1 
;Level_Control.c,96 :: 		V1= 1;
	BSF         PORTC+0, 0 
;Level_Control.c,97 :: 		V2= 1;
	BSF         PORTC+0, 1 
;Level_Control.c,98 :: 		V3= 0;
	BCF         PORTC+0, 2 
;Level_Control.c,99 :: 		B1= 1;
	BSF         PORTC+0, 3 
;Level_Control.c,101 :: 		}
L_main13:
L_main12:
L_main8:
L_main4:
;Level_Control.c,103 :: 		IntToStr(iNivel, sNivel);
	MOVF        _iNivel+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _iNivel+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _sNivel+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_sNivel+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Level_Control.c,104 :: 		Ltrim(sNivel);
	MOVLW       _sNivel+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(_sNivel+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;Level_Control.c,105 :: 		IntToStr(iV1, sV1);
	MOVF        _iV1+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _iV1+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _sV1+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_sV1+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Level_Control.c,106 :: 		Ltrim(sV1);
	MOVLW       _sV1+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(_sV1+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;Level_Control.c,107 :: 		IntToStr(iV2, sV2);
	MOVF        _iV2+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _iV2+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _sV2+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_sV2+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Level_Control.c,108 :: 		Ltrim(sV2);
	MOVLW       _sV2+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(_sV2+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;Level_Control.c,109 :: 		IntToStr(iV3, sV3);
	MOVF        _iV3+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _iV3+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _sV3+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_sV3+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Level_Control.c,110 :: 		Ltrim(sV3);
	MOVLW       _sV3+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(_sV3+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;Level_Control.c,111 :: 		IntToStr(iB1, sB1);
	MOVF        _iB1+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _iB1+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _sB1+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_sB1+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Level_Control.c,112 :: 		Ltrim(sB1);
	MOVLW       _sB1+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(_sB1+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;Level_Control.c,114 :: 		transmiter_data();
	CALL        _transmiter_data+0, 0
;Level_Control.c,115 :: 		}
	GOTO        L_main1
;Level_Control.c,116 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
