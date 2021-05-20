import 'package:flutter/material.dart';
import 'package:mun/views/MUN/receipt_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/widgets/logo.dart';

//TODO: Add vertical divider

class BookingSummary extends StatelessWidget {
  List<String> fields = [
    'Name',
    'Date of Birth',
    'Age',
    'Institution',
    'City',
    'Contact Number',
    'Email Address',
    'Food Preference',
    'Accommodation',
    'Premium Availed',
  ];
  List<String> values = [
    'Alex Jacob',
    '01-01-1997',
    '26',
    'Centre for Environmental Planning and Technology',
    'Chennai',
    '9601133475',
    'example.info@gmail.com',
    'Jain',
    'Yes',
    'Yes',
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MUNLogo(),
              Divider(
                height: 0.01,
                thickness: 1,
                color: kGreyShade.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: h,
        width: w,
        padding: EdgeInsets.fromLTRB(h * 0.021, h * 0.021, h * 0.021, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Booking Summary',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: h * (kMediumTextSize - 0.008),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Divider(
                height: 0.01,
                thickness: 1,
                color: kGreyShade.withOpacity(0.4),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Container(
                height: h * 0.295,
                width: w,
                //padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                child: Row(
                  children: [
                    Container(
                      width: w * 0.3,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Container(
                      width: w * 0.55,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: w * 0.015,
                        vertical: h * 0.01,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'World Archive Simulation',
                            style: TextStyle(
                              fontSize: h * 0.022,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.015,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: kGreyShade.withOpacity(0.4),
                            ),
                          ),
                          Text(
                            'United Nations',
                            style: TextStyle(fontSize: h * 0.023),
                          ),
                          Text(
                            'Human Rights Committee*',
                            style: TextStyle(
                              fontSize: h * 0.022,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.015,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: kGreyShade.withOpacity(0.4),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Zydus School',
                                style: TextStyle(
                                  fontSize: h * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: kGreyShade.withOpacity(0.4),
                                ),
                              ),
                              Text(
                                'View in ',
                                style: TextStyle(
                                    fontSize:
                                        h * (kExtraSmallTextSize - 0.005)),
                              ),
                              Text(
                                'Maps',
                                style: TextStyle(
                                  fontSize: h * (kExtraSmallTextSize - 0.005),
                                  color: kBlueShade,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.015,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: kGreyShade.withOpacity(0.4),
                            ),
                          ),
                          Text(
                            '10 a.m. - 5 p.m.',
                            style: TextStyle(
                              fontSize: h * 0.023,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'October 13-14,2021',
                            style: TextStyle(
                              fontSize: h * 0.023,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '*Further details will be communicated via Email',
                            style: TextStyle(
                              fontSize: h * 0.0175,
                              color: kGreyShade,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: h * 0.55,
                width: w,
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: h * 0.02,
                  horizontal: w * 0.02,
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: fields.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(
                          height: h * 0.04,
                        ),
                        Expanded(
                          child: Text(
                            fields[index],
                            style: TextStyle(
                              fontSize: h * 0.025,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            values[index],
                            style: TextStyle(
                              fontSize: h * 0.023,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Container(
                height: h * 0.22,
                width: w,
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: h * 0.02,
                  horizontal: w * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text('Cost of MUN'),
                        ),
                        Text(
                          'INR 4000',
                          style: TextStyle(
                            color: kBlueShade,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text('Accommodation Charges'),
                        ),
                        Text(
                          'INR 4000',
                          style: TextStyle(
                            color: kBlueShade,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text('Premium Charges'),
                        ),
                        Text(
                          'INR 4000',
                          style: TextStyle(
                            color: kBlueShade,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text('Taxes'),
                        ),
                        Text(
                          'INR 4000',
                          style: TextStyle(
                            color: kBlueShade,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.015,
                      child: Divider(
                        height: 0.01,
                        thickness: 1,
                        color: kGreyShade.withOpacity(0.4),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Total Amount',
                            style: TextStyle(
                              fontSize: h * 0.03,
                            ),
                          ),
                        ),
                        Text(
                          'INR 4000',
                          style: TextStyle(
                            color: kBlueShade,
                            fontSize: h * 0.03,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: h * 0.1,
        color: Colors.white,
        padding: EdgeInsets.only(right: w * 0.05),
        alignment: Alignment.centerRight,
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ReceiptScreen(),
              ),
            );
          },
          child: Text(
            'Proceed to Payment',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: h * 0.03,
            ),
          ),
          color: kBlueShade,
        ),
      ),
    );
  }
}
