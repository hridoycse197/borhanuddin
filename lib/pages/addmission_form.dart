// ignore_for_file: prefer_const_constructors

import 'package:borhanudiincollege/pages/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddmissionFormScreen extends StatefulWidget {
  String title;
  AddmissionFormScreen({super.key, required this.title});

  @override
  State<AddmissionFormScreen> createState() => _AddmissionFormScreenState();
}

class _AddmissionFormScreenState extends State<AddmissionFormScreen> {
  TextEditingController _shikkhaborsho1 = TextEditingController();
  TextEditingController _shikkhaborsho2 = TextEditingController();
  FocusNode phoneNumberFocusNode = FocusNode();
  int sscBoardSelected = 0;
  int sscPassingYearselected = 0;
  int hscBoardSelected = 0;
  int hscPassingYearselected = 0;
  List<String> sscBoard = [
    'Barisal',
    'Chittagong',
    'Cumilla',
    'Dhaka',
    'Dinajpur',
    'Jessore',
    'Mymensingh',
    'Rajshahi',
    'Sylhet',
    'Madrasah',
    'BTEB',
    'Bou'
  ];
  List<String> passingYear = ['2017', '2018', '2019', '2020', '2021'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: PageView(children: [
          SizedBox(
            height: 500,
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  "assets/images/Shaikh_Burhanuddin_Post_Graduate_College_logo.jpeg",
                  width: 1000.h,
                  height: 500.w,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'SSC',
                  style: TextStyle(
                      color: Color(0xFF0070BB),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Roll",
                textEditingController: Constab().sscRoll,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Roll is Required';
                  }
                },
                title: 'Roll',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Reg",
                textEditingController: Constab().sscReg,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Reg is Required";
                  }
                },
                title: 'Reg',
              ),
              SizedBox(
                height: 10,
              ),
              titleWidget(text: 'Ssc Board'),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF0070BB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  height: 50,
                  child: DropdownButton(
                    hint: Text(sscBoard[sscBoardSelected]),
                    menuMaxHeight: 200,
                    alignment: AlignmentDirectional.centerEnd,
                    isExpanded: true,
                    items: sscBoard
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        sscBoardSelected =
                            sscBoard.indexWhere((element) => element == value);
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              titleWidget(text: 'Passing Year'),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF0070BB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  height: 50,
                  child: DropdownButton(
                    hint: Text(passingYear[sscPassingYearselected]),
                    menuMaxHeight: 200,
                    alignment: AlignmentDirectional.centerEnd,
                    isExpanded: true,
                    items: passingYear
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        sscPassingYearselected = passingYear
                            .indexWhere((element) => element == value);
                      });
                    },
                  ),
                ),
              )
            ]),
          ),

//hsc

          SizedBox(
            height: 500,
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  "assets/images/Shaikh_Burhanuddin_Post_Graduate_College_logo.jpeg",
                  width: 1000.h,
                  height: 500.w,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'HSC',
                  style: TextStyle(
                      color: Color(0xFF0070BB),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Roll",
                textEditingController: Constab().hscRoll,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Roll is Required';
                  }
                },
                title: 'Roll',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Reg",
                textEditingController: Constab().hscReg,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Reg is Required";
                  }
                },
                title: 'Reg',
              ),
              SizedBox(
                height: 10,
              ),
              titleWidget(text: 'Hsc Board'),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF0070BB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  height: 50,
                  child: DropdownButton(
                    hint: Text(sscBoard[hscBoardSelected]),
                    menuMaxHeight: 200,
                    alignment: AlignmentDirectional.centerEnd,
                    isExpanded: true,
                    items: sscBoard
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        hscBoardSelected =
                            sscBoard.indexWhere((element) => element == value);
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              titleWidget(text: 'Passing Year'),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF0070BB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  height: 50,
                  child: DropdownButton(
                    hint: Text(passingYear[hscPassingYearselected]),
                    menuMaxHeight: 200,
                    alignment: AlignmentDirectional.centerEnd,
                    isExpanded: true,
                    items: passingYear
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        hscPassingYearselected = passingYear
                            .indexWhere((element) => element == value);
                      });
                    },
                  ),
                ),
              )
            ]),
          ),

          ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  "assets/images/Shaikh_Burhanuddin_Post_Graduate_College_logo.jpeg",
                  width: 1000.h,
                  height: 500.w,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Personal Information',
                  style: TextStyle(
                      color: Color(0xFF0070BB),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Name In English",
                textEditingController: Constab().studentNameE,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Name is required";
                  }
                },
                title: 'Name (In English)',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Name In Bangla",
                textEditingController: Constab().studentNameB,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Name is required";
                  }
                },
                title: 'Name (In Bangla)',
              ),
              SizedBox(
                height: 10,
              ),
              titleWidget(text: 'Date Of Birth'),
              Container(
                  height: 40, decoration: BoxDecoration(border: Border.all())),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Father's Name In English",
                textEditingController: Constab().fatherE,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Father's Name is required";
                  }
                },
                title: 'Father\'s Name (In English)',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Father's Name In Bangla",
                textEditingController: Constab().fatherB,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Name is required";
                  }
                },
                title: 'Father\'s Name (In Bangla)',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Father's Occupation",
                textEditingController: Constab().fatherpesha,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Ocuupation is required";
                  }
                },
                title: 'Father\'s Occupation',
              ),
              fullrows(
                textInputType: TextInputType.number,
                hints: "Father's Phone Number",
                textEditingController: Constab().fatherMobile,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Father's Mobile is required";
                  }
                },
                title: 'Father\'s  Mobile Number',
              ),
              fullrows(
                textInputType: TextInputType.number,
                hints: "Father's Income",
                textEditingController: Constab().fatherincome,
                validator: (String? value) {},
                title: 'Father\'s  Income (Yearly)',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Mother's Name In English",
                textEditingController: Constab().motherE,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Mother's Name is required";
                  }
                },
                title: 'Mother\'s Name (In English)',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Mother's Name In Bangla",
                textEditingController: Constab().motherB,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Mother's Name is required";
                  }
                },
                title: 'Mother\'s  Name (In Bangla)',
              ),
              fullrows(
                textInputType: TextInputType.text,
                hints: "Enter Your Mother's  Occupation",
                textEditingController: Constab().motherPesha,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Ocuupation is required";
                  }
                },
                title: 'Mother\'s Occupation',
              ),
              fullrows(
                textInputType: TextInputType.number,
                hints: "Mother's Phone Number",
                textEditingController: Constab().motherMobile,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Mother's Mobile is required";
                  }
                },
                title: 'Mother\'s  Mobile Number',
              ),
              fullrows(
                textInputType: TextInputType.number,
                hints: "Mother's Income",
                textEditingController: Constab().motherincome,
                validator: (String? value) {},
                title: 'Mother\'s  Income (Yearly)',
              ),
            ],
          ),
        ]),
      )),
    );
  }
}

class fullrows extends StatelessWidget {
  String title, hints;
  final String? Function(String?)? validator;
  TextEditingController textEditingController;
  TextInputType textInputType;

  fullrows(
      {Key? key,
      required this.title,
      required this.textInputType,
      required this.hints,
      required this.validator,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        titleWidget(text: title),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
              controller: textEditingController,
              textAlign: TextAlign.center,
              keyboardType: textInputType,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
                hintStyle: const TextStyle(),
                hintText: hints,
                fillColor: const Color(0xFF0070BB),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      const BorderSide(color: Color(0xFF0070BB), width: 4.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF0070BB),
                    width: 2.0,
                  ),
                ),
              ),
              validator: validator
              //onSaved: onsaved,
              ),
        ),
      ],
    );
  }
}

class titleWidget extends StatelessWidget {
  String text;
  titleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
