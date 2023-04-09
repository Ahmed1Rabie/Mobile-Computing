import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}

Widget getProjectCard(String projectName, String projectDescription,
    String imagePath, String programmingLanguage, Color color) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      children: [
        ListTile(
          title: Text(
            projectName,
            style: TextStyle(
                fontSize: 20,
                color: Color(0xff5cb750),
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(projectDescription),
        ),
        Image.asset(imagePath),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(5),
          child: Chip(
            labelPadding: EdgeInsets.all(2.0),
            label: Text(
              programmingLanguage,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: color,
            elevation: 6.0,
            shadowColor: Colors.grey[60],
            padding: EdgeInsets.all(8.0),
          ),
        ),
      ],
    ),
  );
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff8bf0be),
        ),
        backgroundColor: Color(0xff939f9e),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xff7cf190),
              backgroundImage: NetworkImage(
                  "https://media.licdn.com/dms/image/D4D03AQGKhRKopXKj4Q/profile-displayphoto-shrink_400_400/0/1672414220537?e=1686787200&v=beta&t=YsLHCaL46-4LjMJuzMwlcAeO9eOZsvxdXB-s-kUHbYw"),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Ahmed Rabie',
                style: TextStyle(fontSize: 35),
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff0c0b0b),
                  fontFamily: 'Source Sans Pro'),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
                thickness: 5,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade900,
                        size: 30,
                      ),
                      title: Text(
                        "+20 01005488734",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal.shade900,
                            fontFamily: "Source Sans Pro",
                            fontWeight: FontWeight.bold),
                      ))),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal.shade900,
                          size: 30,
                        ),
                        title: Text(
                          "ar2241@fayoum.edu.eg",
                          style: TextStyle(
                              color: Color(0xff68bc41),
                              fontFamily: "Source Sans Pro",
                              fontWeight: FontWeight.bold),
                        )))),
          ],
        )),
      ),
    ));
  }
}
