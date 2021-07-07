import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget();

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final textController = TextEditingController();
  var _showCancelError = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Platform.isIOS
          ? CupertinoSearchTextField(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              backgroundColor: Colors.white,
              itemColor: ColorPalette.CATEGORY_BG_COLOR,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            )
          : TextField(
              controller: textController,
              onChanged: (_) {
                setState(() {
                  _showCancelError = true;
                });
              },
              decoration: InputDecoration(
                hintText: 'search',
                prefixIcon: Icon(
                  Icons.search_rounded,
                  size: 30,
                  color: ColorPalette.CATEGORY_BG_COLOR,
                ),
                suffixIcon: _showCancelError && textController.text.isNotEmpty
                    ? IconButton(
                        onPressed: () {
                          textController.clear();
                          setState(() {
                            _showCancelError = false;
                          });
                        },
                        icon: Icon(
                          Icons.cancel,
                          size: 25,
                          color: ColorPalette.CATEGORY_BG_COLOR,
                        ),
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
    );
  }
}
