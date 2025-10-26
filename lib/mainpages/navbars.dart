import 'package:flutter/material.dart';
import 'package:marathi_books/mainpages/Books.dart';
import 'package:marathi_books/mainpages/RefBook.dart';
import 'package:marathi_books/mainpages/Solutions.dart';
import 'package:marathi_books/mainpages/Updates.dart';

class Navbars extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDark;
  const Navbars({super.key,required this.toggleTheme,required this.isDark});

  @override
  State<Navbars> createState() => _NavbarsState();
}

class _NavbarsState extends State<Navbars> {

  int _selectedIndex = 1;
  String titles = "Home";


  void titleName() {
    print(_selectedIndex);
    if(_selectedIndex == 0) {
      titles = "Updates";
    }
    else if(_selectedIndex == 1) {
      titles = "Home";
    }
    else if(_selectedIndex == 3) {
      titles = "Ref Book";
    }
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> pages = [Updates(),Books(),Container(),Refbook()];

    return Scaffold(
      appBar: AppBar(
        title: Text(titles),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person,size: 52,),
                    radius: 35,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 20,),
                  Text("Siddharth Jha",style: TextStyle(color: Colors
                      .white,fontSize: 22,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person,size: 30,),
              title: Text("Profile",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.mode_night_outlined,size: 30,),
              title: Text("Night Mode",style: TextStyle(fontSize: 20),),
              trailing: Switch(
                  value: widget.isDark,
                  onChanged: (value){
                    widget.toggleTheme();
                  }),
            ),
            ListTile(
              leading: Icon(Icons.refresh,size: 30,),
              title: Text("Activities",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.download,size: 30,),
              title: Text("Downloaded Books",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.bookmark,size: 30,),
              title: Text("Pdf Bookmarks",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.bookmark,size: 30,),
              title: Text("Article Bookmarks",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.add,size: 30,),
              title: Text("More Apps",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.share,size: 30,),
              title: Text("App Share",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.star,size: 30,),
              title: Text("Rate Us",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.lock,size: 30,),
              title: Text("Privacy Policy",style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.settings,size: 30,),
              title: Text("Settings",style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: widget.isDark==true ? Colors.white : Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          if(index==2) {
            index = 1;
            setState(() {
              _selectedIndex = index;
              titleName();
            });
            Navigator.push(context, MaterialPageRoute(builder: (context) => Solutions(),));
          }
          else {
            setState(() {
              _selectedIndex = index;
              titleName();
            });
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
            label: "Updates",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Books",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined,),
              label: "Solution",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: "Ref Book",
          ),
        ],

      ),
    );
  }
}
