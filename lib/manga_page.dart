import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class MangaPage extends StatelessWidget {
  const MangaPage({super.key});

  @override
  /// The root widget of the app.
  ///
  /// This widget builds a [Scaffold] with a [SingleChildScrollView] as its
  /// body. The [SingleChildScrollView] contains a [Column] with several
  /// children, including an [ImageSection], a [MainTitle], several
  /// [TitleSection]s, a [ButtonSection], an [ExpandableDescription], a
  /// [HorizontalElevatedButton], and a [ListView].
  ///
  /// The [Scaffold] also has a [FloatingActionButton] that is extended with
  /// a [Text] and an [Icon].
  ///
  /// The method returns the [Scaffold].
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // color: Colors.blue,
              height: 190,
              child: Row(
                children: [
                  Container(
                    width: 117,
                    padding: const EdgeInsets.only(left: 10),
                    // color: Colors.green,
                    child: const ImageSection(
                        image:
                            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1617389215i/55575967.jpg'),
                  ),
                  const SizedBox(
                    // color: Colors.yellow,
                    width: 185,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MainTitle(main: 'Chainsaw Man'),
                        TitleSection(
                            icon: Icons.person_outlined,
                            title: 'Tatsuki Fujimoto'),
                        TitleSection(
                            icon: Icons.access_time_rounded,
                            title: 'Ongoing . Mangakalot')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              // color: Colors.purple,
              height: 60,
              child: ButtonSection(),
            ),
            const SizedBox(height: 3),
            const SizedBox(
              // color: Colors.red,
              child: ExpandableDescription(
                description:
                    "When his father died, Denji was stuck with a huge debt and no way to pay it back. "
                    "Thanks to a Devil dog he saved named Pochita, he's able to survive through odd jobs, "
                    "killing Devils for the Yakuza. Pochita's chainsaw powers come in handy against these powerful demons. "
                    "When the Yakuza betrays him and he's killed by the Zombie Devil.",
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: HorizontalElevatedButton(
                items: const [
                  'Shounen',
                  'Action',
                  'Drama',
                  'Supernatural',
                  'Comedy',
                ],
                onItemPressed: (item) {
                  ('Pressed: $item');
                },
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          '198 chapters',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        // height: 400,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const Icon(
                                Icons.brightness_1_rounded,
                                size: 10,
                                color: Colors.deepPurple,
                              ),
                              minLeadingWidth: 3,
                              title: Text(
                                'Chapter ${index + 1}',
                                style: const TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              subtitle: Text(
                                '2024/02/${19 + index}',
                                style: const TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 11,
                                ),
                              ),
                              trailing: const Icon(Icons.downloading_rounded),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow_rounded,
          color: Colors.white,
        ),
        label: const Text(
          'Start',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});
  final String image;

  @override

  /// Returns a [ClipRRect] widget with a rounded rectangle border containing
  /// a [Image] widget displaying the given [image] URL.
  ///
  /// The image is displayed with a height of 160 and a width of 20 with
  /// [BoxFit.cover] so that it is fully visible.
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        height: 160,
        width: 20,
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.icon, required this.title});

  final String title;
  final IconData icon;

  @override

  /// A title section of a manga page.
  ///
  /// This displays a row with an icon on the left and a centered text on the
  /// right. The icon is given by [icon] and the text is given by [title]. The
  /// icon is given a size of 19 and the text is given a font size of 11 and a
  /// font weight of 500. The row is also given a padding of 5.0 all around.
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 19,
          ),
          const SizedBox(width: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.main});
  final String main;

  @override

  /// A main title of a manga page.
  //
  /// This displays a centered text with a font size of 20 and a font weight
  /// of 500. The text is given by [main].
  //
  /// The text is also given a padding of 5.0 all around.
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        main,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override

  /// Builds a row of buttons with icons and labels arranged evenly spaced.
  ///
  /// Each button is represented by a [ButtonWithText] widget which includes
  /// an icon and a label. The icons used are [Icons.favorite_border],
  /// [Icons.hourglass_empty], [Icons.repeat], and [Icons.web_asset].
  /// The color of the icons and labels is set to a shade of grey.

  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: Colors.grey.shade600,
            icon: Icons.favorite_border,
            label: 'In library',
          ),
          ButtonWithText(
            color: Colors.grey.shade600,
            icon: Icons.hourglass_empty,
            label: '0 days',
          ),
          ButtonWithText(
            color: Colors.grey.shade600,
            icon: Icons.repeat,
            label: 'Tracking',
          ),
          ButtonWithText(
            color: Colors.grey.shade600,
            icon: Icons.web_asset,
            label: 'WebView',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override

  /// Returns a column with a centered icon and a text below it.
  ///
  /// The icon is given by [icon] and the text is given by [label]. The color
  /// of both is given by [color].
  ///
  /// The icon is given a size of 18 and the text is given a font size of 11.
  /// The text is also given a font weight of 400.
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: color,
          size: 18,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class ExpandableDescription extends StatelessWidget {
  const ExpandableDescription({super.key, required this.description});

  final String description;

  @override

  /// A [Card] containing an [ExpandablePanel] with a description header and
  /// a description body. The description is shown in a collapsed state with
  /// an ellipsis and a maximum of 3 lines if it is longer than 3 lines. When
  /// expanded, the description is shown in full. The [Card] has a margin of
  /// 16.0 on both sides and is colored with [Colors.purple[100]].
  ///
  /// The [ExpandablePanel] has an icon on the right and is themed with
  /// [ExpandableThemeData] with [hasIcon] set to true and
  /// [iconPlacement] set to [ExpandablePanelIconPlacement.right].
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple[100],
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ExpandablePanel(
        header: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Description',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        collapsed: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        expanded: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description),
        ),
        theme: const ExpandableThemeData(
          hasIcon: true,
          iconPlacement: ExpandablePanelIconPlacement.right,
        ),
      ),
    );
  }
}

class HorizontalElevatedButton extends StatelessWidget {
  const HorizontalElevatedButton({
    super.key,
    required this.items,
    required this.onItemPressed,
  });

  final List<String> items;
  final void Function(String) onItemPressed;

  @override

  /// Builds a horizontal list of elevated buttons.
  ///
  /// Each button is created from the `items` list, and when pressed, triggers
  /// the `onItemPressed` callback with the corresponding item. The buttons are
  /// styled with a purple background and a grey foreground, with rounded
  /// borders and a defined padding. The list is scrollable horizontally and
  /// has a symmetric separation between buttons.

  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () => onItemPressed(items[index]),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(
                  color: Colors.deepPurple,
                ),
              ),
              padding: const EdgeInsets.all(7),
              backgroundColor: Colors.purple[100],
              foregroundColor: Colors.grey[800],
            ),
            child: Text(
              items[index],
              style: const TextStyle(fontSize: 11),
            ),
          );
        },
      ),
    );
  }
}
