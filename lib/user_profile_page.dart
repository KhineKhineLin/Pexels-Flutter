import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              top: true,
              left: true,
              right: true,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        }),
                    Text(
                      'Khinekhinel',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    )
                  ],
                ),
              )),
          Container(
            height: 100,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 38,
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2020/10/23/05/23/leaves-5677717__340.png')),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '11947',
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      'FOLLOWERS',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '26M',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      'TOTAL VIEWS',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '2.3',
                      style: TextStyle(color: Colors.yellow[700]),
                    ),
                    Text(
                      'TOTAL LIKES',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 24,
            child: Text('Flutter Developer'),
          ),
          Container(
            height: 48,
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 16, right: 8),
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text(
                          'FOLLOW',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 16),
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          'MESSAGE HIM',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: Text('YANGON, MYANMAR'),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            height: 32,
            child: TabBar(
              indicatorColor: Colors.greenAccent,
              indicatorWeight: 4,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: [
                Tab(
                  text: '103 PHOTOS',
                ),
                Tab(
                  text: 'COLLECTIONS',
                ),
                Tab(
                  text: 'STATS',
                ),
                Tab(
                  text: 'FEATURED IN',
                )
              ],
              controller: _tabController,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, top: 8),
              child: Text('SORT BY'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            height: MediaQuery.of(context).size.height / 2.15,
            child: TabBarView(
              controller: _tabController,
              children: [
                GridView.count(
                    padding: EdgeInsets.zero,
                    childAspectRatio: 0.9,
                    crossAxisCount: 2,
                    children: List.generate(100, (index) {
                      return Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.pink,
                      );
                    })),
                GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 2,
                    children: List.generate(100, (index) {
                      return Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.orange,
                      );
                    })),
                GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  children: List.generate(100, (index) {
                    return Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.redAccent,
                    );
                  }),
                ),
                GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  children: List.generate(100, (index) {
                    return Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.teal,
                    );
                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
