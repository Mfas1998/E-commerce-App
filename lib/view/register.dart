
import 'package:e_commerce/view/home_screen.dart';
import 'package:e_commerce/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import '../core/utils/app_colors.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //final _emailContorller = TextEditingController();
  //final _passwordController = TextEditingController();
  //final _googleController = TextEditingController();
  // final _facebookController = TextEditingController();

  //@override
  //void dispose() {
  //super.dispose();
  //_emailContorller.dispose();
  //_passwordController.dispose();
  //oogleController.dispose();
  //_facebookController.dispose();
  //}

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
                        'Let`s Get Started',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),

                      Text('Create an new account'),
                      SizedBox(height: 15),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextField(
                              //  controller: _googleController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                //icon: (Icons.padding_outlined),
                                labelText: 'Enter Your Name',
                                hintText: 'Full Name',
                              )),
                        ),
                      ),
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
                              // controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // icon (Icons.em),
                                labelText: 'Password',
                                hintText: 'Enter Password',
                              )),
                        ),
                      ),

                      SizedBox(height: 15),

                      // facebook textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(5)),
                          // Icon(Icons.arrow_back),
                          child: TextField(
                              //  controller: _facebookController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // Icon (Icon.ic_),

                                labelText: 'Password Again',
                                hintText: 'Enter Password Again',
                              )),
                        ),
                      ),

                      SizedBox(height: 20),

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
                              'sign up',
                              style: TextStyle(
                                  color: AppColors.whiteColor, fontSize: 20),
                            )),
                          ),
                        ),
                      ),

                      SizedBox(height: 25),
                      //google textfield

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont have a account?'),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text(
                              'login',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
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
