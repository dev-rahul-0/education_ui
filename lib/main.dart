import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List catNames = [
  "Category",
  "Classes",
  "Free Course",
  "BookStore",
  "Live Course",
  "LeaderBoard",
];
List<Color> catColor = [
  const Color(0xFFFFCF2F),
  const Color(0xFF6FE08D),
  const Color(0xFF61BDFD),
  const Color(0xFFCB84F8),
  const Color(0xFFFC7F7F),
  const Color(0xFF78E667),
];
List<Icon> catIcons = [
  const Icon(
    Icons.category,
    color: Colors.white,
    size: 30,
  ),
  const Icon(
    Icons.video_library,
    color: Colors.white,
    size: 30,
  ),
  const Icon(
    Icons.assessment,
    color: Colors.white,
    size: 30,
  ),
  const Icon(
    Icons.store,
    color: Colors.white,
    size: 30,
  ),
  const Icon(
    Icons.play_circle_fill,
    color: Colors.white,
    size: 30,
  ),
  const Icon(
    Icons.emoji_events,
    color: Colors.white,
    size: 30,
  ),
];

List imgList = ["C#", "Flutter", "Python", "React Native"];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color(0xFF674AEF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.dashboard,
                        size: 30,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 15),
                    child: Text(
                      'Hi, Programmer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 2,
                          wordSpacing: 1,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 25,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                children: [
                  GridView.builder(
                    itemCount: catNames.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 1.1),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: catColor[index], shape: BoxShape.circle),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            catNames[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.7)),
                          )
                        ],
                      );
                    },
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Courses',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF674AEF)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    itemCount: imgList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.deepPurple[50]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  "assets/images/${imgList[index]}.png",
                                  width: 400,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                imgList[index],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.7)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "55 Videos",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
