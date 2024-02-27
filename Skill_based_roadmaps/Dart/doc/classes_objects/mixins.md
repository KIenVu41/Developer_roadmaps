Mixins are a way of defining code that can be reused in multiple class hierarchies. They are intended to provide member implementations en masse.

To use a mixin, use the with keyword followed by one or more mixin names. The following example shows two classes that use mixins:
```
class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}
```
To define a mixin, use the mixin declaration. In the rare case where you need to define both a mixin and a class, you can use the mixin class declaration.

Mixins and mixin classes cannot have an extends clause, and must not declare any generative constructors.
```
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
```
Sometimes you might want to restrict the types that can use a mixin. For example, the mixin might depend on being able to invoke a method that the mixin doesn’t define. As the following example shows, you can restrict a mixin’s use by using the on keyword to specify the required superclass:
```
class Musician {
  // ...
}
mixin MusicalPerformer on Musician {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer {
  // ...
}
```
In the preceding code, only classes that extend or implement the Musician class can use the mixin MusicalPerformer. Because SingerDancer extends Musician, SingerDancer can mix in MusicalPerformer.

# class, mixin, or mixin class?
**Version note: The mixin class declaration requires a language version of at least 3.0.**

A mixin declaration defines a mixin. A class declaration defines a class. A mixin class declaration defines a class that is usable as both a regular class and a mixin, with the same name and the same type.

Any restrictions that apply to classes or mixins also apply to mixin classes:
* Mixins can’t have extends or with clauses, so neither can a mixin class.
* Classes can’t have an on clause, so neither can a mixin class.
## abstract mixin class
You can achieve similar behavior to the on directive for a mixin class. Make the mixin class abstract and define the abstract methods its behavior depends on:
```
abstract mixin class Musician {
  // No 'on' clause, but an abstract method that other types must define if 
  // they want to use (mix in or extend) Musician: 
  void playInstrument(String instrumentName);

  void playPiano() {
    playInstrument('Piano');
  }
  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician { // Use Musician as a mixin
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName beautifully');
  }  
} 

class Novice extends Musician { // Use Musician as a class
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName poorly');
  }  
} 
```
By declaring the Musician mixin as abstract, you force any type that uses it to define the abstract method upon which its behavior depends.

This is similar to how the on directive ensures a mixin has access to any interfaces it depends on by specifying the superclass of that interface.