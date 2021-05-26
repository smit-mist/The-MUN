import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/logo.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isLoading = false;
  String email;
  int index = 0;
  List<String> messageToDisplay = [
    'Change your Password',
    'Enter OTP',
    'Create new Password'
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    List<Widget> toDisplay = [
      Container(
        width: double.infinity,
        height: h * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (change) {
                setState(() {
                  email = change;
                });
              },
              decoration: InputDecoration(
                hintStyle: robotoRegular(
                    size: 12, color: Colors.black.withOpacity(0.3)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                hintText: 'Email id',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                filled: true,
                fillColor: kGreyShade,
              ),
              cursorColor: Colors.black,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Invalid Email-id!',
              style: robotoRegular(size: 12, color: kRedShade),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Please make sure you input an Email-id which has an existing MyNextMUN account.',
              style: robotoMedium(size: 11, color: kIconShade),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index++;
                    index %= 3;
                  });
                },
                child: Container(
                  width: w * (76 / kScreenWidth),
                  height: h * (30 / kScreenHeight),
                  child: Center(
                    child: Text(
                      'Submit',
                      style:
                          robotoRegular(size: 16).copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: w * 0.85,
        height: h * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the OTP sent to you on your registered Email-id',
              style: robotoMedium(size: 10),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (change) {
                setState(() {
                  email = change;
                });
              },
              decoration: InputDecoration(
                hintStyle: robotoMedium(
                    size: 12, color: Colors.black.withOpacity(0.3)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                hintText: 'Enter OTP',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                filled: true,
                fillColor: kGreyShade,
              ),
              cursorColor: Colors.black,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Incorrect OTP',
              style: robotoRegular(size: 10, color: kRedShade),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index++;
                    index %= 3;
                  });
                },
                child: Container(
                  width: w * (120 / kScreenWidth),
                  height: h * (30 / kScreenHeight),
                  child: Center(
                    child: Text(
                      'Confirm OTP',
                      style:
                          robotoRegular(size: 16).copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.black.withOpacity(0.3),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Did not Recieve an Email?',
                  style: robotoLight(size: 10),
                ),
                Spacer(),
                Text(
                  'We can always ',
                  style: robotoLight(size: 10),
                ),
                Text(
                  'Resend the Email ',
                  style: robotoLight(size: 10).copyWith(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
                Text(
                  'to you!',
                  style: robotoLight(size: 10),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: w * 0.85,
        height: h * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: h * (70 / kScreenHeight),
              decoration: BoxDecoration(
                color: kGreyShade,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: h * (34 / kScreenHeight),
                    child: TextField(
                      onChanged: (change) {
                        setState(() {
                          email = change;
                        });
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.blue,
                        ),
                        hintStyle: robotoRegular(
                            size: 12, color: Colors.black.withOpacity(0.3)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Password',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        fillColor: kGreyShade,
                        filled: true,
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    color: kGreyShade,
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        child: Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * (34 / kScreenHeight),
                    child: TextField(
                      onChanged: (change) {
                        setState(() {
                          email = change;
                        });
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.blue,
                        ),
                        hintStyle: robotoRegular(
                            size: 12, color: Colors.black.withOpacity(0.3)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Confirm Password',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        fillColor: kGreyShade,
                        filled: true,
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7),
            Text(
              'Invalid Password!',
              style: robotoRegular(size: 10, color: kRedShade),
            ),
            //  SizedBox(height: 2,),
            Text(
              'Password should be atleast 6 characters long and should include atleast 1 special character. Ex: @,\$,%,&,!.',
              style: robotoRegular(size: 11, color: kSimpleTextShade),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index++;
                    index %= 3;
                  });
                },
                child: Container(
                  width: (70/kScreenWidth)*w,
                  height: (30/kScreenHeight)*h,
                  child: Center(
                    child: Text(
                      'Submit',
                      style:
                          robotoRegular(size: 16).copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (25 / kScreenWidth) * (w),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MUNLogo(),
                SizedBox(
                  height: h * (21 / kScreenHeight),
                ),
                Text(
                  messageToDisplay[index],
                  style: robotoLight(size: 25),
                ),
                SizedBox(height: h * (12 / kScreenHeight)),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stepper(
                      type: StepperType.vertical,
                      controlsBuilder: (BuildContext context,
                          {VoidCallback onStepContinue,
                          VoidCallback onStepCancel}) {
                        return Row(
                          children: <Widget>[
                            Container(
                              child: null,
                            ),
                            Container(
                              child: null,
                            ),
                          ],
                        );
                      },
                      physics: ScrollPhysics(),
                      //   currentStep: _currentStep,
                      //   onStepTapped: (step) => tapped(step),
                      //   onStepContinue:  continued,
                      //     onStepCancel: cancel,
                      steps: <Step>[
                        Step(
                          state: index == 0
                              ? StepState.editing
                              : StepState.complete,
                          isActive: index == 0 ? true : false,
                          title: Text(
                              'Enter the Email-id associated with your MyNextMUN account.',
                              style: robotoMedium(size: 12).copyWith(
                                  color:
                                      index == 0 ? Colors.black : Colors.grey)),
                          content: Column(),
                        ),
                        Step(
                          state: index == 1
                              ? StepState.editing
                              : index < 1
                                  ? StepState.disabled
                                  : StepState.complete,
                          title: Text(
                            'An autogenerated OTP will be sent to the registered Email-id.',
                            style: robotoMedium(size: 12).copyWith(
                                color: index == 1 ? Colors.black : Colors.grey),
                          ),
                          isActive: index == 1 ? true : false,
                          content: Column(),
                        ),
                        Step(
                          state: index == 2
                              ? StepState.editing
                              : index < 2
                                  ? StepState.disabled
                                  : StepState.complete,
                          title: Text('Use the OTP to reset your password',
                              style: robotoMedium(size: 12).copyWith(
                                  color:
                                      index == 2 ? Colors.black : Colors.grey)),
                          content: Column(),
                          isActive: index == 2 ? true : false,
                        ),
                      ],
                    ),
                    toDisplay[index],
                  ],
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//onPressed: () async {
//   print(email);
//   setState(() {
//     isLoading = true;
//   });
//   print(email);
//   try {
//     print('=============> here');
//     await _auth
//         .sendPasswordResetEmail(
//             email: email)
//         .then((value) => {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext
//                     context1) {
//                   return AlertDialog(
//                     title: Text(
//                       'Email sent successfully',
//                       style: TextStyle(
//                         fontFamily:
//                             'Helvetica',
//                         fontSize: 18,
//                         fontWeight:
//                             FontWeight
//                                 .bold,
//                         color: kGreyShade,
//                       ),
//                     ),
//                     content: Text(
//                       'A password reset email has been sent to the provided email',
//                       style: TextStyle(
//                         fontFamily:
//                             'Helvetica',
//                         fontSize: 16,
//                         color: kGreyShade,
//                       ),
//                     ),
//                     actions: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.pushNamedAndRemoveUntil(
//                               context,
//                               'login',
//                               (route) =>
//                                   false);
//                         },
//                         child: Text(
//                           'Done',
//                           style:
//                               TextStyle(
//                             fontFamily:
//                                 'Helvetica',
//                             fontSize: 16,
//                             color:
//                                 kBlueShade,
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             });
//     setState(() {
//       email = "";
//
//       isLoading = false;
//     });
//   } catch (e) {
//     print('catch block');
//     print('==============>>');
//     print(e);
//     Scaffold.of(context).showSnackBar(
//       SnackBar(
//         content:
//             Text('Something went wrong'),
//       ),
//     );
//   }
// },

/////// This is just Pressed
// Now UI
//Center(
//   child: Container(
//     width: w * 0.85,
//     height: h * 0.3,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         TextField(
//           onChanged: (change) {
//             setState(() {
//               email = change;
//             });
//           },
//           decoration: InputDecoration(
//             hintStyle: robotoMedium(size:12).copyWith(color: Colors.grey),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(3),
//               borderSide: BorderSide(
//                 width: 0,
//                 style: BorderStyle.none,
//               ),
//             ),
//             hintText: 'Email id',
//             contentPadding: EdgeInsets.symmetric(
//                 horizontal: 15, vertical: 8),
//             filled: true,
//             fillColor: kGreyShade.withOpacity(0.15),
//             focusColor: kGreyShade,
//           ),
//           cursorColor: Colors.black,
//         ),
//         SizedBox(
//           height: h * 0.02,
//         ),
//         Text(
//           'Please make sure you input an Email-id which has an existing MyNextMUN account.',
//           style: robotoMedium(size:12).copyWith(color: Colors.grey),
//         ),
//         SizedBox(
//           height: h * 0.04,
//         ),
//         Center(
//           child: isLoading
//               ? CircularProgressIndicator(
//                   valueColor: AlwaysStoppedAnimation<Color>(
//                     kBlueShade,
//                   ),
//                 )
//               : Align(
//                   alignment: Alignment.centerRight,
//                   child: Container(
//                     // width: 100,
//                     //   height: h * 0.055,
//                     child: ElevatedButton(
//                       onPressed: (){
//                         setState(() {
//                           index++;
//                           index %= 3;
//                         });
//                       },
//                       child: Container(
//                         width: 50,
//                         child: Center(
//                           child: Text(
//                             'Submit',
//                             style: robotoMedium(size:12)
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//         ),
