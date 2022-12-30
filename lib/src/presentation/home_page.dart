import 'package:final_project/src/actions/index.dart';
import 'package:final_project/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    _store = StoreProvider.of<AppState>(context, listen: false);
  }

  void _onScroll() {
    final double offset = _controller.offset;
    final double maxScrollExtent = _controller.position.maxScrollExtent;
    if (offset > maxScrollExtent - MediaQuery.of(context).size.height && !_store.state.isLoading) {
      _store.dispatch(const GetCharacters());
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        final List<Character> characters = state.character;
        final bool isLoading = state.isLoading;

        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Center(
              child: Text(
                'Characters',
                style: TextStyle(color: Colors.white),
              ),
            ),
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              _store.dispatch(const GetCharacters());
              await _store.onChange.where((AppState state) => !state.isLoading).first;
            },
            child: ListView.builder(
              controller: _controller,
              itemCount: characters.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (characters.length == index) {
                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }
                final Character character = characters[index];
                final bool isLiked = state.liked.contains(character.id);
                return GestureDetector(
                  onTap: () {
                    _store.dispatch(SetSelectedCharacter(character));
                    Navigator.pushNamed(
                      context,
                      '/characterDetails',
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Center(
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            character.mediumImage,
                          ),
                          IconButton(
                            onPressed: () {
                              _store.dispatch(UpdateLike(character.id, like: !isLiked));
                            },
                            icon: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              color: isLiked ? Colors.red : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
