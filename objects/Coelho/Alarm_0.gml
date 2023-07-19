function pos_olhar(x1,y1)
{
	var numpos;
	
	if x1>x and y1>y
		numpos=5;
	else if x1>x and y1<y
		numpos=6;
	else if x1>x and y1==y
		numpos=1;
	else if x1<x and y1>y
		numpos=7;
	else if x1<x and y1<y
		numpos=8;
	else if x1<x and y1==y
		numpos=2;
	else if x1==x and y1<y
		numpos=4;
	else if x1==x and y1>y
		numpos=3;
	else if x1==x and y1==y
		numpos=0;
	return numpos;
}

if fome<=0
{
	instance_destroy();
};



if tempo<=0
{
	direcao=irandom_range(0,8)
	tempo=irandom_range(1,20)
}

if femea==false and kid==false
{
	var lista=ds_list_create();
	if collision_circle_list(x,y,campo_visao,Coelho,false,true,lista,true)>0
	{
		id_femea= lista[| 0 ];
		
		var coelhofemea=variable_instance_get(id_femea,"femea");
		var coelhogravida=variable_instance_get(id_femea,"pregnancy");
		var coelhokid=variable_instance_get(id_femea,"kid");
		if coelhofemea==true and coelhogravida==false and coelhokid=false
		{
			var femeax=variable_instance_get(id_femea,"x");
			var femeay=variable_instance_get(id_femea,"y");
			direcao=pos_olhar(femeax,femeay);
		}
	}
	
}


if fome<80
{
	
	var list=ds_list_create();
	var num=collision_circle_list(x,y,campo_visao,comida,false,true,list,true)
	//if num>=1
	//{
	//	var comidaposx
	//	var comidaposy
		
	//	if !instance_exists(comidaselect) or is_nan(comidaselect)
	//	{
	//		comidaselect=list[|0];
	//		comidaposx=variable_instance_get(comidaselect,"x")
	//		comidaposy=variable_instance_get(comidaselect,"y")
	//	};
		//direcao=pos_olhar(comidaposx,comidaposy);
	//}
}


	switch(direcao)
{
	case 0:
	x=x;
	y=y;
	break;
	
	case 1:
	x+=velocidade;
	break;
	
	case 2:
	x-=velocidade;
	break;
	
	case 3:
	y+=velocidade;
	break;
	
	case 4:
	y-=velocidade;
	break;
	
	case 5:
	x+=velocidade;
	y+=velocidade;
	break;
	
	case 6:
	x-=velocidade;
	y-=velocidade;

	break;
	
	case 7:
	x-=velocidade;
	y+=velocidade;
	break;
	
	case 8:
	x+=velocidade;
	y-=velocidade;
	break;
	
}
fome-=0.5;
tempo-=1;

if kid==true
{
	image_xscale+=0.08
	image_yscale+=0.08
}



alarm_set(0,10)