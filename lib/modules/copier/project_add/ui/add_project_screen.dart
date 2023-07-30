import 'package:flutter/material.dart';

import '../../../../core/_shared/widgets/text_fields/app_textfield/app_textfield.dart';
import '../../../../core/theme/themes/_interface/app_theme.dart';
import 'widgets/vm.dart';

class AddProjectScreen extends StatefulWidget {
  const AddProjectScreen({super.key});

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  late final Vm vm;

  @override
  void dispose() {
    vm.dispose();
    super.dispose();
  }

  @override
  void initState() {
    vm = Vm(
      name: AppTextfield(
        data: AppTextfieldData(
          hintText: 'Enter project name',
        ),
      ),
      text: AppTextfield(
        data: AppTextfieldData(
          expands: true,
          hintText: 'Enter text',
        ),
      ),
    );
    super.initState();
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
                Expanded(child: vm.name),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: context.button.elevated1,
              onPressed: () => vm.paste(),
              child: const Text('Paste'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Scrollbar(
                      controller: vm.text.data.scrollController,
                      child: vm.text,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: context.button.elevated1,
              onPressed: () {
                Navigator.of(context).pop();
                vm.onAdd();
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
