@Anot('sandbox.lib')
library sandbox.lib;

@MirrorsUsed(targets: const[], override: '*')
import 'dart:mirrors';

class Anot{
  final String name;
  const Anot(this.name);
}

void printAllAnotatedLibs(){
  var libs = currentMirrorSystem().libraries;
  libs.forEach((uri, lib){
    lib.metadata.forEach((meta){
      if(meta.reflectee is Anot){
        print(meta.reflectee.name);
      }
    });
  });
}