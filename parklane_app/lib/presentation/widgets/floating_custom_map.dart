import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.home_rounded, color: Colors.amber),
          ),
          FloatingActionButton.extended(
              backgroundColor: Colors.white,
              onPressed: null,
              icon: Container(
                color: Colors.black,
                child: Icon(Icons.car_rental_rounded, color: Colors.white),
              ),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Vehicle',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      'MH12KD232'.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
