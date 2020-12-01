import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoApp/model/database.dart';
import 'package:todoApp/pages/add_event_page.dart';
import 'package:todoApp/pages/add_task_page.dart';
import 'package:todoApp/pages/event_page.dart';
import 'package:todoApp/pages/task_page.dart';
import 'package:todoApp/widgets/custom_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<Database>(create: (_) => Database())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.red, fontFamily: "Montserrat"),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();

  double currentPage = 0;

  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 35,
            color: Theme.of(context).accentColor,
          ),
          Positioned(
            right: 0,
            child: Text(
              "6",
              style: TextStyle(fontSize: 200, color: Color(0x10000000)),
            ),
          ),
          _mainContent(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                    child: currentPage == 0 ? AddTaskPage() : AddEventPage(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))));
              });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            "Monday",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: _button(context),
        ),
        Expanded(
            child: PageView(
          controller: _pageController,
          children: <Widget>[TaskPage(), EventPage()],
        ))
      ],
    );
  }

  Widget _button(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: CustomButton(
          onPressed: () {
            _pageController.previousPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.bounceInOut);
          },
          buttonText: "Tasks",
          color:
              currentPage < 0.5 ? Theme.of(context).accentColor : Colors.white,
          textColor:
              currentPage < 0.5 ? Colors.white : Theme.of(context).accentColor,
          borderColor: currentPage < 0.5
              ? Colors.transparent
              : Theme.of(context).accentColor,
        )),
        SizedBox(
          width: 32,
        ),
        Expanded(
            child: CustomButton(
          onPressed: () {
            _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.bounceInOut);
          },
          buttonText: "Events",
          color:
              currentPage > 0.5 ? Theme.of(context).accentColor : Colors.white,
          textColor:
              currentPage > 0.5 ? Colors.white : Theme.of(context).accentColor,
          borderColor: currentPage > 0.5
              ? Colors.transparent
              : Theme.of(context).accentColor,
        ))
      ],
    );
  }
}
