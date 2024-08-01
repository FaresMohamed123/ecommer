import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    Key? key,
    required this.title,
    required this.onPressedsearch,
    required this.onPressedIconfa,
    required this.onChangedSearch,
    required this.onPressedIconnotif, required this.mycontroller,
  }) : super(key: key);
  final String title;
  final void Function()? onPressedIconnotif;
  final void Function()? onPressedsearch;
  final void Function()? onPressedIconfa;
  final void Function(String)? onChangedSearch;
  final TextEditingController mycontroller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: mycontroller,
              onChanged: onChangedSearch,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: onPressedsearch,
                  icon: const Icon(Icons.search),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                hintText: title,
                hintStyle: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: onPressedIconnotif,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: onPressedIconfa,
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
