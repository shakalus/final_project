import 'package:final_project/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, Character>(
      converter: (Store<AppState> store) => store.state.selectedCharacter!,
      builder: (BuildContext context, Character character) {
        final Character character = store.state.selectedCharacter!;
        return Scaffold(
          appBar: AppBar(
            title: Text(
              '${character.name} (${character.status})',
              style: const TextStyle(color: Colors.white),
            ),
            elevation: 0,
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                  character.mediumImage,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: <Widget>[
                  Text(
                    ' Name: ${character.name} ',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' Status: ${character.status} ',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' species: ${character.species}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' type: ${character.type}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' gender: ${character.gender} ',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
