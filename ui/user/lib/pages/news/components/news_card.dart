import 'package:flutter/cupertino.dart';
import 'package:user/pages/profile/profile.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
      {required this.title,
      required this.description,
      required this.imageUrl,
      super.key});
  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: CupertinoButton(
              borderRadius: BorderRadius.circular(8.0),
              color: CupertinoColors.secondarySystemBackground,
              padding: EdgeInsets.zero,
              // ##############################################################################################
              // #                                                                                            #
              // #  For now we just redirect to Profile but later we will redirect to the news details view.  #
              // #                                                                                            #
              // ###
              onPressed: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const Profile(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .textStyle
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            description,
                            style:
                                CupertinoTheme.of(context).textTheme.textStyle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
