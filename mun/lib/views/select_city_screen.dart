import 'package:flutter/material.dart';

class SelectCityScreen extends StatefulWidget {
  @override
  _SelectCityScreenState createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  List<String> cityNames = [
    'Ahmedabad',
    'Surat',
    'Rajkot',
    'Vadodra',
    'Chennai',
    'Hyderabad',
    'Bangalore',
    'Mumbai',
    'Delhi',
    'Kolkata',
    'Jaipur',
    'Pune',
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pick A Region',
          style: TextStyle(
            fontFamily: 'Helvetica',
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: h,
        width: w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: h * 0.2,
              width: w,
              color: Colors.grey[150],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  SizedBox(
                    width: w * 0.005,
                  ),
                  TextField(

                    decoration: InputDecoration(

                      hintText: 'Search for your city',
                      hintStyle: TextStyle(
                        fontFamily: 'Helvetica',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.002,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  //childAspectRatio: (w * 0.04) / (h * 0.008),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.grey[200],
                    child: Center(
                      child: Text(
                        cityNames[index],
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
