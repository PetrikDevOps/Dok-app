import 'package:flutter/cupertino.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Tasks'),
          ),
        ],
        body: CupertinoListSection.insetGrouped(
          header: const Text('Your tasks'),
          children: const [
            CupertinoListTile.notched(
              title: Text('Mosd el a tanyerokat XD'),
              trailing: CupertinoListTileChevron(),
              leading: Icon(
                CupertinoIcons.xmark,
                color: CupertinoColors.systemRed,
              ),
            ),
            CupertinoListTile.notched(
              title: Text('Fuss 17 kort a keleti palyaudvarnal'),
              trailing: CupertinoListTileChevron(),
              leading: Icon(
                CupertinoIcons.check_mark,
                color: CupertinoColors.systemGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
