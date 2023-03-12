import 'package:flutter/material.dart';

class BuildButtons {
  Widget buildNumberButton(String number) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            number,
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
      ),
    );
  }

  Widget buildButtonSpecific() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          SizedBox(
            height: 46,
            child: TextButton(
              onPressed: () {},
              child: const Text(''),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDeleteButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          SizedBox(
            height: 46,
            child: TextButton(
              onPressed: () {},
              child: const Center(
                child: Icon(
                  Icons.backspace_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
