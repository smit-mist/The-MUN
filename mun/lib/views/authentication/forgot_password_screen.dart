import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/logo.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool isLoading = false;
  String email;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    List<Widget> toDisplay = [
      Container(
        width: w * 0.85,
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
                hintStyle: simple(16).copyWith(color: Colors.grey),
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
                fillColor: kGreyShade.withOpacity(0.15),
                focusColor: kGreyShade,
              ),
              cursorColor: Colors.black,
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              'Please make sure you input an Email-id which has an existing MyNextMUN account.',
              style: simple(12).copyWith(color: Colors.grey),
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
                  width: 50,
                  child: Center(
                    child: Text(
                      'Submit',
                      style: simple(15).copyWith(color: Colors.white),
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
              style: simple(12).copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (change) {
                setState(() {
                  email = change;
                });
              },
              decoration: InputDecoration(
                hintStyle: simple(16).copyWith(color: Colors.grey),
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
                fillColor: kGreyShade.withOpacity(0.15),
                focusColor: kGreyShade,
              ),
              cursorColor: Colors.black,
            ),
            SizedBox(
              height: h * 0.02,
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
                  width: 100,
                  child: Center(
                    child: Text(
                      'Confirm OTP',
                      style: simple(15).copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.grey.shade500,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Did not Recieve an Email?',
                  style: simple(10),
                ),
                Spacer(),
                Text(
                  'We can always ',
                  style: simple(10),
                ),
                Text(
                  'Resend the Email ',
                  style: simple(10).copyWith(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
                Text(
                  'to you!',
                  style: simple(10),
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
            TextField(
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
                hintStyle: simple(16).copyWith(color: Colors.grey),
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
                fillColor: kGreyShade.withOpacity(0.15),
                filled: true,
              ),
              cursorColor: Colors.black,
            ),
            Container(
              color: kGreyShade.withOpacity(0.15),
              child: Center(
                child: Container(
                  width: w * 0.75,
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            TextField(
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
                hintStyle: simple(16).copyWith(color: Colors.grey),
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
                fillColor: kGreyShade.withOpacity(0.15),
                filled: true,
              ),
              cursorColor: Colors.black,
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              'Password should be atleast 6 characters long and should include atleast 1 special character. Ex: @,\$,%,&,!.',
              style: simple(12).copyWith(color: Colors.grey),
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
                  width: 50,
                  child: Center(
                    child: Text(
                      'Submit',
                      style: simple(15).copyWith(color: Colors.white),
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MUNLogo(),
                SizedBox(
                  height: h * 0.03,
                ),
                Text(
                  'Change your Password',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.grey.shade500,
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
                          state: index == 0?StepState.editing:StepState.complete,
                          isActive: index == 0 ? true : false,
                          title: Text(
                              'Enter the Email-id associated with your MyNextMUN account.',
                              style: simple(12).copyWith(color: index==0?Colors.black:Colors.grey)),
                          content: Column(),
                        ),
                        Step(
                          state: index == 1?StepState.editing:index<1?StepState.disabled:StepState.complete,

                          title: Text(
                            'An autogenerated OTP will be sent to the registered Email-id.',
                            style: simple(12).copyWith(color: index==1?Colors.black:Colors.grey),
                          ),
                          isActive: index == 1 ? true : false,
                          content: Column(),
                        ),
                        Step(
                          state: index == 2?StepState.editing:index<2?StepState.disabled:StepState.complete,

                          title: Text('Use the OTP to reset your password',
                              style: simple(12).copyWith(color: index==2?Colors.black:Colors.grey)),
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
//             hintStyle: simple(16).copyWith(color: Colors.grey),
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
//           style: simple(12).copyWith(color: Colors.grey),
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
//                             style: simple(15)
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//         ),
