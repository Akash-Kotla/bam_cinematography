import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class date_picker extends StatefulWidget {
  @override
  _DatePicker createState() => _DatePicker();
}

class _DatePicker extends State<date_picker> {
  DateTime? selectedDate;
  int minimumAge = 18;
  String? ageErrorMessage;
  bool isDatePickerVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              padding: EdgeInsets.all(30),
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 20),
                  Container(
                    width: constraints.maxWidth * 0.8,
                    child: Row(
                      children: [
                        Container(
                          width: constraints.maxWidth * 0.7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: LinearProgressIndicator(
                              minHeight: 6,
                              value: 0.60,
                              backgroundColor: Colors.white,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                Colors.red,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "60%",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),


                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  const Text(
                    "The day that becomes special because a star was born",
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Show the date picker
                        setState(() {
                          isDatePickerVisible = true;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.grey, width: 1.0),
                          ))),
                      child: Text('mm-dd--yy'),
                    ),
                  ),

                  //
                  // if (ageErrorMessage != null)
                  //   Text(
                  //     ageErrorMessage!,
                  //     style: TextStyle(
                  //       color: Colors.red,
                  //       fontSize: 16,
                  //     ),
                  //   ),

                  SizedBox(height: 50),

                  if (isDatePickerVisible)
                    Center(
                      child: Container(
                        width: constraints.maxWidth * 0.9,
                        height: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(0),
                        child: CupertinoTheme(
                          data: const CupertinoThemeData(
                            textTheme: CupertinoTextThemeData(
                              dateTimePickerTextStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: CupertinoColors.white,
                              ),
                            ),
                            barBackgroundColor: Colors.black,
                          ),
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: DateTime.now(),
                            onDateTimeChanged: (DateTime newDate) {
                              setState(() {
                                selectedDate = newDate;
                              });
                            },
                          ),
                        ),
                      ),
                    ),


                   Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(520),
                            color: Colors.red
                          ),
                          child: MaterialButton(
                              onPressed: () => {},
                              child: const Text(
                                  "Set date and continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )
                              )
                          ),
                        ),
                      ),
                    ),


                 const SizedBox(
                    height: 30,
                  ),
                ],

              ),
            );
          },
        ),
      ),
    );
  }

  void verifyAge() {
    if (selectedDate == null) {
      setState(() {
        ageErrorMessage = 'Please select your birthday';
      });
      return;
    }

    final now = DateTime.now();
    final difference = now.difference(selectedDate!);
    final age = difference.inDays ~/ 365;

    if (age < minimumAge) {
      setState(() {
        ageErrorMessage = 'You must be at least $minimumAge years old.';
      });
    } else {
      setState(() {
        ageErrorMessage = null;
      });
    }
  }
}
