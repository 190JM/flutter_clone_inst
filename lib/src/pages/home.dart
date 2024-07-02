import 'package:flutter/material.dart';
import 'package:flutter_clone_inst/src/components/avatar_widget.dart';
import 'package:flutter_clone_inst/src/components/image_data.dart';
import 'package:flutter_clone_inst/src/components/post_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
          thumbPath:
              'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAzMTNfMjY2%2FMDAxNzEwMzA4MzczNTg3.e9IkZK9eGU5i8_4O23ONptDe6NTbHm4EadRIMupRCeUg.Fx2Uiw2oTor5CvgfLQx4f7OB175WFrdo1QTX5hGS5_Yg.JPEG%2F%25C0%25A9%25C5%25CD%25C1%25DF%25B4%25DC%25B9%25DF.jpg&type=sc960_832',
          size: 70,
        ),
        Positioned(
            right: 5,
            bottom: 0,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2)),
              child: const Center(
                child: Text(
                  '+',
                  style:
                      TextStyle(fontSize: 20, color: Colors.white, height: 1.1),
                ),
              ),
            ))
      ],
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20),
          _myStory(),
          const SizedBox(width: 5),
          ...List.generate(
              100,
              (index) => AvatarWidget(
                  type: AvatarType.TYPE1,
                  thumbPath:
                      'https://cdn.hankyung.com/photo/202403/01.36047379.1.jpg'))
        ],
      ),
    );
  }

  Widget _postList() {
    return Column(
      children: List.generate(50, (index) => PostWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(
          IconsPath.logo,
          width: 300,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(
                IconsPath.directMessage,
                width: 60,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }
}
