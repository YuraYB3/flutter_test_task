import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';

class SearchPanel {
  Widget CreateSearchPanel(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF8EAAFB),
      ),
      height: 650,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Country code",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close_sharp),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: SizedBox(
              height: 48,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  fillColor: Theme.of(context).cardColor.withOpacity(0.4),
                  filled: true,
                  hintText: 'Search',
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
      ]),
    );
  }
}
