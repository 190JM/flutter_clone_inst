import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_inst/src/components/avatar_widget.dart';
import 'package:flutter_clone_inst/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
              type: AvatarType.TYPE3,
              nickname: '신유',
              size: 40,
              thumbPath:
                  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAyMTBfNDUg%2FMDAxNzA3NTcwNTMyNzMz.kA-E0jpjsnF-nOqUpsY98oWtznJrp0KnNvth7VsXbuUg.Brwd_e1Octl2Y2y2g0nFRGD4xoGYedeLJ_jGsJIGxuIg.JPEG.loveydeeply%2F20240205%25A3%25DF164132%25A3%25DF20240210%25A3%25DF000339.jpg&type=sc960_832'),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://i.namu.wiki/i/rw-1dTpBfh5frYEaEbkCjiS1esVxxomPBF5YWENOVQ1yRJnBSsWE5w9UvSXBOZINeVBmckP3LR5nvc8uqdxRGg.webp');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 75,
              ),
              const SizedBox(width: 15),
              ImageData(
                IconsPath.replyIcon,
                width: 70,
              ),
              const SizedBox(width: 15),
              ImageData(
                IconsPath.directMessage,
                width: 65,
              )
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 60,
          )
        ],
      ),
    );
  }

  Widget _infoDescripton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '좋아요 150개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            '내가 S면 넌 나의 N이 되어줘\n내가 S면 넌 나의 N이 되어줘\n내가 S면 넌 나의 N이 되어줘\n내가 S면 넌 나의 N이 되어줘',
            prefixText: '투어스',
            onPrefixTap: () {
              print('투어스 페이지 이동');
            },
            prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            expandText: '더보기',
            collapseText: '접기',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          '댓글 999개 모두 보기',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        '1일전',
        style: TextStyle(color: Colors.grey, fontSize: 11),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          const SizedBox(
            height: 10,
          ),
          _image(),
          const SizedBox(
            height: 10,
          ),
          _infoCount(),
          const SizedBox(
            height: 5,
          ),
          _infoDescripton(),
          const SizedBox(
            height: 5,
          ),
          _replyTextBtn(),
          const SizedBox(
            height: 5,
          ),
          _dateAgo(),
        ],
      ),
    );
  }
}
