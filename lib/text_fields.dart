import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Welcome",style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25
              ),),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                label: Text("Email"),
                hint: Text("abdullah@gmail.com"),
                prefixIcon: Icon(Icons.email),
                suffix: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  label: Text("Password"),
                  hint: Text("123456789"),
                  prefixIcon: Icon(Icons.lock),
                  suffix: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                      borderSide: BorderSide.none
                  )
              ),
            ),
            SizedBox(height: 10,),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){}, child: Text("Forget Password"))),

            SizedBox(height: 10,),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(emailController.text.isEmpty){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Email is Empty")));
                  return;
                }
                if(passwordController.text.isEmpty){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Password is Empty")));
                  return;
                }
                if(passwordController.text.length < 8){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
                  return;
                }
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                  , child: Text("Login")),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account ?"),
                TextButton(onPressed: (){}, child: Text("SignUp"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
