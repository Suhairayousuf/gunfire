//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Single extends StatefulWidget {
  final String image;
  final String text;
  final String views;
  final String deshead;

  const Single({Key key, this.image, this.text, this.views, this.deshead,}) : super(key: key);

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
        Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.55,
        decoration: BoxDecoration(
            image: DecorationImage(
               image: NetworkImage(widget.image),fit: BoxFit.fill
            )
        ),

      ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.5,
              ),
              Expanded(child:
              Container(
                  width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ), child:Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Text(widget.text,style: TextStyle(color: Colors.white,fontSize: 30)),
                          SizedBox(width: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(widget.views,style: TextStyle(color: Colors.yellow,fontSize: 20)),
                              Icon(Icons.star,size: 30,color: Colors.yellow,),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration:BoxDecoration(color: Colors.white.withOpacity(0.2)),
                          child: Text('Action',style: TextStyle(color: Colors.blue,fontSize: 20),),
                          ),
                          Container(
                            decoration:BoxDecoration(color: Colors.white.withOpacity(0.2)),
                          child:Text('charecter',style: TextStyle(color: Colors.red,fontSize: 20),),
                          ),
                          Container(
                              decoration:BoxDecoration(color: Colors.white.withOpacity(0.2)),
                              child: Text('Action',style: TextStyle(color: Colors.purple,fontSize: 20),))
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment:CrossAxisAlignment.center ,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.save_alt,size: 20,color: Colors.white,),
                              Text('4394',style: TextStyle(color: Colors.white,fontSize: 10)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite_border,size: 20,color: Colors.white,),
                              Text('432',style: TextStyle(color: Colors.white,fontSize: 10)),
                            ],
                          ),
                          Row(

                            children: [
                              Icon(Icons.timer,size: 20,color: Colors.white,),
                              Text('2022/12/09',style: TextStyle(color: Colors.white,fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Introduction',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 15,right: 20),
                        child: Text(widget.deshead,style: TextStyle(color: Colors.white,fontSize: 20)),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(

                            height: 50,
                            width: 270,
                            decoration: BoxDecoration( color: Colors.yellow,
                             borderRadius: BorderRadius.circular(10)
                               ),
                            child: Center(child: Text('download',style: TextStyle(fontWeight: FontWeight.bold),)),

                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration( color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.favorite_border),
                          ),
                        ],
                      ),


                    ],
                  ),
                )
               ),
              )],
          ),

      ],
    )
    );
  }
}
