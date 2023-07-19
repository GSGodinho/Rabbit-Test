 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if other.kid==false and (other.femea==false and self.femea==true)
{
	alarm_set(1,300)
	pregnancy=true;
	idpai=other.id
}
if direcao!=0
{
	if direcao%2==0
		{
			direcao-=1;
		}else
		{
			direcao+=1;
		}
}
