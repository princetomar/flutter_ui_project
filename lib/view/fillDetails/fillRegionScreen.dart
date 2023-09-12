import 'package:flutter/material.dart';
import '../../appColors.dart';
import '../../widgets/customElevatedButton.dart';

class FillRegionScreen extends StatelessWidget {
  final Object details;
  FillRegionScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    final userDetails = details as Map<String, dynamic>;
    final name = userDetails['name'];
    final size = MediaQuery.of(context).size;
    final TextEditingController regionController = TextEditingController();
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize:
      //       Size.fromHeight(MediaQuery.of(context).size.height * 0.51),
      //   child: Container(
      //     width: double.infinity,
      //     child: Align(
      //       alignment: Alignment.center,
      //       child: Image.asset(
      //         "assets/details.png",
      //         fit: BoxFit.cover,
      //         width: size.width,
      //         height: size.height * 0.57,
      //       ),
      //     ),
      //   ),
      // ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/details.png",
                fit: BoxFit.cover,
                width: size.width,
                height: size.height * 0.56,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome ${name},\nWhat is your region?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.purleButtonColor,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.textFormFieldColor,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                          width: 3, color: AppColors.purleButtonColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Enter your region",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textFormFieldHintColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.12,
                ),
                Center(
                  child: CustomElevatedButton(
                    buttonTitle: "Next",
                    onTap: () {
                      if (regionController.text.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Entered Value'),
                              content:
                                  Text('You entered: ${regionController.text}'),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Empty Field'),
                              content: Text('Please enter a name.'),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
