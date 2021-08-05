import  'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydesings/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller =  TextEditingController();

  var passwordcontroller =  TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool issequre = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
              Icons.menu
          ),
        ),
        title: Text(
          "simple login page",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
                Icons.person_pin
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
                Icons.notification_important
            ),
          )
        ],
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formkey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                          Icons.email
                      ),
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty)
                        return 'this field is required';

                    },
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            issequre = !issequre;

                          });



                        },
                        icon: Icon(
                          issequre ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      labelText: "password",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText:issequre ,
                    validator: (value){
                      if(value!.isEmpty)
                        return 'this field is required';

                    },
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: "login",
                    function: (){
                      if(formkey.currentState!.validate())
                      {
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      }
                      return null;
                    },

                    isupper: false,
                    color: Colors.redAccent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                          'Don\'t have account ?'
                      ),
                      TextButton(
                        onPressed:(){


                        },
                        child: Text(
                          'Register now.',
                          style: TextStyle(
                              color: Colors.redAccent
                          ),
                        ),

                      ),
                    ],

                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
