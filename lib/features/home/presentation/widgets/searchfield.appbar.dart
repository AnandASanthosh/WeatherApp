import 'package:flutter/material.dart';

class SearchfieldAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged<String> onSubmitted;

  SearchfieldAppBar({super.key, required this.onSubmitted});

  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: TextFormField(
              onFieldSubmitted: _onSubmitted,
              controller: controller,
              validator: _validator,
              onChanged: (value) {
                if (formKey.currentState?.validate() == null) {
                  formKey.currentState?.reset();
                }
              },
              onTapOutside: (_) {
                FocusScope.of(context).unfocus();
              },
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'Search for a city',
                suffixIcon: IconButton(
                  onPressed: () {
                    _onSubmitted(controller.text);
                  },
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _validator(value) {
    if (value!.isEmpty) {
      return 'Please enter a city';
    }
    return null;
  }

  void _onSubmitted(String value) {
    if (formKey.currentState?.validate() ?? false) {
      controller.clear();
      FocusScope.of(formKey.currentContext!).unfocus();
      onSubmitted(value);
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
