import 'package:flutter/material.dart';
import 'package:hotal2/scren/onscen.dart';
import 'package:hotal2/scren/post.dart';

// ignore: must_be_immutable
class Hotal extends StatelessWidget {
  // const hotal({super.key});
  var category=[
    'fghjk',
    'ghnjm',
    'fgbhnjm',
    'ghjk',
    'fghjmk',
    'hjk,.'
  ];

  Hotal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
       body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ,int index){
                      return InkWell(
                        // o
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const  Onscren()));
                        },
                        child: Container(
                          width: 160,
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                            image: AssetImage("assets/imag/city${index+1}.jpg",
                             ), fit: BoxFit.cover,opacity: 0.8,
                            
                            )
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                child: const Icon(Icons.bookmark_border_outlined,
                                color: Colors.white,
                                size: 30,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: const Text("hotal name",style: 
                                TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                                )),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  )),
                ],
              ),
              const SizedBox(height:20 ,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      for(int i =0;i<6;i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:[ const BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4
                          ),
                          ]
                        ),
                        child: Text(category[i],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      )
                    ],
                  ),
                ) ,
              ),
              const SizedBox(height: 10,),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                  return Padding(padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      InkWell(
                         onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const postasd()));},
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage("assets/imag/city${index+1}.jpg"),
                            fit: BoxFit.cover,opacity: 0.8,
                            )
                          ),
                        ),                  
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("name",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            Icon(Icons.more_vert,size: 30,)
                          ],
                        ),
                        )
                        ,const SizedBox(height: 5,),
                        const Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,
                            size: 20,
                            )
                            ,Text("4.5",style: TextStyle(
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        )
                    ],
                  ),
                  );
                })
            ],
          ),
        ),
       )),
    );
  }
}