import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  String imgPath;

  Details({super.key, required this.imgPath});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              left: 15,
              right: 15,
              bottom: 15,
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 4,
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(59),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/dress.jpg"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "LAMINATED",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Lous cart curt  ",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    color: Colors.brown),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width - 170,
                                child: const Text(
                                  "Çok uzun yazi cart curt i hate myself why i am doing this let me die ",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.brown),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$6500",
                            style: TextStyle(
                              fontFamily: "Monserrat",
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.brown,
                              child: const Icon(Icons.arrow_forward_ios),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
