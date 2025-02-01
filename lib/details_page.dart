import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String? name;
  String? description;
  String? imgUrl;
  String? minutes;
  String? reting;

  DetailsPage(
      {this.name,
      this.description,
      this.imgUrl,
      this.minutes,
      this.reting,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Image.asset(imgUrl!),
              Text(
                name!,
                style: TextStyle(
                    color: Color(0xff3C2F2F),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Text(
                    reting!,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(width: 16),
                  Text(minutes!,
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                description!,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
