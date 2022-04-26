import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF167A5C),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF167A5C),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      //text.rich

                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3)),
                            child: Center(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Tracking no',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ), //1
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: HexColor('#FFE8B2'),
                                borderRadius: BorderRadius.circular(6)),
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: const Icon(
                              Icons.search,
                              size: 30,
                            ),
                          ) //2
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: const Color(0xFFE5E5E5),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
            ),
            Container(),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "SHIPMENT",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "montserrat",
                      ),
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "TRACKING",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: "montserrat"),
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "MESSAGE",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "montserrat",
                      ),
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "SETTINGS",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "montserrat",
                      ),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
