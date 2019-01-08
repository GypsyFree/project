/*
 Navicat Premium Data Transfer

 Source Server         : yuying
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : yuying

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 07/01/2019 23:04:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chatwithpeople
-- ----------------------------
DROP TABLE IF EXISTS `chatwithpeople`;
CREATE TABLE `chatwithpeople`  (
  `SendPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ReceivePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`SendPhone`, `ReceivePhone`, `time`) USING BTREE,
  INDEX `ReceivePhone`(`ReceivePhone`) USING BTREE,
  CONSTRAINT `chatwithpeople_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chatwithpeople_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chatwithpeople
-- ----------------------------
INSERT INTO `chatwithpeople` VALUES ('15650170102', '17806283016', '看得到吗\n', '2019-01-07 12:03:41');
INSERT INTO `chatwithpeople` VALUES ('15650170102', '17806283016', 'bro', '2019-01-07 12:03:44');
INSERT INTO `chatwithpeople` VALUES ('15650170102', '17806283016', '弟弟', '2019-01-07 12:03:47');
INSERT INTO `chatwithpeople` VALUES ('15650170102', '17806283016', '没了', '2019-01-07 12:04:23');
INSERT INTO `chatwithpeople` VALUES ('15650170102', '17806283016', '你快去给我评论帖子', '2019-01-07 12:04:32');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', 'nihao', '2019-01-07 05:49:16');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', '你好', '2019-01-07 05:50:00');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', '呼呼', '2019-01-07 05:50:37');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', '你好', '2019-01-07 05:50:51');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', '你是不是觉得自己很傻逼\n', '2019-01-07 05:51:03');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', '你还', '2019-01-07 05:51:14');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', '你好', '2019-01-07 05:51:17');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', 'he\'e\'lo', '2019-01-07 05:51:32');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '17806272252', 'hello', '2019-01-07 05:51:36');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', '我不好\n', '2019-01-07 05:49:27');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', '傻逼', '2019-01-07 05:49:32');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', '啦啦啦啦啦啦啦啦啦\n', '2019-01-07 05:49:54');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', '66666666666', '2019-01-07 05:50:17');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', 'khdsybvfyhrjwdvgfujwdwrcf\n', '2019-01-07 05:50:30');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦·1', '2019-01-07 05:50:45');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', '你好', '2019-01-07 05:50:59');
INSERT INTO `chatwithpeople` VALUES ('17806272252', '15964245533', 'nice to meet you', '2019-01-07 05:51:25');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', '在\n', '2019-01-07 12:02:27');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', 'abc', '2019-01-07 12:03:33');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', 'llal\n', '2019-01-07 12:04:00');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', 'hello', '2019-01-07 12:14:44');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', 'dd', '2019-01-07 12:14:49');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', 'heell', '2019-01-07 12:16:11');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', 'didi', '2019-01-07 12:16:55');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', '搁哪呢', '2019-01-07 12:17:26');
INSERT INTO `chatwithpeople` VALUES ('17806283016', '15650170102', '出来嗨皮啊', '2019-01-07 12:17:36');

-- ----------------------------
-- Table structure for historypostingrecord
-- ----------------------------
DROP TABLE IF EXISTS `historypostingrecord`;
CREATE TABLE `historypostingrecord`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContentType` tinyint(4) NULL DEFAULT 0,
  `Time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `Phone`(`Phone`) USING BTREE,
  CONSTRAINT `historypostingrecord_ibfk_1` FOREIGN KEY (`Phone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of historypostingrecord
-- ----------------------------
INSERT INTO `historypostingrecord` VALUES (19, '15964245533', '明明是育婴师出身,非常经典的文章，不看后悔内容邻居大妈来家里唠家常，唠着唠着就说到这个婴儿身上，说着说着就开始八卦一件事情，说的是一个妈妈把两个月大的孩子摔了，没什么大碍，就是头上起了个红晶晶的大包。\r\n\r\n可把家里人心疼死了。\r\n倒是这位妈妈淡定，果然是熟悉业务的专业出身人员，就是非同凡响，摔了自己的亲生女儿还振振有词，“只不过是一次失误罢了”！\r\n\r\n还真没看见这样的妈妈，更没想到的是，这位妈妈居然是育婴师，结婚之前的工作就是育婴师，结婚之后没有出去工作，就说在家里好好带带孩子，但这孩子才两个月大就被摔了。\r\n这位妈妈说了，以前照看无数的宝宝，早就熟悉业务了，就像大工厂的机器一般，按照流程来。\r\n\r\n所以这位妈妈在给两个月大婴儿洗头的时候，手法极其纯熟，速度极其之快，但在外人看来就像一个口齿不清的人，一个字都说不准，而这位妈妈也是一个手法都没有到位，后来在把孩子往床上放的时候太迅猛了，虽然是摔倒了床上，但是头磕到了床头的木头，不过幸好不是棱角，不然这孩子的心理阴影面积得有多大？\r\n现在也有很多这种“自以为是”的妈妈，觉得自己懂得专业知识，所以在照顾孩子上就像“扫地”一样漫不经心，觉得不会出差错，即使出了也不会有大问题，远不如一些啥都不知道精心呵护孩子的妈妈。\r\n孩子的问题没有大小，尤其是才几个月大的小婴儿最需要的就是精心照顾，最需要的就是悉心呵护。\r\n\r\n面对上面的事情，我只能说这位妈妈需要回炉重造！\r\n\r\n本文章图片网络，如有侵权，请及时联系小编删除。如果喜欢小编，请下方留言哦，您的评论是对小编最大的支持。', 2, '2019-01-07 05:02:20');
INSERT INTO `historypostingrecord` VALUES (20, '17806272252', '看外国家长如何看待孩子阅读内容有位法国巴黎7岁男孩的父亲菲利普（化名）说：“如今市场上出售的图书种类很多，儿童图书也是五花八门。对于上小学的孩子而言，培养读书兴趣最重要。而且孩子还小，他们对世界的认识还很有限，所以对他们的阅读范围不要有过多的限制，要用书籍让他们认识世界更多一些，进而明确自己的学习方向。”\r\n\r\n　　但他说，孩子在上小学时正是身体发展的阶段，为了让孩子眼睛不受到影响，他对图书的印刷质量的要求会比较高，首先最终要的就是字迹清，字体大小适中，此外也不要让孩子每天长时间的看书。\r\n\r\n　　而这位家长的做法和菲利普就是完全相反，他会主动的帮助孩子决定要看什么书。意大利罗马6岁男孩的父亲马泰奥？马蒂诺说：“我不太关注儿子看书的类型，应该机器人一类的图书会比较多看，孩子也主要由妈妈看管。如果他要买书，我会思考这书对他是否有用，然后再作决定。当然绝不会强制他看自己不喜欢的书。看书总比看电视，少玩游戏机好。\r\n\r\n　　而能够使人受益的书就是好书。等孩子再长大些，就能认得更多的字，到时就帮他到图书馆办个借书证。不过现在网络也十分方便，可以直接到网上就阅读孩子感兴趣的书了。”\r\n\r\n　　而罗西是住在罗马，一位十二岁女孩的母亲，她说：“我选择的书籍都是一些现在很流行的经典通话，并且选择的也是适合她的，《丑小鸭》《白雪公主》等女性化的书籍，这是每个孩子都耳熟能详的。小时候看图画书，认字后就可以看完整的故事了。前段时间我女儿很迷WINX（意大利著名漫画），后来又迷上了《暮光之城》，只要不是暴力黄色的书籍，我都尊重她的喜好。我不会强制女儿读不喜欢的书。有适合她的书会向她推荐，我女儿比较喜欢动物还有女巫这方面的书。”\r\n\r\n　　她说：“我想，好书应该通俗易懂，可以使人有所感悟的书就是好书。我经常带孩子去逛书市，选择她喜欢的书作为奖励，不过现在的书太贵了。”对此菲利普也说：“对于好书的定义其实是很广泛的，我认为的就是可以给孩子们带去知识和快乐的书籍都应该被视为好书。”他表示，自己从不强制孩子读书，因为长期强制会造成逆反，导致孩子厌恶书籍，反而会影响孩子今后的读书之路。\r\n\r\n　　以上为家长们介绍了外国家长度孩子阅读习惯的一些独到的见解，希望我们中国的家长可以借鉴一下！', -1, '2019-01-07 05:02:46');
INSERT INTO `historypostingrecord` VALUES (22, '15650170102', '【儿童故事】适合妈妈讲给2-4岁宝宝听的小故事内容1、三把小伞\r\n\r\n三个兔宝宝要去看望奶奶。　兔妈妈说：“太阳太晒了，给你们一人一把小伞”　穿红色裙子的兔宝宝举着小红伞。穿蓝色裙子的兔宝宝举着小蓝伞。穿黄色裙子的兔宝宝举着小黄伞。三个兔宝宝唱着歌，向奶奶家走去。　“呜——”一阵大风吹来，兔宝宝们被吹上了天，大家使劲儿抓住伞，在天上飞呀飞。　风小了，兔宝宝们落到一棵树上。兔奶奶戴上老花镜：“啊呀，我的树上怎么开了三朵花？”　三个兔宝宝哈哈笑：“奶奶，我们是您的宝宝呀！”　兔奶奶望着三个兔宝宝想：“真是三个好乖乖。”\r\n\r\n2、苹果睡着了\r\n\r\n回到家里洗洗手，鼠宝宝和妈妈一起吃晚饭。　天黑了，鼠宝宝要睡觉了。躺在床上，鼠宝宝闻到一股诱人的苹果香味。“妈妈，我要吃苹果。”“快睡吧！乖宝宝，苹果已经睡着了。”　啪哒，啪哒！鼠宝宝要看看，苹果是不是真的睡着了。　盘子里，一个个红苹果一动不动地挤在一起。唉呀呀！苹果真的睡着了。“妈妈，苹果宝宝睡着了，我也要睡了。”　鼠宝宝爬上床，盖好被子，睡觉了。　　　\r\n\r\n3、爱哭的胖胖熊\r\n\r\n胖胖熊两岁了，可是很爱哭鼻子，遇到什么事都要哇哇大哭。一天，胖胖熊被一个小石头拌了一跤，虽然一点也不痛，可他还是大哭起来。胖胖熊扒在地上哭呀哭呀，越哭越伤心，泪水哗哗地往下掉。石头上，有一只小蚂蚁正在睡觉，忽然它觉得身上湿呼呼的。小蚂蚁说：“呀，下雨了！下的真大啊！”它抬头一看，不对不对，不是下雨，是胖胖熊在哭呢。小蚂蚁问：“胖胖熊，你为什么趴在地上哭呀？”胖胖熊伤心地说：“呜呜呜，我摔倒了。”小蚂蚁奇怪地问：“摔倒了，你为什么不爬起来啊？” 胖胖熊边哭边说：“呜呜呜，我等妈妈来扶我。”小蚂蚁哈哈大笑，笑呀笑呀，不小心从石头上摔了下来。“哎呀——” 胖胖熊吓了一跳，赶忙伸手去扶小蚂蚁，哪知，小蚂蚁骨碌一下爬了起来，自豪地说：“我们小蚂蚁摔倒了，才不要人家扶呢。”胖胖熊一听，特别的不好意思，连忙骨碌一下爬了起来，挺着胸脯说：“我们的小朋友摔倒了，也不要妈妈扶。”\r\n\r\n4、小帮手\r\n\r\n兔妈妈有三个兔宝宝。一天，兔妈妈不在家，兔宝宝们想：我们要帮妈妈干点活。他们找呀找，看到厨房里桌子上有一堆菜。　一个兔宝宝拿起萝卜，说：“萝卜，萝卜，听话，我来给你洗洗脸。”　一个兔宝宝拿起白菜，说：“白菜，白菜，听话，我来给你洗头发。”　一个兔宝宝拿起西红柿，说：“西红柿，西红柿，听话，我来给你洗洗澡。”　兔妈妈回来了，看见桌子上摆着洗好的菜，兔宝宝们脸上还淌着汗，心里全明白了。　她把三个兔宝宝搂在怀里，高兴地说：“真是妈妈能干的小帮手。”　\r\n\r\n5、回家喽\r\n\r\n天快黑了，热闹了一天的小树林渐渐安静下来，动物们准备回家了。　一位鸭妈妈，许多鸭宝宝。鸭妈妈叫：“呷呷呷，快回家！”鸭宝宝答：“呷呷呷，回家啦！”鸭宝宝跟着鸭妈妈游着回家。　一位猫妈妈，许多猫宝宝。猫妈妈叫：“喵喵喵，快回家！”猫宝宝答：“喵喵喵，回家啦！”猫宝宝跟着猫妈妈走着回家。　一位青蛙妈妈，许多青蛙宝宝。青蛙妈妈叫：“呱呱呱，快回家！”青蛙宝宝答：“呱呱呱，回家啦！”青蛙宝宝跟着青蛙妈妈跳着回家。　一位狗妈妈，许多狗宝宝。狗妈妈叫：“汪汪汪，快回家！”狗宝宝答：“汪汪汪，回家啦！”狗宝宝跟着狗妈妈跑着回家。　鸟妈妈叫：“喳喳喳，快回家！”鸟宝宝答：“喳喳喳，回家啦！”鸟宝宝跟着鸟妈妈飞回家。　鼠妈妈也在叫：“鼠宝宝，快回家！”鼠宝宝大声答：“吱吱吱，回家啦！”鼠宝宝和鼠妈妈手牵手走回家。\r\n\r\n6、挤呀挤\r\n\r\n鼠宝宝一个人躺在床上，真害怕呀！他“哇哇”地哭着去找妈妈。　“呷呷呷”，小鸭子来了。它钻进被窝里，高兴地说：“真暖和呀！”　“呱呱呱，”小青蛙来了。它钻进被窝里，高兴地说：“真暖和呀！”　“喵喵喵，”小猫咪来了。它钻进被窝里，高兴地说：“真暖和呀！”　“汪汪汪，”小狗来了。它钻进被窝里，高兴地说：“真暖和呀！”　“喔喔喔，”小公鸡来了。它钻进被窝里，高兴地说：“真暖和呀！”　“呼噜噜，”小猪来了。它挤呀挤，也挤进了被窝里，高兴地说：“真暖和呀！”　“吧嗒，吧嗒，”鼠宝宝回来了。他挤呀挤，挤进被窝里，高兴地说：“有这么多朋友在一起，我不害怕啦！”　\r\n\r\n7、五只小白兔数数\r\n\r\n在一片茂密的大森林里，住着五只可爱的小白兔。有一天，天气非常好，小白兔们决定出去玩，于是它们排好队，迈着整齐的步子出发了。走着走着，最后的小白兔数起数来：“1，2，3，4……呀，少了一只。”别的小白兔一听，吓坏了，连忙跑过来一起数：“1，2，3，4……啊，真的少了一只！”小白兔们大哭起来。这时，飞来了一只小鸟，它听了事情的经过，又看见正在哭的7只小白兔，一下子全明白了，它说：“别哭别哭，没有少，你们数数的时候都把自己给忘了。”小白兔一听，就数起数来：“1，2，3，4，5！”“哈哈，原来真的一只都没少，谢谢小鸟，我们太马虎了，咱们一起去玩吧。”\r\n', 3, '2019-01-07 11:55:21');
INSERT INTO `historypostingrecord` VALUES (23, '15650170102', '如何让你的坏脾气不“遗传”给孩子？内容有的妈妈说：“我家娃从小脾气就急，这点随我，我就是爱着急，压不住火，这可怎么办呢？”\r\n\r\n今天我们就聊聊，好脾气与坏脾气的话题。\r\n\r\n什么是好脾气？\r\n在某一次情景之下，流露出的情感反应被称为“情绪”。如果在生活中，面对难过、失望、不满的情况，能够经常自我排解，表现出积极的情绪，这就是我们希望孩子具有的“好脾气”。而有的孩子少有不满，立刻情绪暴怒失控，大哭、撒泼、打滚，不听劝阻，不理会大人的安抚，也就是我们常说的“坏脾气”。\r\n\r\n那“好脾气”是如何来的呢？我想告诉大家的，“好脾气”的“养成”比“遗传”重要。\r\n\r\n孩子是天生的“观察家”和“外交家”\r\n父母每一次面对孩子流露出的情绪，对孩子来说，都是一个重要的“养成”过程。\r\n\r\n生活中，我们会鼓励孩子，你收到礼物，也许并不喜欢，你也要表现得很高兴，并说谢谢。四五岁的孩子就能够做到如此，这就是心理学说的“情绪掩饰”。\r\n\r\n研究者发现，“情绪掩饰”的能力，从婴儿时就具有。几个月的时候，妈妈逗宝宝玩的时候，经常做出喜悦、惊讶的表情，于是孩子也会“有样学样”。后来，孩子慢慢发现，当自己做出喜悦、惊讶的表情时，自己被更多的关注与鼓励，就会更多这样的表现。 因为孩子在处理情绪的时候，都会有一定的“参照”，他们会有意识向着最亲近的养育者希望的样子靠近。每一次孩子剧烈的情绪反应，家长的安慰，都会让孩子得到一定的暗示。 \r\n\r\n比如，哥哥把弟弟的那份草莓也吃光了，于是弟弟大哭。妈妈抱着弟弟哄：“哥哥真是坏哥哥，不给弟弟留点，我们再出去吃冰淇淋，不带哥哥去。”那么，弟弟得到的暗示是：“我有足够的理由大哭大闹，是哥哥的错误让我如此的，下次我吃东西也可以不给别人分享。”\r\n\r\n如果妈妈告诉弟弟：“草莓没有了，我们一起和哥哥再去市场买一些，这一次我们一起告诉哥哥，好吃的东西要一起分享。”那么弟弟就不会把草莓被吃光，看成是足够生气大闹的理由，而是把注意力转移到如何解决问题上。\r\n\r\n孩子的“好脾气”，是父母在一次次处理孩子剧烈的情绪反应的过程中“培养”出来的。孩子是天生的“观察家”、“外交家”，他们天生会依照家长的意见，调整自己的情绪反应。你平时的言谈举止，都会对孩子有潜移默化的暗示影响。\r\n\r\n孩子是天生的“模仿者”\r\n我们常说，三十岁之前，父母对你的容貌负责；三十岁以后，自己要对容貌负责。有人“面善”，让人觉得容易接近；有人脸上戾气重，让人觉得不敢接近。\r\n\r\n你当然希望自己的孩子成为前者吧？那么你要做的，首先是管好自己的言行。所以，在你给孩子教导的时候，一定要从正面去引导和教育，比如“我们绝对不能依仗身体的强壮，欺负别人，或者用暴力解决问题”。\r\n\r\n其次，你能为孩子做的，是维持和谐温馨的家庭氛围。因为，孩子在和谐温馨的环境下，更容易对积极乐观的情绪保持更深的印象；而在冷漠争吵等氛围之下，更容易记住那些消极的情绪与事情。\r\n\r\n比如，过年的时候，全家和乐，吃饭的时候让老人坐首席，大家要彼此说祝福的话，孩子玩的时候发生争吵，也要说过年大家都高兴，彼此谦让，不要打架。那么，敬老、祝福、谦让，这些生活片段，就好像照相机定格在孩子的头脑中，就为他的“好脾气”多了一次积累。家里一团和气的气象，就给他了一个积极的观摩对象。\r\n\r\n反过来，家庭中经常爆发争吵、持续冷战，或者孩子犯错误之后，暴力解决问题、无休止的挖苦讽刺，都会成为孩子的反面“观摩内容”。孩子从中学到错误的处理问题的方式和态度，时间一久，“好脾气”自然难以养成。\r\n\r\n每一个家庭成员，都对家庭有着重要的影响，作为成年人，对孩子的成长，有不可推卸的责任。所以，想培养孩子的“好脾气”，要从关注自己开始。在日常的言谈举止中，成为孩子效仿的榜样，营造有利于孩子成长的家庭氛围；关注孩子的积极情绪，给予及时鼓励表扬，减少自己的消极言行，如挖苦讽刺斥责等等，这些是作为家长不可推卸的责任。', -1, '2019-01-07 11:56:07');
INSERT INTO `historypostingrecord` VALUES (24, '15650170102', '淡定！宝宝吃手是智力发育的信号内容宝宝爱吃手其实并不一定是坏事\r\n“吃手”标志着宝宝的心理发育进入到一个新阶段——手指功能的分化和初期的手眼协调阶段，是智力发展的一种信号。新生儿期大脑尚未发育成熟，还不能指挥自己的小手。生后2~3个月随着大脑的发育，宝宝开始出现了手的动作，“手”在宝宝眼里其实是一种非常有趣的玩具。\r\n\r\n把手指放在嘴里在大人看来是再简单不过的事，可对宝宝来说，则表示他的运动肌群与肌肉控制能力相互配合取得了巨大成就。这需要有四种反射行为的协调才能完成的：将手臂弯屈成小圆弧形、放松运动肌群伸出指头、搜寻并将手伸至小嘴里、开始吸吮。这对于宝宝而言是完成了一种非常了不起的“进步”，家长不应该为宝宝爱吃手而纠结，反而应该感到高兴。\r\n\r\n“吃手”其实是宝宝一种健康的自我安慰的方式。著名心理学家弗洛伊德认为，吃活动是婴儿期获得满足的最佳、最主要途径。2~3个月宝宝正处于口唇快感期，如果吸吮的需要得不到满足会影响其身心发展，以致产生暴躁、消沉的负面情绪。家长若能细心观察，就会发现当宝宝感到不安、烦躁、紧张时，吃手会镇静宝宝的情绪。有的宝宝在浅睡状态时，会用吮手指来寻求自我安慰而重新入睡。\r\n\r\n对于爱吃手的宝宝，该怎样引导？\r\n●3~4个月的宝宝：\r\n\r\n家长可拿着宝宝的小手去触摸眼前色彩鲜艳、带着响儿悬挂的玩具，慢慢地宝宝会主动去够摸。\r\n\r\n●5~6个月的宝宝：\r\n\r\n家长可抱宝宝在桌前，鼓励宝宝主动伸手够取桌上的玩具，当宝宝小手够取技能大了，会以更大兴趣去触摸，探索和认识周围各种新奇的物体和玩具。这样，宝宝小手忙起来就顾不上吃手了。\r\n\r\n●1岁以上的宝宝：\r\n\r\n如果1岁以上的宝宝还对“吃手”情有独钟的话，家长就一定要重视了。主动寻找原因，会不会是因为和宝宝的关系出现了不够“融洽”的一面，还是因为对宝宝的限制过多，要求有些严格而导致宝宝不够开心。有关调查发现，缺少父母关爱和心灵上慰藉的幼儿易养成吮手习惯。这时，吃手能够使宝宝感到安慰，释放紧张和沮丧情绪。\r\n\r\n注意：吃手可能是宝宝对你不够信任\r\n对于一岁多的宝宝而言，如果还保持着“吃手”的习惯，可能是宝宝对你还不够信任。专家表示，如果像本文开头案例中的宝宝一样，在游乐场里不能和其他小朋友“打成一片”，而是只会站在一旁“吃手”，说明宝宝对于“你”可能还不够信任。一岁多的宝宝在感到恐惧时应该会立刻要求身边的大人把他抱起来，而不是简单的采用“吃手”的方式站在一边。在这样的情况下，妈咪们应该“看”一下自己是不是对宝宝还不够敏感，又或者在一些场合给宝宝造成了不良情绪。\r\n\r\n家长要尽可能多花一些时间和宝宝一起游戏，给他更多的爱，可以带他一起玩动手的游戏：拍手、编绳、手影游戏，一起边拍手边说儿歌，玩小白兔搔耳朵的手影，宝宝会乐此不疲。\r\n\r\n对宝宝吃手行为，家长应理解和宽容，不可强行干涉，见到较大的宝宝“吃手”也不要反复念叨“怎么又吃手了”。这样不仅不能奏效，反而会强化这一行为，甚至影响宝宝未来情绪和心理的正常发展。', -1, '2019-01-07 11:57:52');
INSERT INTO `historypostingrecord` VALUES (26, '17806283016', '亲子游戏 ：爸爸妈妈可以这样陪我玩哦！内容2个月宝宝：爸爸，你要多陪我玩。1、我开始分辨变换的东东\r\n\r\n3个月的我对消失和缓慢移动的物体有反应，还会以视线搜寻发声的位置，比如妈妈在我的右边说话，爸爸突然出现在左边发出声响，我马上就会转移视线去看爸爸。\r\n\r\n\r\n现在我的眼睛可以随着移动的物品转动180°，喜欢看滚动的球，跑来跑去的猫。\r\n\r\n\r\n2、多带我出门玩玩吧\r\n\r\n室外的树、小鸟、人群……会引的我小眼睛不时的转来转去，这可以很好地刺激我的视觉器官的发育，而各种不同的声音也让我的听觉得到了发展。\r\n\r\n\r\n注意：每次的时间不宜过长，也不适宜太过刺眼的光亮或太大的噪音哦！\r\n\r\n\r\n3、我认识爸爸了哦\r\n\r\n我开始觉察辨别两个不同的人，原来每天陪我玩的，一个是妈妈，一个是爸爸。\r\n\r\n\r\n爸爸要主动同我玩耍，爸爸的胡须、气味、声音以及强健有力都与妈妈不同，多数我都喜欢让爸爸抱，把自己举得高高的，经历一些惊险但感觉更加有趣。尤其是男宝宝，更喜欢惊险刺激，喜欢爸爸豪爽的笑。\r\n\r\n\r\n4、仍然喜欢听妈妈的笑声和说话声\r\n\r\n3个月的我在语言上有了一定的发展，逗我时我会非常高兴并发出欢乐的笑声，当看到妈妈时，脸上会露出甜蜜的微笑，嘴里还会不断的发出咿呀的学语声。\r\n\r\n\r\n我喜欢听妈妈说话、听见妈妈的笑声。\r\n\r\n妈妈可以制造出各种滑稽好玩的声音逗得我咯咯笑，这有助于刺激我的听觉发育。这个阶段处于语言发展的储备期，爸爸妈妈要经常和我说话，不仅会使我开心，更在无意中储存了我的词汇量哦。\r\n\r\n\r\n5、妈妈教我说话的技巧\r\n\r\n两三个月的我喜欢说双元音，或拉长一个元音，妈妈要用夸张的口形同我说话，会使我也发出声音同妈妈对话。\r\n\r\n\r\n小宝宝喜欢喊叫是语言发育良好的开始，此时的发声是为以后早日学话做准备。\r\n\r\n\r\n爸爸妈妈要鼓励我说话，一边照料我一边同我讲话就会激起我与人对话的兴趣，我独处时也会自己发声自娱，或者对着玩具说话呢。\r\n\r\n\r\n\r\n亲子游戏、早教，\r\n\r\n\r\n就是在恰当的时间，用恰当的方式，\r\n\r\n\r\n多陪陪他（她），和他（她）一起感知认识世界，一同成长！\r\n\r\n\r\n1、伸伸胳膊儿伸伸腿儿：\r\n\r\n让我仰卧在床上，轻轻抓住我两个手臂向上拉动，一次一条胳膊；然后再慢慢向下拉动我的两条腿儿，一次一条腿，过一段时间，我的胳膊儿和腿儿就几乎可以自己伸直了。\r\n\r\n\r\n可以让我踢踢健身架上的彩球神马的哦：我看见球在跳动，或听到声音会很兴奋，便努力蹬腿，屈伸膝盖，双腿上举或随球而动，从而欢欣鼓舞。有时我手和脚都能同时碰到球，下肢运动扩大到四肢和全身运动，可促进我的肌肉发育和新陈代谢。\r\n\r\n\r\n2、给我读故事书：\r\n\r\n虽然我还不能明白妈妈给我读的故事内容，不过我很喜欢舒适地偎依在妈妈的臂弯里，听妈妈声情并茂读书的声音。研究表明，我在婴幼儿时期若能够听读更多的词汇，长大点之后能够掌握的词汇量会明显比较大。\r\n\r\n\r\n3、我很喜欢有人和我“聊天”\r\n\r\n我很喜欢有人和我“聊天”，尽管我还不能明白妈妈在说什么，但是看着妈妈的脸，听着妈妈熟悉的声音，我会建立起对我熟悉的人的形象，这和我日后建立信赖感很有关联！因此，我醒着的时候，妈妈要多和我说说话！\r\n\r\n\r\n4、挠痒痒和逗我笑：\r\n\r\n抱着我轻轻地前后摇摆，用食指轻轻地抚摸我嘴边的皮肤，当我朝妈妈微笑时，要表扬我，并让我知道这样使妈妈有多开心。不断重复这一游戏。抚摸我的脸三次，然后说：“笑一笑”当妈妈抚摸我的脸时，妈妈可以说“一、二、三、笑一笑”。\r\n\r\n\r\n\r\n亲子游戏、早教，\r\n\r\n\r\n就是在恰当的时间，用恰当的方式，\r\n\r\n\r\n多陪陪他（她），和他（她）一起感知认识世界，一同成长。', 1, '2019-01-07 12:13:48');
INSERT INTO `historypostingrecord` VALUES (27, NULL, '很成功风格和m内容美化工程规划', 1, '2019-01-07 14:17:15');

-- ----------------------------
-- Table structure for recordsofhistoricalexchanges
-- ----------------------------
DROP TABLE IF EXISTS `recordsofhistoricalexchanges`;
CREATE TABLE `recordsofhistoricalexchanges`  (
  `id` bigint(20) NOT NULL,
  `SendPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ReceivePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`SendPhone`, `ReceivePhone`, `time`, `id`) USING BTREE,
  INDEX `recordsofhistoricalexchanges_ibfk_2`(`ReceivePhone`) USING BTREE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recordsofhistoricalexchanges
-- ----------------------------
INSERT INTO `recordsofhistoricalexchanges` VALUES (22, '15650170102', '15650170102', '沙发沙发', '2019-01-07 11:58:46');
INSERT INTO `recordsofhistoricalexchanges` VALUES (22, '15650170102', '15650170102', '顶到第一', '2019-01-07 11:59:28');
INSERT INTO `recordsofhistoricalexchanges` VALUES (22, '15650170102', '15650170102', '还差两条', '2019-01-07 11:59:47');
INSERT INTO `recordsofhistoricalexchanges` VALUES (22, '15650170102', '15650170102', '最后一条', '2019-01-07 11:59:56');
INSERT INTO `recordsofhistoricalexchanges` VALUES (21, '15650170102', '17806272252', '傻狗翁', '2019-01-07 12:01:23');
INSERT INTO `recordsofhistoricalexchanges` VALUES (19, '15964245533', '15964245533', 'ooooooooooooooooook', '2019-01-07 06:01:56');
INSERT INTO `recordsofhistoricalexchanges` VALUES (19, '15964245533', '15964245533', '你好', '2019-01-07 07:15:04');
INSERT INTO `recordsofhistoricalexchanges` VALUES (19, '15964245533', '15964245533', '啦啦啦啦啦啦啦', '2019-01-07 07:21:36');
INSERT INTO `recordsofhistoricalexchanges` VALUES (20, '15964245533', '17806272252', '你好', '2019-01-07 05:07:08');
INSERT INTO `recordsofhistoricalexchanges` VALUES (20, '15964245533', '17806272252', '听说你谈恋爱了 老哥', '2019-01-07 07:24:25');
INSERT INTO `recordsofhistoricalexchanges` VALUES (20, '15964245533', '17806272252', '说话呀', '2019-01-07 07:24:41');
INSERT INTO `recordsofhistoricalexchanges` VALUES (19, '17806272252', '15964245533', '牛逼', '2019-01-07 05:06:35');
INSERT INTO `recordsofhistoricalexchanges` VALUES (21, '17806272252', '17806272252', '傻狗翁！！！！！！', '2019-01-07 05:24:04');
INSERT INTO `recordsofhistoricalexchanges` VALUES (22, '17806283016', '15650170102', '真是太有意思了     ', '2019-01-07 12:07:46');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `Phone` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无名氏哦',
  `UPwd` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UGender` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '可怕的未知性别',
  `UPhoto` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '默认的地址',
  `UAge` tinyint(4) NULL DEFAULT 0,
  `UConnect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UState` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`Phone`) USING BTREE,
  INDEX `Phone`(`Phone`) USING BTREE,
  INDEX `Phone_2`(`Phone`) USING BTREE,
  INDEX `Phone_3`(`Phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('15650170102', '徐徐徐徐徐硕', 'llVP/Y+N7l1aECOoRPlAZQ==', '男', '默认的地址', 19, 'Chxjy8EZdvK0h1nzZJ5D3w==', 0);
INSERT INTO `userinfo` VALUES ('15964245533', '王琳', 'AZ176LY0jDevzw2EToTlyQ==', '男', '默认的地址', 1, 'PAlqucYzYpSDB/HKyorWfA==', 1);
INSERT INTO `userinfo` VALUES ('17806272252', 'forever', 'llVP/Y+N7l1aECOoRPlAZQ==', '男', '默认的地址', 1, 'R5RIVdEL7H7j23fXKoqtvA==', 0);
INSERT INTO `userinfo` VALUES ('17806283016', 'kajiulan', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'qtJ1KUU8ApC4gsXlzlTV9g==', 0);

SET FOREIGN_KEY_CHECKS = 1;
