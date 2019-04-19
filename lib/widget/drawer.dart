import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      
      child:  Container(
        decoration: BoxDecoration(color: Color(0xff131313)),
        child: ListView(
        children: <Widget>[
           SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             
        Row(children: <Widget>[ SizedBox(width: 10,), Image(image: NetworkImage("https://mir-s3-cdn-cf.behance.net/project_modules/disp/366be133850498.56ba69ac36858.png"),height: 60,),
           SizedBox(width: 10,),  Text("Yusuf",style: TextStyle(color: Colors.white70), ),],) , 
            IconButton(
              icon: Icon(Icons.swap_horiz,color:Colors.white70),
              onPressed: (){},
            )
          ],),
          Divider(color: Colors.white70,height: 16.0,),
          Row(children: <Widget>[
            Icon(Icons.arrow_downward,color:Colors.white70),
            SizedBox(width: 10,),
            Text("我的下载",style: TextStyle(color: Colors.white70),)
          ],),
           Divider(color: Colors.white70,height: 16.0,),
           buildTitle("主页"),
           buildTitle("提供下载"),
           buildTitle("Netflix 原创作品"),
           buildTitle("剧集"),
           buildTitle("动漫"),
           buildTitle("独立电影"),
           buildTitle("犯罪"),
           buildTitle("国际电影"),
           buildTitle("获奖电影"),
           buildTitle("纪录片"),
           buildTitle("惊悚片"),
           buildTitle("剧情片"),
           buildTitle("科幻与奇幻"),
           buildTitle("恐怖片"),
           buildTitle("动作片"),
           buildTitle("美国"),
           buildTitle("少儿与家庭类电影"),
           buildTitle("喜剧片"),
           buildTitle("音乐与音乐剧"),
           buildTitle("音频描述"),
           Divider(color: Colors.white70,height: 16.0,),
           buildTitle("APP 设置"),
           buildTitle("账户"),
           buildTitle("关于"),
           buildTitle("帮助"),
           buildTitle("注销"),


        ],
        ),
      )
    );
  }
  Widget buildTitle(title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(children: <Widget>[
        SizedBox(width: 10,),
        Text(title,style: TextStyle(color: Colors.white70,fontSize: 18))
      ],),
    ) ;
  }
}