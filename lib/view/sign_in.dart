import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stockat/view/sign_up.dart';

import '../constants.dart';
import '../view_model/auth_view_model.dart';
import 'forget_password_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var controller = Get.put(AuthViewModel());
  // late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset('videos/vid.mp4')
    //   ..initialize().then((value) {
    //     _controller.play();
    //     _controller.setLooping(false);
    //     setState(() {});
    //   });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    setState(() {
      // _controller.dispose();
    });
  }

  var isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        opacity: .5,
        color: Colors.grey,
        progressIndicator: const CircularProgressIndicator(),
        dismissible: true,
        inAsyncCall: isloading,
        child: GetBuilder<AuthViewModel>(
          init: AuthViewModel(),
          builder: (_) => Stack(
            children: [
              // BackdropFilter(
              //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              //   child: SizedBox.expand(
              //     child: FittedBox(
              //       fit: BoxFit.cover,
              //       child: SizedBox(
              //         width: MediaQuery.of(context).size.width,
              //         height: MediaQuery.of(context).size.height,
              //         child: VideoPlayer(_controller),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                width: Get.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Get.height * .25,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const []),
                        width: Get.width * .9,
                        // height: Get.height * .55,
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Welcome',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: mainColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Sign in to continue',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * .05,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  controller.email = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter email';
                                  }

                                  // regx
                                  const pattern =
                                      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
                                  final regExp = RegExp(pattern);
                                  if (!regExp.hasMatch(value)) {
                                    return 'Please enter valid email';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  controller.password = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  // if have white space
                                  if (value.contains(' ')) {
                                    return 'password must not contain white space';
                                  }
                                  // have to be more than 8 char
                                  if (value.length < 8) {
                                    return 'Password must be more than 8 char';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(const ForgetPasswordPage());
                                },
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: const Text(
                                    'forget password?',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * .05,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      isloading = true;
                                      formKey.currentState!.save();
                                      if (formKey.currentState!.validate()) {
                                        controller.signIn();
                                        isloading = false;
                                      }
                                      isloading = false;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: mainColor,
                                      fixedSize:
                                          Size.fromWidth(Get.width * .8)),
                                  child: const Text('SIGN IN'))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .05,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(SignUp());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: const Text(
                            'New Customer',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
