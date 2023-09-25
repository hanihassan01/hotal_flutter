import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: MediaQuery.of(context).size.height/2,
     padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
     decoration: const BoxDecoration(
      color: Color(0xFFEDF2F6),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40)
      ),

     ),
     child: ListView(children: [
      Padding(padding: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("city name",selectionColor: Color.fromARGB(255, 6, 5, 5),style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.amber,size: 25,),
                  Text("4.5",style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),)
                ],
              )
            ],
          ),
          const SizedBox(height: 25,),
          const Text('esxdrcftvgybhnjm mkjinhubgyvftcd xsdrctfvgybhunijm',
          style: TextStyle(
            color: Colors.black54,fontSize: 16,
          ),textAlign: TextAlign.justify,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             boxShadow: [const BoxShadow( color: Colors.black26,
             blurRadius: 4
             )]
              
            ),
            child: const Icon(Icons.bookmark_add_outlined),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.redAccent,
              boxShadow: [const BoxShadow(
                color: Colors.black,
                blurRadius: 4
              )]
            ),
            child: const Text("book now",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),),
          )
        ],
      ),
      )
     ],),

    );
  }
}