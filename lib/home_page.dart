import 'package:flutter/material.dart';
import 'package:food_app/details_page.dart';
import 'package:food_app/model/foods_model.dart';
import 'package:food_app/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> type = [
    " All",
    "Combos",
    "Sliders",
    "Classic",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Foodgo",
                        style: TextStyle(fontSize: 46, fontFamily: "Lobster"),
                      ),
                      Text(
                        "Order your favourite food!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff6A6A6A),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(
                              isNavigation: true,
                            ),
                          ));
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/images/user.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 36,
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 8,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 8,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffEF2A39),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.filter_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: FoodsModel.types.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8),
                      child: GestureDetector(
                        onTap: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        child: Container(
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? Color(0xffEF2A39)
                                : Color(0xffF3F4F6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8.0, top: 8, left: 12, right: 12),
                            child: Text(
                              FoodsModel.types[index],
                              style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Color(0xff6A6A6A),
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(

                  itemCount:FoodsModel.types[selectedIndex]=="All"?FoodsModel.data.length : FoodsModel.data.where((food) =>
                  food.type == FoodsModel.types[selectedIndex]).length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.76
                  ),
                  itemBuilder: (context, index) {
                    var filteredList = FoodsModel.types[selectedIndex]=="All"?FoodsModel.data: FoodsModel.data
                        .where((food) => food.type == FoodsModel.types[selectedIndex])
                        .toList();

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                name: filteredList[index].name,
                                description: filteredList[index].description,
                                imgUrl: filteredList[index].imgUrl,
                                minutes: filteredList[index].minutes,
                                reting: filteredList[index].reting,
                              ),
                            ),
                          );
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    filteredList[index].imgUrl,
                                    width: 120,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      filteredList[index].name,
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(filteredList[index].type),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.amber),
                                        Text(filteredList[index].reting),
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_border, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
