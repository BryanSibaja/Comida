var datos = []
var correcta = null

function randomize(array, n)
{
    var final = [];
    array = array.filter(function(elem, index, self) {
        return index == self.indexOf(elem);
    }).sort(function() { return 0.5 - Math.random() });

    var len = array.length,
    n = n > len ? len : n;

    for(var i = 0; i < n; i ++)
    {
        final[i] = array[i];
    }

    return final;
}

function presionado(opcion){
    mensaje.activar(opcion === correcta.ingles)
}

function load() {
    mensaje.visible = false;
    var opciones = randomize(datos, 4);
    correcta = opciones[Math.floor(opciones.length * Math.random())];
    mensaje.texto = correcta.ingles
    carta.imagen = correcta.imagen;
    opcion1.texto(opciones[0].ingles);
    opcion2.texto(opciones[1].ingles);
    opcion3.texto(opciones[2].ingles);
    opcion4.texto(opciones[3].ingles);
}
