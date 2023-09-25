import 'package:flutter/material.dart';


class Onscren extends StatelessWidget {
  const Onscren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
          Stack(
            children: [
              Container(height: 200,width: 200,decoration: BoxDecoration()
              ,child:Image.asset("assets/imag/city3.jpg",fit: BoxFit.cover,
              ),
              )
            ],
          ),
        
      ),
    );
       
  }
}