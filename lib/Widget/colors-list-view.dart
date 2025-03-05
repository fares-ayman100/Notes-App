import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Cubit/notes/notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final Color color;

  @override
  final bool isActive;

  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          child: CircleAvatar(backgroundColor: color, radius: 35),
        )
        : CircleAvatar(backgroundColor: color, radius: 40);
  }
}

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<Color> colors = [
    Color(0xffFAD4D8),
    Color(0xffB4CEB3),
    Color(0xffE2A3C7),
    Color(0xffA8DCD9),
    Color(0xff9BB291),
    Color(0xff235789),
    Color(0xffE4E6C3),
  ];
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentSelect = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              isActive: currentSelect == index,
              color: colors[index],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: colors.length,
      ),
    );
  }
}
