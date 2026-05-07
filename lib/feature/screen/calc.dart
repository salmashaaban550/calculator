import 'package:calculatior/core/app_color.dart';
import 'package:calculatior/core/responsive/responsive_extension.dart';
import 'package:calculatior/feature/widget/custom_container.dart';
import 'package:calculatior/feature/widget/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String expression = "";
  String result = "";

  void addToExpression(String value) {
    setState(() {
      expression += value;
    });
  }

  void clearExpression() {
    setState(() {
      expression = "";
      result = "";
    });
  }

  void backspace() {
    setState(() {
      if (expression.isNotEmpty) {
        expression = expression.substring(0, expression.length - 1);
      }
    });
  }

  List<TextSpan> buildExpressionText(String exp) {
    List<TextSpan> spans = [];

    for (int i = 0; i < exp.length; i++) {
      String char = exp[i];

      bool isOp = char == "+" || char == "-" || char == "*" || char == "/";

      spans.add(
        TextSpan(
          text: char,
          style: TextStyle(
            fontSize: 22,
            color: isOp ? Colors.blue : Colors.grey,
          ),
        ),
      );
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                /// RESULT AREA
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: buildExpressionText(expression),
                      ),
                    ),

                    CustomSizedBox(height: 30),

                    Text(
                      result,
                      style: const TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                CustomSizedBox(height: 100),

                /// KEYPAD
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// LEFT NUMBERS
                    Column(
                      children: [

                        Row(
                          children: [

                            Column(
                              children: [
                                CustomContainer(
                                  press: () => addToExpression("e"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "e",
                                  txtSize: 28,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 30,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: clearExpression,
                                  backColor: AppColor.backIconGrey1,
                                  txt: "Ac",
                                  txtSize: 35,
                                  txtColor: AppColor.iconGrey,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("7"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "7",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("4"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "4",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("1"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "1",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                              ],
                            ),

                            SizedBox(width: 25.w),

                            Column(
                              children: [
                                CustomContainer(
                                  press: () => addToExpression("μ"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "μ",
                                  txtSize: 28,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 30,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: backspace,
                                  backColor: AppColor.backIconGrey1,
                                  txt: "⌫",
                                  txtSize: 35,
                                  txtColor: AppColor.iconGrey,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("8"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "8",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("5"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "5",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("2"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "2",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                              ],
                            ),

                            SizedBox(width: 25.w),

                            Column(
                              children: [
                                CustomContainer(
                                  press: () => addToExpression("sin"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "sin",
                                  txtSize: 28,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 30,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("/"),
                                  backColor: AppColor.backIconBlue,
                                  txt: "/",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("9"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "9",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("6"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "6",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                                CustomSizedBox(height: 20),
                                CustomContainer(
                                  press: () => addToExpression("3"),
                                  backColor: AppColor.backIconGrey0,
                                  txt: "3",
                                  txtSize: 35,
                                  txtColor: AppColor.iconBlue1,
                                  radius: 18,
                                ),
                              ],
                            ),
                          ],
                        ),

                        CustomSizedBox(height: 20),

                        Row(
                          children: [
                            CustomContainer(
                              width: 190,
                              press: () => addToExpression("0"),
                              backColor: AppColor.backIconGrey0,
                              txt: "0",
                              txtSize: 35,
                              txtColor: AppColor.iconBlue1,
                              radius: 18,
                            ),
                            SizedBox(width: 25.w),
                            CustomContainer(
                              press: () => addToExpression("."),
                              backColor: AppColor.backIconGrey0,
                              txt: ".",
                              txtSize: 35,
                              txtColor: AppColor.iconBlue1,
                              radius: 18,
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(width: 25.w),

                    /// OPERATORS
                    Column(
                      children: [
                        CustomContainer(
                          press: () => addToExpression("deg"),
                          backColor: AppColor.backIconBlue,
                          txt: "deg",
                          txtSize: 28,
                          txtColor: AppColor.iconBlue,
                          radius: 30,
                        ),
                        CustomSizedBox(height: 20),
                        CustomContainer(
                          press: () => addToExpression("*"),
                          backColor: AppColor.backIconBlue,
                          txt: "*",
                          txtSize: 35,
                          txtColor: AppColor.iconBlue,
                          radius: 18,
                        ),
                        CustomSizedBox(height: 20),
                        CustomContainer(
                          press: () => addToExpression("-"),
                          backColor: AppColor.backIconBlue,
                          txt: "-",
                          txtSize: 35,
                          txtColor: AppColor.iconBlue,
                          radius: 18,
                        ),
                        CustomSizedBox(height: 20),
                        CustomContainer(
                          height: 107,
                          press: () => addToExpression("+"),
                          backColor: AppColor.backIconBlue,
                          txt: "+",
                          txtSize: 35,
                          txtColor: AppColor.iconBlue,
                          radius: 18,
                        ),
                        CustomSizedBox(height: 20),
                        CustomContainer(
                          press: () {
                            try {
                              Parser p = Parser();
                              Expression exp = p.parse(expression);
                              ContextModel cm = ContextModel();
                              double eval = exp.evaluate(EvaluationType.REAL, cm);

                              setState(() {
                                double rounded = double.parse(eval.toStringAsFixed(3));

                                if (rounded == rounded.toInt()) {
                                  result = rounded.toInt().toString();
                                } else {
                                  result = rounded.toString().replaceAll('.', ',');
                                }
                              });
                            } catch (e) {
                              setState(() {
                                result = "Error";
                              });
                            }
                          },
                          height: 107,
                          backColor: AppColor.backEqual,
                          txt: "=",
                          txtSize: 35,
                          txtColor: AppColor.white,
                          radius: 18,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}