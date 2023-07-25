import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/logger.dart';

class AddProjectScreen extends StatefulWidget {
  const AddProjectScreen({super.key});

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  final controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Name',
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Enter project name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                print('🏐 fired');
                final db = FirebaseFirestore.instance;
                // final city = <String, String>{"name": "Los Angeles", "state": "CA", "country": "USA"};
                // db.collection("cities").doc("LA").set(city).onError((e, _) => print("Error writing document: $e"));
                final data = await db.collection('user').get();
                for (final item in data.docs) {
                  final data = item.data();
                  print('🏐 data : ${data}');
                  // await db.collection('user').doc('intraector').collection('projects').doc(controller.text).set(
                  //   {
                  //     'id': controller.text,
                  //   },
                  // ).onError(Log.error);
                }
              },
              child: const Text(
                'Add Project',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
