import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key,
      required this.completed,
      required this.important,
      required this.description,
      required this.task,
      required this.repeat});
  final bool completed;
  final bool important;
  final bool repeat;
  final String task;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        //top row: completed, task, description and important
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //show completed icon
            IconButton(
              onPressed: () {},
              icon: completed
                  ? Icon(
                      Icons.check,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : Icon(
                      Icons.circle_outlined,
                      color: Theme.of(context).colorScheme.outline,
                    ),
            ),

            //show task and description
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ],
            ),

            const Spacer(),
            //show important icon
            IconButton(
              onPressed: () {},
              icon: important
                  ? Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : const Icon(Icons.star_outline),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(right: 108),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Today ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                ' 08:00  ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Icon(
                Icons.repeat_outlined,
                size: 18,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
