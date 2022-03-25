import 'package:flutter/material.dart';

void main() => runApp(const Weather());

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 27, 56, 105),
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "weather fastfood",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: const Icon(
            Icons.lunch_dining_rounded,
            size: 40,
          ),
        ),
        body: Column(
          children: const <Widget>[
            LocationSearchBlock(),
            Location(),
            WeatherData(),
            WpapAndChips(),
            NextDaysWeather(),
          ],
        ),
      ),
    );
  }
}

class LocationSearchBlock extends StatelessWidget {
  const LocationSearchBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      color: Colors.blue[900],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Icon(
            Icons.local_pizza_rounded,
            color: Colors.white,
          ),
          //-----------------------------------
          SizedBox(
            width: 15,
          ),
          //-----------------------------------

          Text(
            "Add Your Location",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      color: Colors.orangeAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const <Widget>[
              Text(
                "RSO-A, Vladikavkaz",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //---------------------------------------
              SizedBox(
                height: 8,
              ),
              //---------------------------------------
              Text(
                "Wednesday, March 23, 2023",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class WeatherData extends StatelessWidget {
  const WeatherData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 10,
      ),
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Icon(
            Icons.cookie_rounded,
            color: Colors.white,
            size: 100,
          ),
          //--------------------------------
          const SizedBox(width: 30, height: 15),
          //--------------------------------
          Column(
            children: const <Widget>[
              Text(
                "25° С",
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              Text(
                "sunny day \nand \ndelicious cookies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class WpapAndChips extends StatelessWidget {
  const WpapAndChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[200],
      padding: const EdgeInsets.only(bottom: 18),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 20,
        spacing: 40,
        children: <Widget>[
          //--------Роу растягивает во всю ширину
          Row(),
          //-------------------------------------------------1
          Chip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            labelPadding: const EdgeInsets.all(5),
            backgroundColor: Colors.orangeAccent,
            label: const Text(
              "24° С",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            avatar: const Icon(
              Icons.breakfast_dining,
              size: 30,
              color: Colors.white,
            ),
          ),
          //-------------------------------------------------2
          Chip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            labelPadding: const EdgeInsets.all(5),
            backgroundColor: Colors.orangeAccent,
            label: const Text(
              "25° С",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            avatar: const Icon(
              Icons.fastfood_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          //-------------------------------------------------3
          Chip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            labelPadding: const EdgeInsets.all(5),
            backgroundColor: Colors.orangeAccent,
            label: const Text(
              "26° С",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            avatar: const Icon(
              Icons.eco_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class NextDaysWeather extends StatelessWidget {
  const NextDaysWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "7 DAY Weather Fastfood",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(),
        Container(
          height: 150,
          width: 500,
          color: Colors.orange,
          //-----------------------------
          child: ListView(
            itemExtent: 200,
            //shrinkWrap: true,
            //addAutomaticKeepAlives: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              ListTile(
                title: Text("Thursday"),
                subtitle: Text("Pizza Day"),
                leading: Icon(
                  Icons.local_pizza,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              ListTile(
                title: Text("Friday"),
                subtitle: Text("Pasta Italiano"),
                leading: Icon(
                  Icons.food_bank,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              ListTile(
                title: Text("Saturday"),
                subtitle: Text("Burger & Coke"),
                leading: Icon(
                  Icons.fastfood,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              ListTile(
                title: Text("Sunday"),
                subtitle: Text("Coffe time"),
                leading: Icon(
                  Icons.coffee,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              ListTile(
                title: Text("Tuesday"),
                subtitle: Text("Only breakfast"),
                leading: Icon(
                  Icons.breakfast_dining,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
