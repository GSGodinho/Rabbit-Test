 //gravidez e nascimento
var campo_visao_pai=variable_instance_get(idpai,"campo_visao")
var velocidade_pai=variable_instance_get(idpai,"velocidade")
var mut=random(2)
var campo_visao_bb=((campo_visao+campo_visao_pai)/2)*mut
var mut=random(2)
var velocidade_bb=((velocidade+velocidade_pai)/2)*mut

var bbfemea
var bbsex=irandom(1)
if bbsex==1
{
	bbfemea=true;
}else
{
	bbfemea=false;
}

baby =
{
	velocidade: velocidade_bb,
	campo_visao: campo_visao_bb,
	fome: 100,
  	femea:bbfemea,
	image_xscale:0.2,
	image_yscale:0.2
	
};
instance_create_layer(x,y+40,"instances",Coelho,baby);
pregnancy=false;
idpai=0;