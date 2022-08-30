#line 1 "C:/Users/profb/Documents/Projetos/Programação Aplicada 2/Integração PIC - Indusoft/Controle de Nivel/Micrcontrolador/Level_Control.c"





 unsigned int iV1=0,
 iV2=0,
 iV3=0,
 iB1=0,
 iSensor=0,
 iNivel=0;

 unsigned char sText[100]={" "},
 sV1[7]={""},
 sV2[7]={""},
 sV3[7]={""},
 sB1[7]={""},
 sSensor[7]={""},
 sNivel[7]={""};

void config_io()
 {
 TRISC.RC0=0;
 TRISC.RC1=0;
 TRISC.RC2=0;
 TRISC.RC3=0;
 }
void transmiter_data()
 {
 strcpy(sText,"");
 strcat(sText,"$Dados,");
 strcat(sText,sNivel);
 strcat(sText,",");
 strcat(sText,sV1);
 strcat(sText,",");
 strcat(sText,sV2);
 strcat(sText,",");
 strcat(sText,sV3);
 strcat(sText,",");
 strcat(sText,sB1);
 strcat(sText,",*");
 strcat(sText,"\r\n");
 UART1_Write_Text(sText);
 Delay_ms(200);
 }

void main()
{
 config_io();
 UART1_Init(9600);
 ADC_Init();
 while(1)
 {
 iSensor=ADC_Read(0);
 iNivel= iSensor/4.09;

 if(iNivel < 50)
 {
 iV1= 1;
 iV2= 1;
 iV3= 0;
 iB1= 1;
  PORTC.RC0 = 0;
  PORTC.RC1 = 0;
  PORTC.RC2 = 1;
  PORTC.RC3 = 0;
 }
 else if (iNivel >= 50 && iNivel < 150)
 {
 iV1= 1;
 iV2= 1;
 iV3= 1;
 iB1= 1;
  PORTC.RC0 = 0;
  PORTC.RC1 = 0;
  PORTC.RC2 = 0;
  PORTC.RC3 = 0;
 }
 else if (iNivel >= 150 && iNivel < 200)
 {
 iV1= 0;
 iV2= 1;
 iV3= 1;
 iB1= 1;
  PORTC.RC0 = 1;
  PORTC.RC1 = 0;
  PORTC.RC2 = 0;
  PORTC.RC3 = 0;
 }
 else if (iNivel >= 200)
 {
 iV1= 0;
 iV2= 0;
 iV3= 1;
 iB1= 0;
  PORTC.RC0 = 1;
  PORTC.RC1 = 1;
  PORTC.RC2 = 0;
  PORTC.RC3 = 1;

 }

 IntToStr(iNivel, sNivel);
 Ltrim(sNivel);
 IntToStr(iV1, sV1);
 Ltrim(sV1);
 IntToStr(iV2, sV2);
 Ltrim(sV2);
 IntToStr(iV3, sV3);
 Ltrim(sV3);
 IntToStr(iB1, sB1);
 Ltrim(sB1);

 transmiter_data();
 }
}
