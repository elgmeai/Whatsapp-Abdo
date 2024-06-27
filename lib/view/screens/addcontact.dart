import 'package:flutter/material.dart';

import '../component/textfield.dart';

class AddContact extends StatefulWidget {
  AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContact> {
  TextEditingController anEmail = TextEditingController();
  GlobalKey addFriend = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 180,
            child: Image.asset('images/callme.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: addFriend,
            child: Column(
              children: [
                MyWidget(
                  control: anEmail,
                  hint: 'Enter the email',
                  $val: (value) {
                    if (value == null || value == '') {
                      const ScaffoldMessenger(
                          child: SnackBar(content: Text('enter any thing')));
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () => null,
                    child: Container(decoration: const BoxDecoration(color: Color(0xfffA060FF),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                      width: 150,height: 60,
                      
                      child: const Center(
                        child: Text(
                          'add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
