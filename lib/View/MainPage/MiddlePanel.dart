import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:test_app/View/MainPage/SearchPanel.dart';

class MiddlePanel {
  Widget CreateMiddlePanel(BuildContext context) {
    SearchPanel searchPanel = SearchPanel();
    return Row(
      children: [
        SizedBox(
            height: 48,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                      bounce: true,
                      context: context,
                      builder: (context) =>
                          searchPanel.CreateSearchPanel(context));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            )),
        const SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              height: 48,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  fillColor: Theme.of(context).cardColor.withOpacity(0.4),
                  filled: true,
                  hintText: 'Your phone number',
                  hintStyle: const TextStyle(color: Color(0xFF7886B8)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).cardColor.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).cardColor.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
