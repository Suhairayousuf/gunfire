import 'package:flutter/material.dart';
import 'package:gunfire/user.dart';

class Test1 extends StatefulWidget {

  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {

  List<Map<String,dynamic>>games=[
  {
  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHujIJnV7gW8BLLgJcxzdTcL0PS2jYPeYQ6g&usqp=CAU',
  'text':'King War',
    'deshead':'this is the royal war with you as the core and come and be king',
    'color':Colors.red,
    'views':'4321',
  },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQClRJwDi3FONgHK1UGTIM7VgBbL1YFOppabA&usqp=CAU',
      'text':'Lolo Diary War',
      'deshead':'this is the royal war with you as the core and come and be king',
      'color':Colors.red,
      'views':'2341',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHujIJnV7gW8BLLgJcxzdTcL0PS2jYPeYQ6g&usqp=CAU',
      'text':'King War',
      'deshead':'this is the royal war with you as the core and come and be king',
      'color':Colors.red,
      'views':'4321',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHujIJnV7gW8BLLgJcxzdTcL0PS2jYPeYQ6g&usqp=CAU',
      'text':'King War',
      'deshead':'this is the royal war with you as the core and come and be king',
      'color':Colors.red,
      'views':'4321',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHujIJnV7gW8BLLgJcxzdTcL0PS2jYPeYQ6g&usqp=CAU',
      'text':'King War',
      'deshead':'this is the royal war with you as the core and come and be king',
      'color':Colors.red,
      'views':'4321',
    },
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Filter',style: TextStyle(color: Colors.white,fontSize: 30),),
        actions: [ Icon(Icons.menu),

        ],
      ),
      endDrawer: Drawer(

      ),
      body:
              ListView.builder(
                  itemCount:games.length,
                   itemBuilder: (context,index) {
                    Map<String,dynamic>item = games[index];
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                  image: NetworkImage(item['image']),fit: BoxFit.fill
                                  )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(item['text'],
                                          style: TextStyle(
                                              color: Colors.white,fontSize: 17,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        Row(mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.local_fire_department_rounded,color: Colors.red,),
                                            Text(item['views'],
                                              style: TextStyle(
                                                  color: Colors.red,fontSize: 15,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ],
                                        ),

                                      ],
                                    ),
                                    Text(item['deshead'],
                                      style: TextStyle(
                                          color: Colors.white,fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ],
                                ),
                              ),




                            ],
                          ),SizedBox(height: 10,),
                          Divider(color: Colors.white,),
                        ],
                      ),
                    );

    },
      )
    );
  }
}
