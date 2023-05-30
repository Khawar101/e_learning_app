// ignore: file_names
import 'package:e_learning_app/payment/successful_purchased.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class BottomSheetOpen extends StatefulWidget {
  const BottomSheetOpen({super.key});

  @override
  State<BottomSheetOpen> createState() => _BottomSheetOpenState();
}

class _BottomSheetOpenState extends State<BottomSheetOpen> {
    List<String> codes = ['', '', '', '','',''];

  void _onKeyboardTap(String value) {
    for (var i = 0; i < codes.length; i++) {
      if (codes[i].isEmpty) {
        setState(() {
          codes[i] = value;
        });
        if (i < codes.length - 1) {
          // Move focus to the next text field
          FocusScope.of(context).nextFocus();
        } else {
          // Last text field, perform your logic here (e.g., submitting the code)
        }
        break;
      }
    }
  }

  void _clearCodeField(int index) {
    if (index > 0 && codes[index].isEmpty) {
      // Clear the current field and move focus to the previous field
      setState(() {
        codes[index - 1] = '';
      });
      FocusScope.of(context).previousFocus();
    } else {
      // Clear the current field
      setState(() {
        codes[index] = '';
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      child: Scaffold(
        
        backgroundColor: const Color(0xff4873a6).withOpacity(0.7),
         body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,vertical: 6
            ),
            child: Column(
              children: [
                const BigText(text: 'Payment Password', color: Colors.white),
                const SizedBox(height: 6),
                const SmallText(text: 'Please enter the payment password', color:Colors.white),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal:20,
                  ),
                  child: Column(
                    children: [
                     
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var i = 0; i < codes.length; i++)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all( color: const Color(0xff4873a6).withOpacity(0.7),width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  codes[i],
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                        ],
                      ),
                    
                   
                      
                    ],
                  ),
                ),
                NumericKeyboard(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  onKeyboardTap: _onKeyboardTap,
                  textColor: Colors.white,
                  rightButtonFn: () {
                    for (var i = codes.length - 1; i >= 0; i--) {
                      if (codes[i].isNotEmpty) {
                        _clearCodeField(i);
                        break;
                      }
                    }
                  },
                  leftButtonFn: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const SuccessfulPurchase())));
                  },
                  leftIcon: const Icon(Icons.check,color: Colors.white,),
                  rightIcon: const Icon(
                    Icons.backspace,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}