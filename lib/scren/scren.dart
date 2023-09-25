import 'package:flutter/material.dart';
import 'package:hotal2/hotal.dart';

class welcom extends StatelessWidget {
  const welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/imag/bg.jpg"),
        fit: BoxFit.cover,opacity: 0.7,
        )
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(child:Padding(
          padding:EdgeInsets.symmetric(vertical: 65,horizontal: 25),
          child: Column(
            children: [
              Text("Enjoy",style: TextStyle(
                color: Colors.white54,fontSize: 35,
                fontWeight: FontWeight.bold,letterSpacing: 1.5,
              ),
              ),
              SizedBox(height: 5,),
              Text("the hotal",style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 35,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5
              ),)
             , SizedBox(height: 15,),
              SizedBox(height: 30),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Hotal(), ));
              },
              child: Ink(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.arrow_forward_ios,color: Colors.black,
                size: 20,
                ),
              ),
              )

            ],
          ),
           ) 
        
        ),
      )
    );
  }
}