import 'package:flutter/material.dart';
import 'package:flutter_application/components/my_list_tile.dart';
import 'package:flutter_application/components/my_textfield.dart';
import 'package:flutter_application/providers/home_page_view_model.dart';
import 'package:flutter_application/utils/language/my_string_words.dart';
import 'package:flutter_application/utils/style/my_paddings.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyStringWords.appBarTitle),
      ),
      body: Padding(
        padding: Paddings.horizontalPadding,
        child: _buildColumn,
      ),
    );
  }

  Widget get _buildColumn => Column(
        children: [
          _buildTextField(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: _buildConsumer,
          ),
        ],
      );

  Widget get _buildConsumer => Consumer<HomePageViewModel>(
        builder: (context, viewModel, child) {
          return ListView.builder(
            itemCount: viewModel.noteList.length,
            itemBuilder: (context, index) {
              var note = viewModel.noteList[index];
              return MyListTile(
                title: note.title,
                onPressed: () {
                  viewModel.deleteNote(index);
                  viewModel.getNotes();
                },
              );
            },
          );
        },
      );

  Widget _buildTextField() {
    HomePageViewModel model = Provider.of<HomePageViewModel>(context, listen: false);
    return MyTextField(
      controller: _controller,
      hintText: MyStringWords.textFieldHintText,
      onPressed: () {
        model.createNote(_controller.text);
        model.getNotes();
        _controller.clear();
      },
    );
  }
}
