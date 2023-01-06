import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hoteldet(),
  ));
}

class Hoteldet extends StatelessWidget {
  const Hoteldet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black54,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favotite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 350,
                    width: 700,
                    child: Image.network(
                      "https://cdn.pixabay.com/photo/2021/08/27/01/33/bedroom-6577523_1280.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                      top: 10,
                      left: 10,
                      right: 10,
                      child: Center(
                          child: Text(
                        "DETAIL",
                        style: TextStyle(color: Colors.white),
                      ))),
                  const Positioned(
                      left: 20,
                      bottom: 40,
                      child: SizedBox(
                          width: 200,
                          child: Text(
                            "Crowne Plaza Kochi, Kerala",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ))),
                  Positioned(
                      left: 20,
                      bottom: 10,
                      child: Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          "8.4/85 reviews",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )),
                      )),
                  const Positioned(
                      bottom: 10,
                      right: 10,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.purple,
                          ),
                          onRatingUpdate: (rating) {
                          },
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              size: 15,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "8 km to LuluMall",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "\$ 200",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("/per night",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SizedBox(
                  height: 45,
                  width: 1000,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const Text("Book now")),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: ListTile(
                  title: Text("DESCRIPTION"),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 13, color: Colors.black87),
                        "Crowne Plaza Kochi, Kerala, is an ideal staying place for both the professional and leisure travelers from across the world. It is placed amidst exotic surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites. The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events."),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ListTile(
                  title: Text(
                    "Crown Plaza Kochi, Kerala",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
