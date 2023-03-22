import 'package:source_ui/source_ui.dart';
import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          const SFText.headingOne('Design System'),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ...buttonWidgets,
          ...textWidgets,
          ...inputFields,
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        const SFText.headline('Text Styles'),
        verticalSpaceMedium,
        const SFText.headingOne('Heading One'),
        verticalSpaceMedium,
        const SFText.headingTwo('Heading Two'),
        verticalSpaceMedium,
        const SFText.headingThree('Heading Three'),
        verticalSpaceMedium,
        const SFText.headline('Headline'),
        verticalSpaceMedium,
        const SFText.subheading('This will be a sub heading to the headling'),
        verticalSpaceMedium,
        SFText.body('Body Text that will be used for the general body'),
        verticalSpaceMedium,
        const SFText.caption(
            'This will be the caption usually for smaller details'),
        verticalSpaceMedium,
      ];

  List<Widget> get buttonWidgets => [
        const SFText.headline('Buttons'),
        verticalSpaceMedium,
        SFText.body('Normal'),
        verticalSpaceSmall,
        const SFButton(title: 'SIGN IN'),
        verticalSpaceSmall,
        SFText.body('Disabled'),
        verticalSpaceSmall,
        const SFButton(title: 'SIGN IN', disabled: true),
        verticalSpaceSmall,
        SFText.body('Busy'),
        verticalSpaceSmall,
        const SFButton(title: 'SIGN IN', busy: true),
        verticalSpaceSmall,
        SFText.body('Outline'),
        verticalSpaceSmall,
        const SFButton.outline(
          title: 'Select location',
          leading: Icon(Icons.send, color: sfPrimaryColor),
        ),
        verticalSpaceMedium,
      ];

  List<Widget> get inputFields => [
        const SFText.headline('Input Field'),
        verticalSpaceSmall,
        SFText.body('Normal'),
        verticalSpaceSmall,
        SFInputField(
          controller: TextEditingController(),
          placeholder: 'Enter Password',
        ),
        verticalSpaceSmall,
        SFText.body('Leading Icon'),
        verticalSpaceSmall,
        SFInputField(
          controller: TextEditingController(),
          leading: const Icon(Icons.reset_tv),
          placeholder: 'Enter TV Code',
        ),
        verticalSpaceSmall,
        SFText.body('Trailing Icon'),
        verticalSpaceSmall,
        SFInputField(
          controller: TextEditingController(),
          trailing: const Icon(Icons.clear_outlined),
          placeholder: 'Search for things',
        ),
      ];
}
