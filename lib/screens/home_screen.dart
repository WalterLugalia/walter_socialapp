import 'package:flutter/material.dart';
import 'package:walter_socialapp/data/data.dart';
import 'package:walter_socialapp/models/user_model.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

@override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        title: Align(
          alignment: Alignment.center ,
          child:Text('SHECK',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0
        ), ),),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3.0,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600
          ),
          unselectedLabelStyle: TextStyle(fontSize: 18.0,),
          tabs: <Widget>[
            Tab(text: 'Trending',),
            Tab(text: 'Latest',)
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
            child: Text('following',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
            ),
            ),

          ],
        ),
          Container(
            height: 80.0,
            color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index){
                User user = users[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0,2),
                      blurRadius: 6.0,
                    ),
                  ],
                      border: Border.all(
                        width: 2.0,
                        color: Theme.of(context).primaryColor,
                      )
                  ),
                  child: ClipOval (child: Image(
                  height: 60.0,
                  width: 60.0,
                  image: AssetImage(user.profileImageUrl),
                  fit: BoxFit.cover,
                ),),
                );
              }
            )

          ),
      ],
       ),
    );
  }
}
