import 'package:flutter/material.dart';

import '../component/list_of_chats.dart';
import '../component/widgetStory.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          //////////////////==========================///////////////
          const Row(
            children: [
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'c',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
                  TextSpan(
                      text: 'hats',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17))
                ])),
              ),
              Padding(
                padding: EdgeInsets.only(left: 285),
                child: Icon(Icons.wb_sunny_sharp),
              )
            ],
          ),
          /////////===================================//////////
          const SizedBox(
            height: 10,
          ),
          /////////===================================//////////
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 100,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                widget_story(),
                widget_story(),
                widget_story(),
                widget_story(),
                widget_story(),
                widget_story(),
                widget_story(),
                widget_story(),
                widget_story(),
              ]),
            ),
          ), ////////==============////////////////
          SizedBox(
            height: height / 20,
          ),
          //////////===============///////////
          Container(
            width: width,
            height: height * .75,
            decoration: const BoxDecoration(
              color: Color(0xfffC9F9EC),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 80, top: 10),
              child: listOfChats(),
            ),
          ),
        ],
      ),
    ),
    floatingActionButton: Container(height: 60,width: 60 ,
      decoration: BoxDecoration(shape: BoxShape.circle,
        color:Color.fromARGB(255, 139, 235, 222),),
      
      child: IconButton(onPressed: () => null, icon: Icon(Icons.person_add_alt_1_sharp)),
    
    ));
  }
}


