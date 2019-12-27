#include <stdio.h>
int  SAConnect(char *, char *, char *, char *, char *);
long SACommand(int, char *, char *);
long SAGetNext(int, char *);
long SADisconnect(int, char *);

int main (void)
{
int   SocketNum;
long  QtdeRegs, j;
char  Area[5000];
FILE *Arq;
Arq = fopen ("tsqlada.log", "wt");
SocketNum = SAConnect("12805865839", "1960cope(*","SIPAC-WEB-D", "10.3.10.1",Area); 
/*
if ((SocketNum = SAConnect("00000000000", "SENHA     ", "EXTRCAD ", "10.3.10.1", Area)) >= 0) 
   {
      QtdeRegs = SACommand (SocketNum, "SELECT NO MA FROM 002.111     
       WHERE NI = 00000001",  area);
      fprintf(Arq, "%s\n", Area);                      // grava a resposta do select
      for (; QtdeRegs; QtdeRegs--)                   //  loop para a leitura de registros
            {  k=SAGetNext (SocketNum, Area);     //  busca o próximo registro
                printf("%s\n", area);                           //  imprime o registro na tela
                fprintf(Arq, "%s\n", Area);                 //  grava o registro no arquivo
            }
   }
*/
SADisconnect (SocketNum, Area);              // desconecta o SQLAda 
fclose(Arq);                                             //  fecha arquivo de saida
printf ("Return Code: %d\n", SocketNum);
return(SocketNum);
}

