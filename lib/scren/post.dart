import 'package:flutter/material.dart';
import 'package:hotal2/scren/onscen.dart';

class postasd extends StatelessWidget {
  const postasd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:BorderRadius.circular(15) ,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 6
                    )
                  ]
                ),
                child: Icon(Icons.arrow_back,
                size: 28,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Onscren()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:BorderRadius.circular(15) ,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 6
                    )
                  ]
                ),
                child: Icon(Icons.favorite,
                color: Colors.redAccent,
                size: 28,),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}