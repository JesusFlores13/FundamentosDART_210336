void main() {


//FUNCIONES
//1. Llamado a una Función Básica

    greetEveryone();
//2.1 LLamado a una funcion que retorna un valor
//2.1 Si no deseamos almacenar el valor, se invoca normalmente
    print("Hoy es el dia numero  ${getDayNumber()}");
//2.2 Necesitamos almacenar el valor retornado para utilizar su
// valor en otras operaciones del programa

    final numeroDia = getDayNumber();
    print("En 3 dias estaremos a ${(numeroDia+3)}");
//3. Llamado de una funcion con parametros  
    print(greetSomeone("Jonathan"));
//3.1 Y que pasa si intentamos
    print(greetSomeone(4));
    print(greetSomeone(-312));
    print(greetSomeone(3.1415));
    print(greetSomeone(true));

//3.2 
    // print(greetSomeoneTyped(4));
    // print(greetSomeoneTyped(-312));
    // print(greetSomeoneTyped(3.1415));
    // print(greetSomeoneTyped(true));
    print(greetSomeoneType("Hugo Sánchez"));

//4. Llamado de Funciones con varios parámetros posicionales
print(greetSomeoneHourOfDay("Jesus", 10));

print(greetSomeoneHourOfDay("Jose", null));

print(greetSomeoneHourOfDay("Maria"));

//5 Funciones LAMDA, ANONIMAS, ARROW FUNCTIONS, FUNCIONES FLECHAS
//Las funciones lambda, tambien conocidas como funciones anonimas o funciones flecha
// se ejecutan de manera simple y no ffrecuente en la ejecucion de un programa o sistema 
// en DART estas funciones solo pueden terner unsa sola instruccion para usar el operador =>

final double costoTotal;
var calculaTotalCarrito = (double productQuantity, double
productPrice, double percentageDiscount) => (productQuantity* productPrice)*
((100-percentageDiscount)/100);


double cantidad = 3.180;
double precio = 1725.10;
double descuento = 8;


print("""
Costo del producto: ${precio}
Cantidad solicitada: ${cantidad}
Descuento Obtenido: ${descuento}
---------------------------------------------------------------------------------------------------
Costo Total: ${calculaTotalCarrito(cantidad, precio, descuento)}
""");


//6. Llamado de una Funcion con parametros nombrados 
print(infoCarListStatus(buyerName: "Gabriela"));
//6.1 La
}

//.1 Funciones sin parametros y sin retorno de valor
greetEveryone() //<- Dynamic
{
    print("Hola a todos y todas desde DART");
}


//2. Funciones que retornan valores
int getDayNumber() //<- Retorna un entero
{
    DateTime now = DateTime.now();
    return now.day;
}

//3.  Funciones que retornen al menos un parametro (Sin tipificacion)
 String greetSomeone(personName)
 {
    return("Hola, ${personName}");
 }

//3.1 Funciones que recibe parametros tipificados 
 String greetSomeoneType( String personName)
 {
    return("Hola, ${personName}");
 }

 //4. Funciones que recibe mas de un parametro
 String greetSomeoneHourOfDay(String personName, [int? hourDay])
 {

    String greeting;

    hourDay ??= DateTime.now().hour;
    print("Hora: ${hourDay}");

    if (hourDay >= 6 && hourDay < 12) {
        greeting = "Buenos Días";
    } else if (hourDay >= 12 && hourDay < 18) {
        greeting = "Buenas Tardes";
    } else {
        greeting = "Buenas Noches";
    }


    return "${greeting}, ${personName}";
 }
//6. FUNICONES CON PARAMETROS NOMBRADOS
String infoCarListStatus({required String buyerName, double amountCarList = 0.0, String status = })

{
    return "El carrito de compras de : ${buyerName}, tiene un total de \$${amountCarList} y actualmente esta en estatus: ${status}"
}