import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  //final TextEditingController controller;
  //final void Function(String) onChanged;
  const SearchBar({
    Key? key,
    //this.controller,
    //this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      //width: 400,
      height: 50,
      child: TextField(
        //onChanged: onChanged,
        cursorColor: Colors.blue,
        //controller: controller,
        decoration: InputDecoration(
            labelText: 'Search Image',
            hintText: 'Virtue 검색',
            labelStyle: TextStyle(fontSize: 20, color: Colors.black),
            border: InputBorder.none,
            icon: Padding(
              padding: EdgeInsets.only(left: 13),
              child: Icon(Icons.search),
            )),
      ),
    );
  }
}
