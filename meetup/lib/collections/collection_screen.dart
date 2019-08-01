import 'package:flutter/material.dart';

class CollectionsScreen extends StatefulWidget {
  CollectionsScreen({Key key}) : super(key: key);

  _CollectionsScreenState createState() => _CollectionsScreenState();
}

class _CollectionsScreenState extends State<CollectionsScreen> {
  List<Person> people = List();

  @override
  void initState() {
    addData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (BuildContext context, int index) {
          Person person = people[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(person.url),
              backgroundColor: Colors.transparent,
              radius: 20,
            ),
            title: Text("${person.name}"),
          );
        },
      ),
    );
  }



  void addData() {
    people.add(
        Person(1, "Sanath", "https://randomuser.me/api/portraits/men/44.jpg"));
    
    people.add(
        Person(2, "Kamal", "https://randomuser.me/api/portraits/men/74.jpg"));
    
    people.add(
        Person(3, "Sarath", "https://randomuser.me/api/portraits/men/39.jpg"));
    
    people.add(
        Person(4, "Sameera", "https://randomuser.me/api/portraits/men/20.jpg"));
    
    people.add(Person(
        5, "Jayampathi", "https://randomuser.me/api/portraits/men/65.jpg"));
    
    people.add(Person(
        6, "Thushara", "https://randomuser.me/api/portraits/men/52.jpg"));
    
    people.add(
        Person(7, "Dhara", "https://randomuser.me/api/portraits/women/13.jpg"));
    
    people.add(
        Person(8, "Danushka", "https://randomuser.me/api/portraits/men/0.jpg"));
    
    people.add(
        Person(8, "Chamila", "https://randomuser.me/api/portraits/women/68.jpg"));
    
    people.add(
        Person(8, "Sumana", "https://randomuser.me/api/portraits/women/54.jpg"));
    
    people.add(
        Person(8, "Karuna", "https://randomuser.me/api/portraits/women/71.jpg"));
  }

}

class Person {
  final int id;
  final String name;
  final String url;
  Person(this.id, this.name, this.url);
}

/**
 * 
 ListView(
        children: List.generate(40, (index) {
          return ListTile(
            title: Text("${index}"),
          );
        }),
      ),
 */


