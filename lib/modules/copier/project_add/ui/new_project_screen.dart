import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/_shared/widgets/text_fields/app_textfield/app_textfield.dart';
import '../../../../core/l10n/generated/l10n.dart';
import '../../../../core/l10n/l10n_helper.dart';
import '../../../../core/theme/themes/_interface/app_theme.dart';
import '../data/vm/new_project_vm.dart';
import 'widgets/new_project_builder.dart';

class NewProjectScreen extends StatefulWidget {
  const NewProjectScreen({super.key});

  @override
  State<NewProjectScreen> createState() => _NewProjectScreenState();
}

class _NewProjectScreenState extends State<NewProjectScreen> {
  late final AppTextfield name = AppTextfield(
    data: AppTextfieldData(
      hintText: S.current.projectName,
    ),
  );

  late final AppTextfield text = AppTextfield(
    data: AppTextfieldData(
      expands: true,
      hintText: S.current.enterText,
    ),
  );

  @override
  void dispose() {
    name.dispose();
    text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.s.addProject),
      ),
      body: NewProjectBuilder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: name),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: context.button.elevated1,
                  onPressed: () async {
                    final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
                    text.data.controller.text = '';
                    text.data.controller.text = clipboardData?.text ?? '';
                  },
                  child: Text(context.s.paste),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Scrollbar(
                          controller: text.data.scrollController,
                          child: text,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: context.button.elevated1,
                  onPressed: () {
                    context.read<NewProjectVm>().add(
                          FromStringAddNewProject(
                            name: name.data.controller.text,
                            data: text.data.controller.text,
                          ),
                        );
                  },
                  child: Text(context.s.addProject),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
