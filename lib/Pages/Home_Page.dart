import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black54,
        ),
        title: Center(
            child: Text(
              "Explore",
              style: TextStyle(color: Colors.black54),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI="),
                )

              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                      )
                    ),
                  ),
                  Text("Something here")
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Text(
                "My Location",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tfGVufDB8fDB8fA%3D%3D&w=1000&q=80"))),
                ),
              ),
              Positioned(
                  bottom: 15,
                  left: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "something here1",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      Text("something here2",style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                      ),),
                      Text("something here2",style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.white70,size: 30,),
                          SizedBox(width: 25,),
                          Text("Location Name Here",style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ],
                      )
                    ],
                  )),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: const Icon(Icons.home,),label: "Home"),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.link),label: "Home"),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.message),label: "Home"),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.person),label: "Home" ),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.notifications),label: "Home" ),
        ],
        // currentIndex: index,
        // onTap: (int i){setState((){index = i;});},
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
