void main(){
  final mySquqre = Square ( side:10);
  mySquqre.side = -5;

  print ('area: ${mySquqre.area }');
}

class Square{
  double _side ;// side * side 

  Square({required double side })
    :_side = side;
  double get area {
    return _side * _side ;
    
  }

  set side( double value ) {
    print ( 'setting new value $value' ) ;
    if ( value < 0 ) throw 'value must be >=0';
    side = value;
  }

  double calculateArea(){
    return _side * _side;
  }
}