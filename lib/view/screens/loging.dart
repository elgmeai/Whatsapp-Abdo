import 'package:flutter/material.dart';

import 'package:whatsapp_abdo/model/phonenumber.dart';





import '../../bloc/phonenumber_bloc.dart';
import '../../firebase_provider/FirebaseProvider.dart';
import '../component/phene_text_field.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


PhoneBloc phonebloc = PhoneBloc();




  
  bool loadihg = false;

  TextEditingController mobilenumber = TextEditingController();
  
  

  
  @override
  Widget build(BuildContext context) {
    // GlobalKey formkey = GlobalKey();
    MediaQueryData mediaquerydata = MediaQuery.of(context);
    var height = mediaquerydata.size.height;
    var width = mediaquerydata.size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: height / 10,
          ),
          SizedBox(
            height: 250,
            child: Image.asset('images/callme.png'),
          ),
          SizedBox(
            height: height / 16,
          ),
          const Center(
            child: Text(
              'Hello',
              style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 2),
                      color: Color.fromARGB(237, 205, 206, 206),
                    ),
                  ],
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0xf000E4E3)),
            ),
          ),
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height / 30,
                ),
                SizedBox(
                  height: height / 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width / 20,
                  ),
                  child: PhoneTextfield(),
                ),
                SizedBox(
                  height: height / 20,
                ),
                StreamBuilder(stream: phonebloc.phonenumberStream,
                initialData: Phonenumber('') ,
                 builder: (context, snapshot) {
                 var data =snapshot.data;
                 
                 
                  if(data!=null){
                  phonebloc.addnumber(data);
                 return Text(data.number);
                  }
                  return Text('data');
                 }
                 ),
                TextButton(onPressed: () => FireBaseProvider().sendcodetoyourphone(phonebloc.selectedNumber.number,context), child: Text('send'))
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
