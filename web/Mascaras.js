               

function MascaraTelefone(obj) {
switch (obj.value.length) {
	case 1:
		obj.value = "(" + obj.value;
		break;
	case 3:
		obj.value = obj.value + ") ";
		break;	
	case 10:
		obj.value = obj.value + "-";
		break;	
}
}
function Numeros(e){		
                 var tecla;		
                      tecla = (window.event)?event.keyCode:e.which;   		
                         if((tecla>47 && tecla<58 )) {	
                           
                             return true;		
                         }		
                         else if ( tecla==44 || tecla==46 ){ 		
                             return true;		
                         }		
                         else{		
                 alert(" Insira apenas caracteres numericos");
               
             return false;		
             }		
         }