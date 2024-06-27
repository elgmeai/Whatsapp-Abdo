import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[Color(0xfff52F9E8), Color(0xfff3FFAA5)],
              stops: [0.2, 1],
            ),
          ),
          child: ListView(
            children: [
              SizedBox(
                width: width,
                height: height / 10,
                child: ListTile(title:  Center(
                  child: Column(
                    children: [
                      SizedBox(height: height/33,),
                      Text(
                        'nora ahmed',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Text('online',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),)
              ),

              //////////===============///////////
              Container(
                width: width,
                height: height * .835,
                decoration: const BoxDecoration(
                  color: Color(0xfffC9F9EC),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 80, top: 10),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 139, 235, 222),
          ),
          child: IconButton(
              onPressed: () => null,
              icon: const Icon(Icons.person_add_alt_1_sharp)),
        ));
  }
}
