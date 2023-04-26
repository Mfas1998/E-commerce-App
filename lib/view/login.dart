import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/view/home_screen.dart';
import 'package:e_commerce/view/register.dart';
import 'package:e_commerce/widgets/custome_size_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

//bool get isEmpty;
class _LoginState extends State<Login> {
  //String
  //final _emailContorller = TextEditingController();
  //final _passwordController = TextEditingController();
  // final _googleController = TextEditingController();
  // final _facebookController = TextEditingController();
  // final _formkey = GlobalKey<FormState>();
  //Future HomeScreen ()async {
  // await firebaseAuth.in
  //}
  // @override
  // void dispose() {
  // super.dispose();
  // _emailContorller.dispose();
  //_passwordController.dispose();
  // _googleController.dispose();
  // _facebookController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          Container(
            // color: AppColors.whiteColor,
            height: MediaQuery.of(context).size.height * 3,
            child: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(
                            'assets/images/image5.jpg',
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Welcome to E-com',
                        style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),

                      Text('sign in to continue'),
                      SizedBox(height: 15),

                      SizedBox(height: 15),

                      //email textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(2)),
                          child: TextFormField(
                              // controller: _emailContorller,
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            //icon: Icons(em),
                            labelText: ' Your Email',
                            hintText: 'ex:yayngs@gmail.com',
                          )),
                        ),
                      ),
                      // Icon(Icons.email),

                      SizedBox(height: 10),

                      //password textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                              //validator: (value) => value.isEmpty?,
                              // controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // icon (Icons.em),
                                labelText: 'Enter Password',
                                hintText: 'Password',
                              )),
                        ),
                      ),

                      SizedBox(height: 15),

                      // facebook textfield

                      //sign in botton
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Center(
                                child: Text(
                              'sign in',
                              style: TextStyle(
                                  color: AppColors.whiteColor, fontSize: 20),
                            )),
                          ),
                        ),
                      ),

                      SizedBox(height: 25),
                      //google textfield
                      //google textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                              // controller: _googleController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                //icon: (Icons.padding_outlined),
                                labelText: 'Login with Google',
                                hintText: 'Login with Google',
                              )),
                        ),
                      ),
                      SizedBox(height: 25),
                      // facebook textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(5)),
                          // Icon(Icons.arrow_back),
                          child: TextFormField(
                              // controller: _facebookController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // Icon (Icon.ic_),
                                labelText: 'Login with Facebook',
                                hintText: 'Login with Facebook',
                              )),
                        ),
                      ),

                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ),
                      // Icon(Icons.password),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont have a account?'),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text(
                              'register',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          //Icon(Icons.email)
                        ],
                      ),
                      //Icon(Icons.facebook)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
