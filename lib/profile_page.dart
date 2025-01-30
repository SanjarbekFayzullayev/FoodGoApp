import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final bool isNavigation;

  const ProfilePage({this.isNavigation = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Details
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/profile.png"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            isNavigation == true
                                ? Navigator.pop(context)
                                : SizedBox();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 550,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(34),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textFiled("Sophia Patel"),
                        SizedBox(
                          height: 20,
                        ),
                        textFiled("sophiapatel@gmail.com"),
                        SizedBox(
                          height: 20,
                        ),
                        textFiled("123 Main St Apartment 4A,New York, NY "),
                        SizedBox(
                          height: 20,
                        ),
                        textFiled("*********"),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment Details",
                                      style: TextStyle(
                                          color: Color(0xff808080),
                                          fontSize: 18),
                                    ),
                                    Icon(Icons.navigate_next)
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Order history",
                                      style: TextStyle(
                                          color: Color(0xff808080),
                                          fontSize: 18),
                                    ),
                                    Icon(Icons.navigate_next)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Color(0xff3C2F2F),
                                  ),
                                  fixedSize: WidgetStatePropertyAll(
                                    Size.copy(Size(160, 50)),
                                  ),
                                  shape: WidgetStatePropertyAll(
                                    ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Edit Profile",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.edit_note,
                                      color: Colors.white,
                                    )
                                  ],
                                )),
                            OutlinedButton(
                                style: ButtonStyle(
                                  fixedSize: WidgetStatePropertyAll(
                                    Size.copy(Size(160, 50)),
                                  ),
                                  side: WidgetStatePropertyAll(BorderSide(
                                      width: 2, color: Color(0xffEF2A39))),
                                  shape: WidgetStatePropertyAll(
                                    ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Color(0xffEF2A39), width: 4),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Log out",
                                      style:
                                          TextStyle(color: Color(0xffEF2A39)),
                                    ),
                                    Icon(
                                      Icons.exit_to_app,
                                      color: Color(0xffEF2A39),
                                    )
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Person Avatar
            Align(
              alignment: Alignment(0, -0.66),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 12,
                color: Colors.redAccent,
                shadowColor: Color(0xffEF2A39),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/profile_user.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xffEF2A39), width: 4)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget textFiled(String name) {
  return SizedBox(
    width: 350,
    child: TextField(
      decoration: InputDecoration(
        label: Text(
          name,
          style: TextStyle(color: Colors.black),
        ),
        contentPadding: EdgeInsets.all(8),
        enabled: false,
        // labelText: name,
        hintText: name,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 4)),
      ),
    ),
  );
}
