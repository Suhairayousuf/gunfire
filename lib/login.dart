//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gunfire/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'login.dart';
SharedPreferences Preference;
class Basics extends StatefulWidget {
  const Basics({Key key}) : super(key: key);

  @override
  _BasicsState createState() => _BasicsState();
}

class _BasicsState extends State<Basics> {
   TextEditingController Username;
   TextEditingController Email;
   TextEditingController Password;
   SharedPreferences logindata;
   bool Newuser;

  @override
  void initState(){
    super.initState();
    check_if_already_login();
    Username=TextEditingController(text: '');
    Email=TextEditingController(text: '');
    Password=TextEditingController(text: '');
    SharedPreferences.getInstance().then((value){
      Preference=value;
      String abc =Preference?.getString('Username');
      if(abc!=null&&abc!=""){}
    });
  }
  Widget build(BuildContext context) {
    return Preference==null?
    Center(
      child:CircularProgressIndicator(),
    )
        :Scaffold(
      backgroundColor: Colors.greenAccent,
         body: Container(
         height: 716,
         width: 500,
         decoration: const BoxDecoration(image: DecorationImage
          (
          image: NetworkImage(
              'https://media.istockphoto.com/photos/hands-protecting-personal-data-information-on-tablet-information-and-picture-id1325214557?b=1&k=20&m=1325214557&s=170667a&w=0&h=VV9UeVy2lFtf6Zc5Q128JUoOOmCrl4KhJVDMFSdMn_8='),
          fit: BoxFit.fill,
        )
          ,color: Colors.red,),

        child: Padding(
          padding: const EdgeInsets.only(top: 149),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: TextFormField(
                    controller: Username,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(hintText: 'Username',
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      controller: Email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(hintText: 'Email',
                          border: UnderlineInputBorder(),
                          prefixIcon: Icon(Icons.email)),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      controller: Password,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(hintText: 'Password',
                          border: UnderlineInputBorder(),
                          prefixIcon: Icon(Icons.password)),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                  child: Container(
                      height: 45,
                      width: 250,
                      color: Colors.lightBlueAccent,
                      child:const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      )
                  ),


                ), // InkWell(

                InkWell(
                  onTap: (){
                    Preference?.setString('Username', Username.text);
                    Preference?.setString('Password', Password.text);
                    if(Username.text!=""&& Password.text!="") {
                      logindata.setBool("login",false);
                      logindata.setString("Username",Username.text);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }},
                  child: Container(

                      height: 45,
                      width: 250,
                      color: Colors.blueGrey,
                      child:const Center(
                        child: Text(
                          ' Login ',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      )
                  ),
                ),
                Container(

                    height: 45,
                    width: 250,
                    color: Colors.blueGrey,
                    child:const Center(
                      child: Text(
                        ' Google Sign in ',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    )
                ),



                Text('click here'),
                // Container(
                //   child: TextFormField(
                //     controller: Or click here For sign up using your Google Account ,
                //     keyboardType: TextInputType.text,
                //     decoration: InputDecoration(hintText: 'or Click here for Sign Up using your google Account'),
                //     border :UnderLineInputBorder()
                //   ),
                // ),

              ],
            ),
          ),
        ),
      ),



    );
  }

  Future<void> check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    Newuser =(logindata.getBool('login')??true);
    if(Newuser == false){
   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Home()), (route) => false);

    }
  }
}
