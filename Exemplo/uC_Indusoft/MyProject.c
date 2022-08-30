/* Exemplo de comunicação com PIC + Indusoft Serial*/
#define S1 PORTB.RB0

 //************ Variáveis globais**************//
 unsigned int iS1=0,
              iAnalog=0;
 
 unsigned char sText[20]={" "},
               sS1[8]={""},
               sAnalog[8]={""};
 //*******************************************//
 //*************Funções***********************//
void config_io()
 {
        TRISB=0x01;
 }
void transmiter_data()
 {
 // inserir quantas variáveis forem necessárias para transmissão
 
         strcpy(sText,"");           // Inicio de pacote
         strcat(sText,"$Dados,");    // Indice "DADOS"
         strcat(sText,sS1);          // Envio da primeira variável (S1)
         strcat(sText,",");          // Termo de Separação
         strcat(sText,sAnalog);      // Envio da Segunda variável (AN0)
         strcat(sText,",*");         // Termo de Separação
         strcat(sText,"\r\n");       // Tabulação - quebra de linha
         UART1_Write_Text(sText);    // Envio da sting completa para Serial
         Delay_ms(200);
 }
//*************Laço Principal*****************//
void main() 
{
    config_io();
    UART1_Init(9600); // inicia a comunicação serial em 9600bps
    ADC_Init();       // inicia o canal analógico
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
// *****************Conversão******************//
// converte para string o status do sensor s1
            IntToStr(iS1, sS1);
            Ltrim(sS1);
// converte o valor do canal zero para string
            IntToStr(iAnalog, sAnalog);
            Ltrim(sAnalog);
// Chamada de rotina para transmissão
            transmiter_data();
    }
}