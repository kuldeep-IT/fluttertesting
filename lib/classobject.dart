
class Parent{
  num lat, lang;

  Parent(this.lat, this.lang);

  //named constructor
  Parent.create(this.lat, this.lang);
}

class Child extends Parent{
  num a;
  //its work same.
  Child(super.lat, super.lang, this.a) : super.create();
  // Child(lat, lang, this.a) : super.create(lat, lang);

@override
  String toString() {
    // TODO: implement toString
  var result = "${lat}, ${lang}, and ${a}";
    return result;
  }
}

main(){
  print("Jai dada");
  var parent = Parent(20.314, -10.00);

  print("parent of lat = ${parent.lat}");
  print("parent of lang = ${parent.lang}");

  var child = Child(123,5,345);
  print("child of lat = ${child.lat}");
  print("child of lang = ${child.lang} and a is ${child.a}");

  print(child.toString());
}