import 'package:flutter/material.dart';

class SamuelHomePage extends StatelessWidget {
  const SamuelHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: const Color(0xFF167A5C),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                color: const Color(0xFF167A5C),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: "Track\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: "your ",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "Shipment",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(bottom: 55),
                          child: Image.asset(
                            "assets/images/bigmast.png",
                            height: 43,
                            width: 64,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 15,
                            top: 10,
                          ),
                          child: Image.asset(
                            "assets/images/bigmast.png",
                            height: 69,
                            width: 102,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 45),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Tracking Number",
                              fillColor: Colors.white,
                              filled: true,
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB3B3B3),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFAFAFA),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xFFFFE8B2),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.white54,
                alignment: Alignment.center,
                child: GridView.count(
                  physics: const ClampingScrollPhysics(),
                  crossAxisCount: 2,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 35.0,
                  ),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: const [
                    SamuelOptions(
                      text: "SHIPMENT",
                    ),
                    SamuelOptions(
                      text: "TRACKING",
                    ),
                    SamuelOptions(
                      text: "MESSAGE",
                    ),
                    SamuelOptions(
                      text: "SETTINGS",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SamuelOptions extends StatelessWidget {
  final String text;
  const SamuelOptions({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      alignment: Alignment.bottomCenter,
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF666666),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
