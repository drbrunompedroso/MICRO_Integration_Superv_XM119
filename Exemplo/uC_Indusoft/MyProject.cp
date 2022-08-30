#line 1 "C:/Users/profb/Documents/Projetos/Programação Aplicada 2/Integração PIC - Indusoft/Exemplo/uC_Indusoft/MyProject.c"




 unsigned int iS1=0,
 iAnalog=0;

 unsigned char sText[20]={" "},
 sS1[7]={""},
 sAnalog[7]={""};


void config_io()
 {
 TRISB=0x01;
 }
void transmiter_data()
 {


 strcpy(sText,"");
 strcat(sText,"$Dados,");
 strcat(sText,sS1);
 strcat(sText,",");
 strcat(sText,sAnalog);
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
 if( PORTB.RB0 ==1)
 {
 iS1=1;
 }
 else if( PORTB.RB0 ==0)
 {
 iS1=0;
 }
 iAnalog=ADC_Read(0);


 IntToStr(iS1, sS1);
 Ltrim(sS1);

 IntToStr(iAnalog, sAnalog);
 Ltrim(sAnalog);

 transmiter_data();
 }
}
