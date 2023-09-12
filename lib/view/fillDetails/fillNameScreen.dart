import 'package:flutter/material.dart';
import '../../appColors.dart';
import '../../widgets/customElevatedButton.dart';

class FillNameScreen extends StatelessWidget {
  const FillNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.51),
        child: Container(
          width: double.infinity,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/details.png",
              fit: BoxFit.cover,
              width: size.width,
              height: size.height * 0.57,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Text(
              "How we should call you?",
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
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter your name",
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textFormFieldHintColor,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            Center(
              child: CustomElevatedButton(
                buttonTitle: "Next",
                onTap: () {
                  if (nameController.text.isNotEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Entered Value'),
                          content: Text('You entered: ${nameController.text}'),
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
    );
  }
}
