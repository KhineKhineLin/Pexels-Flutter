import 'package:flutter/material.dart';
import 'package:pexels/user_profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.teal[400],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.photo_filter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 280,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UserProfilePage()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 4),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2020/05/30/06/01/daisy-5237787_960_720.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 4),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2021/01/08/06/32/escalator-5899073_960_720.jpg'),
                                          fit: BoxFit.cover)),
                                ))
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 4),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2017/10/29/19/07/palma-de-mallorca-2900559_960_720.jpg'),
                                  fit: BoxFit.cover)),
                        ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2021/04/03/02/21/fashion-6146328_960_720.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken))),
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'leaderboard last 30 days'.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'Top photographers'.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(left: 16, right: 16),
                      padding: EdgeInsets.only(left: 16),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2014/03/30/09/44/cherry-blossoms-301253_960_720.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2021/01/15/17/01/green-5919790_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2020/12/21/08/36/dog-5849152_960_720.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2021/01/21/09/11/mountains-5936682_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2020/09/04/18/23/street-5544630_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 280,
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 4),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2020/05/20/07/52/gallo-5195311_960_720.jpg'),
                                  fit: BoxFit.cover)),
                        )),
                    Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 4),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2020/03/06/08/43/digital-paper-4906487_960_720.jpg'),
                                          fit: BoxFit.cover)),
                                )),
                            Expanded(
                                flex: 4,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 4),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2018/03/26/18/51/plant-3263600_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 4),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://cdn.pixabay.com/photo/2021/04/05/14/48/cheese-platter-6153716_960_720.jpg'),
                                                  fit: BoxFit.cover)),
                                        ))
                                  ],
                                ))
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
