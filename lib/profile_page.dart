import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/profile.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.1, 4),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/profile_user.png"),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
              Container(
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                // child: Center(
                //   child: TextFormField(
                //     enabled: false,
                //     decoration: InputDecoration(
                //       labelText: "Sophia Patel",
                //       alignLabelWithHint: true,
                //       contentPadding: EdgeInsets.all(20),
                //       hintText: "Sophia Patel",
                //       hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                //       focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(20),
                //           borderSide:
                //               BorderSide(color: Color(0xffE1E1E1), width: 2)),
                //
                //     ),
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
