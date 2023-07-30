import 'package:flutter/material.dart';

class WorkButton extends StatelessWidget {
  const WorkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // print('🏐 fired');
        // final db = FirebaseFirestore.instance;
        // final city = <String, String>{"name": "Los Angeles", "state": "CA", "country": "USA"};
        // db.collection("cities").doc("LA").set(city).onError((e, _) => print("Error writing document: $e"));
        // final data = await db.collection('user').get();
        // for (final item in data.docs) {
        //   final data = item.data();
        //   print('🏐 data : ${data}');
        //   // await db.collection('user').doc('intraector').collection('projects').doc(controller.text).set(
        //   //   {
        //   //     'id': controller.text,
        //   //   },
        //   // ).onError(Log.error);
        // }
      },
      child: const Text(
        'Add Project',
      ),
    );
  }
}
