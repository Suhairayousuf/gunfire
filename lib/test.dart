import 'package:flutter/material.dart';
import 'package:gunfire/single.dart';
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Map<String,dynamic>>Popular=[
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHujIJnV7gW8BLLgJcxzdTcL0PS2jYPeYQ6g&usqp=CAU',
      'text':'Gunfire ranger',
      'text2':'action Charector',
      'color':Colors.red,
      'views':'9.8',
      'deshead':'gunfire isis an american manga style first person hero shooting game developed by hi raze',
    },
    {
      'image':'https://www.allkeyshop.com/blog/wp-content/uploads/gunfire-reborn-1.jpg',
      'text':'Airborne ranger',
      'text2':'action Charector',
      'color':Colors.purple,
      'views':'9.8',
      'deshead':'gunfire isis an american manga style first person hero shooting game developed by hi raze',
    },
    {
      'image':'https://www.allkeyshop.com/blog/wp-content/uploads/gunfire-reborn-3.jpg',
      'text':'Skitari ranger',
      'text2':'action Charector',
      'color':Colors.green,
      'views':'9.8',
      'deshead':'gunfire isis an american manga style first person hero shooting game developed by hi raze',
    },
  ];
  List<String>recommend=[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHujIJnV7gW8BLLgJcxzdTcL0PS2jYPeYQ6g&usqp=CAU',
    'https://www.allkeyshop.com/blog/wp-content/uploads/gunfire-reborn-1.jpg',
    'https://www.allkeyshop.com/blog/wp-content/uploads/gunfire-reborn-1.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHujIJnV7gW8BLLgJcxzdTcL0PS2jYPeYQ6g&usqp=CAU',


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 50,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text('Home',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Colors.white),),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  child:
                  Icon(Icons.search,size: 40,color: Colors.black,),),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length:4,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  const TabBar(
                    labelPadding: EdgeInsets.only(right: 30,left: 30),
                    labelColor: Colors.yellow,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    tabs: [

                      Tab(text: 'Popular',),
                      Tab(text: 'New in',),
                      Tab(text: 'Action '),
                      Tab(text: 'Charectoristics '),
                    ],
                  ),
                  Expanded(child:TabBarView(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height:MediaQuery.of(context).size.height*0.45,
                            child: ListView.builder(
                                itemCount:Popular.length,
                                padding: EdgeInsets.all(10),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index) {
                                  Map<String, dynamic>item=Popular[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Single(
                                          image: item['image'],
                                          text: item['text'],
                                          views: item['views'],
                                          deshead:item['deshead'],

                                        )));
                                      },
                                      child: Container(
                                        width:MediaQuery.of(context).size.width*0.6,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            image: DecorationImage(
                                                image: NetworkImage(item['image']),fit: BoxFit.fill
                                            )
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.4),
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Expanded(child: SizedBox()),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 5,right: 10),
                                                        child: CircleAvatar(
                                                          backgroundColor: item['color'],
                                                          radius: 5,
                                                        ),
                                                      ),

                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(item['text'],
                                                            style: TextStyle(
                                                                color: Colors.white,fontSize: 17,
                                                                fontWeight: FontWeight.bold
                                                            ),),
                                                          Text(item['text2'],
                                                            style: TextStyle(
                                                              color: Colors.white,fontSize: 13,

                                                            ),),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  )),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,10,15,10),
            child: Text('Recommend to you',style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20,
            ),),
          ),
          Container(
            height:MediaQuery.of(context).size.height*0.15,

            child: ListView.builder(
                itemCount:recommend.length,
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index) {
                  String image = recommend[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0,),
                    child: Container(
                      width:MediaQuery.of(context).size.width*0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(image),fit: BoxFit.fill
                          )
                      ),
                    ),
                  );
                }
            ),
          ),
          Divider(color: Colors.white,),

        ],
      ),
    );
  }
}
