import 'package:flutter/material.dart';

class DietaItem extends StatelessWidget {

  final String link;
  
  final String title;
  
 final  String description;

 DietaItem({
    super.key, required this.link, required this.title, required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Color.fromRGBO(0, 26, 78, 0.5),
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          ListTile(
            leading: Image.network(
              link,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(description),
          ),
        ],
      ),
    );
  }
}
