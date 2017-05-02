               

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
    
function Letras(){
	tecla = event.keyCode;
	if (tecla >= 33 && tecla <= 64 || tecla >= 91 && tecla <= 93 || tecla >= 123 && tecla <= 159 || tecla >= 162 && tecla <= 191 ){ 
	alert("DIGITE APENAS LETRAS");  

        return false;
	}else{
	   return true;
	}
}

 function maskRG(RG) {
 	var evt = window.event;
 	kcode=evt.keyCode;
 	if (kcode == 8) return;
 	if (RG.value.length == 2) { 
                RG.value = RG.value + '.'; 
            }else if (RG.value.length == 6) {
                    RG.value = RG.value + '.'; 
                } else if (RG.value.length == 10) { RG.value = RG.value + '-'; 
                }
 }
 
 function maskCPF(CPF) {
 	var evt = window.event;
 	kcode=evt.keyCode;
 	if (kcode == 8) return;
 	if (CPF.value.length == 3) {
                CPF.value = CPF.value + '.'; 
            } else if (CPF.value.length == 7) {
                     CPF.value = CPF.value + '.'; 
                 } else if (CPF.value.length == 11) {
                            CPF.value = CPF.value + '-';
 }
 }