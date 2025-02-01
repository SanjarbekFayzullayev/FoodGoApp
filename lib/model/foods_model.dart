class FoodsModel {
  int id;
  String type;
  String name;
  String description;
  String imgUrl;
  String reting;
  String minutes;

  FoodsModel(
      {required this.id,
      required this.type,
      required this.name,
      required this.description,
      required this.imgUrl,
      required this.reting,
      required this.minutes});
static List<String> types=["All","FastFood","Suit","Salad","Food"];
  static List<FoodsModel> data = [
    FoodsModel(
        id: 1,
        type: types[1],
        name: "Hamburger",
        description:
        "It is  fast food  It is  fast food  It is  fast food  It is  fast food  ",
        imgUrl: "assets/images/food_detail.png",
        reting: "4.9",
        minutes: "5 min"),
    FoodsModel(
        id: 2,
        type: types[2],
        name: "Cake",
        description:
        "It is  fast food  It is  fast food  It is  fast food  It is  fast food  ",
        imgUrl: "assets/images/food_detail.png",
        reting: "4.9",
        minutes: "30 min"),
    FoodsModel(
        id: 3,
        type: types[3],
        name: "Alivya",
        description:
        "It is  fast food  It is  fast food  It is  fast food  It is  fast food  ",
        imgUrl: "assets/images/food_detail.png",
        reting: "3.9",
        minutes: "30 min"),
    FoodsModel(
        id: 4,
        type: types[4],
        name: "Osh",
        description:
        "It is  fast food  It is  fast food  It is  fast food  It is  fast food  ",
        imgUrl: "assets/images/food_detail.png",
        reting: "5",
        minutes: "50 min"),
    FoodsModel(
        id: 5,
        type: types[4],
        name: "Osh",
        description:
        "It is  fast food  It is  fast food  It is  fast food  It is  fast food  ",
        imgUrl: "assets/images/food_detail.png",
        reting: "5",
        minutes: "50 min"),
  ];
}
