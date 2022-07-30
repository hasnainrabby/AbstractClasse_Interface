abstract class Animel{
  void breath();                                                          // an abstract method.
}

class Person implements Animel{                             //parent/super class. That implement abstract class Animel.
 late String name,nationality;
 Person(this.name, this.nationality);
 @override
  String toString() => "My name is $name\nI am  $nationality";
  @override
  void breath()
  {
   print("A person give oxygen for breath.");            //override abstract method in parent class.
  }
}
abstract class IsFunny
{
  void makePeopleLaugh();                                        //abstract method.
}
class Comedian extends Person implements IsFunny                      //child class.That implement another abstract class IsFunny.
{
  Comedian(String name, String nationality) : super(name, nationality);

  @override
  void makePeopleLaugh()
  {
   print("${name} is a comedian.He comes from ${nationality}.Who makes people to laugh.");
  }
}
class TVshow implements IsFunny{
  @override
  void makePeopleLaugh() {
    print("Miraccle is the funniest TV show in this Sub continent.");
  }

}


main (){
  var antor = new Person("Antor", "Bangladeshi");
  print(antor);

  var imran = new Comedian("Imran", "Bangladeshi");
  imran.makePeopleLaugh();

  var tvshow = new TVshow();
  tvshow.makePeopleLaugh();
}