import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_style.dart';

class InputNumOfPlayers extends StatefulWidget {
  const InputNumOfPlayers({super.key});

  @override
  State<InputNumOfPlayers> createState() => _InputNumOfPlayersState();
}

class _InputNumOfPlayersState extends State<InputNumOfPlayers> {
  int numOfPlayers = 2;

  void _addPlayer() {
    if (numOfPlayers < 30) {
      setState(() {
        numOfPlayers++;
      });
    }
  }

  void _removePlayer() {
    if (numOfPlayers > 2) {
      setState(() {
        numOfPlayers--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Numbers of players', style: AppTextStyle.text7),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.only(left: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const Icon(Icons.group_outlined, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                '$numOfPlayers players',
                style: AppTextStyle.text8,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _removePlayer,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                ),
                child: const Center(
                  child: Icon(Icons.remove, size: 30),
                ),
              ),
              ElevatedButton(
                onPressed: _addPlayer,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                ),
                child: const Center(
                  child: Icon(Icons.add, size: 30),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
