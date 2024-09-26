import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TweetWidget extends StatelessWidget {
  final String userShortName;
  final String userLongName;
  final String timeString;
  final String description;
  final String imageURL;
  final String iconURL;
  final int numComments;
  final int numRetweets;
  final int numLikes;

  const TweetWidget(
      this.userLongName,
      this.userShortName,
      this.timeString,
      this.description,
      this.imageURL,
      this.iconURL,
      this.numComments,
      this.numLikes,
      this.numRetweets, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(iconURL),
        ),
        const Padding(padding: EdgeInsets.all(8)),
        tweetData()
      ],
    );
  }

  Widget tweetData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 300,
          child: Row(
            children: [
              Text(
                userLongName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Image.network(
                "http://i.bungo.ca/u/IUUnge.png",
                height: 14,
              ),
              Text(
                "\t${userShortName} ${timeString}",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const Spacer(),
              IconButton(
                  icon: const Icon(Icons.expand_more),
                  color: Colors.grey,
                  onPressed: () {})
            ],
          ),
        ),
        SizedBox(
          width: 300,
          child: Text(
            description,
            style: const TextStyle(color: Colors.blueGrey),
          ),
        ),
        Image.network(
          imageURL,
          width: 300,
          height: 250,
        ),
        Row(
          children: [
            Row(
              children: [
                IconButton(
                    icon: const Icon(Icons.chat_bubble_outline),
                    color: Colors.grey,
                    onPressed: () {}),
                Text(
                  "$numComments",
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    icon: const Icon(Icons.repeat),
                    color: Colors.grey,
                    onPressed: () {}),
                Text(
                  "$numRetweets",
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.grey,
                    onPressed: () {}),
                Text(
                  "$numLikes",
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            IconButton(
                icon: const Icon(Icons.bookmark_border),
                color: Colors.grey,
                onPressed: () {})
          ],
        ),
      ],
    );
  }


}
