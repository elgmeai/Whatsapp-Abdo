import 'dart:async';




import '../model/phonenumber.dart';

class PhoneBloc  {

   PhoneBloc._internal();

  static final PhoneBloc _instance = PhoneBloc._internal();

  factory PhoneBloc() {
    return _instance;
  }

  

  late  Phonenumber _phonenumber;
  
  
//  PhoneBloc get instance => _phoneBloc;
 Phonenumber get selectedNumber =>_phonenumber;

  final _phonecontrole = StreamController<Phonenumber>.broadcast();


  Stream<Phonenumber> get phonenumberStream => _phonecontrole.stream;

  

   addnumber(Phonenumber phonenumber) {
   _phonenumber =phonenumber;
    _phonecontrole.sink.add(phonenumber);
  }
  

  
fun(){
  _phonecontrole.close();
}



}
