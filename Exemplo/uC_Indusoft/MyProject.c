/* Exemplo de comunica��o com PIC + Indusoft Serial*/
#define S1 PORTB.RB0

 //************ Vari�veis globais**************//
 unsigned int iS1=0,
              iAnalog=0;
 
 unsigned char sText[20]={" "},
               sS1[8]={""},
               sAnalog[8]={""};
 //*******************************************//
 //*************Fun��es***********************//
void config_io()
 {
        TRISB=0x01;
 }
void transmiter_data()
 {
 // inserir quantas vari�veis forem necess�rias para transmiss�o
 
         strcpy(sText,"");           // Inicio de pacote
         strcat(sText,"$Dados,");    // Indice "DADOS"
         strcat(sText,sS1);          // Envio da primeira vari�vel (S1)
         strcat(sText,",");          // Termo de Separa��o
         strcat(sText,sAnalog);      // Envio da Segunda vari�vel (AN0)
         strcat(sText,",*");         // Termo de Separa��o
         strcat(sText,"\r\n");       // Tabula��o - quebra de linha
         UART1_Write_Text(sText);    // Envio da sting completa para Serial
         Delay_ms(200);
 }
//*************La�o Principal*****************//
void main() 
{
    config_io();
    UART1_Init(9600); // inicia a comunica��o serial em 9600bps
    ADC_Init();       // inicia o canal anal�gico
    while(1)
    {
            if(S1==1)
            {        
                iS1=1;
            }
            else if(S1==0)
            {
                iS1=0;
            }
            iAnalog=ADC_Read(0);
// *****************Convers�o******************//
// converte para string o status do sensor s1
            IntToStr(iS1, sS1);
            Ltrim(sS1);
// converte o valor do canal zero para string
            IntToStr(iAnalog, sAnalog);
            Ltrim(sAnalog);
// Chamada de rotina para transmiss�o
            transmiter_data();
    }
}