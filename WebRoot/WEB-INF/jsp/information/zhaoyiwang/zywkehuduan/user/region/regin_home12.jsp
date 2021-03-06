<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="stylesheet" href="static/zhaoyiwang/zywkehuduan/css/yahu.css"/>
    <link rel="stylesheet" href="static/zhaoyiwang/zywkehuduan/css/jquery-weui.css"/>
    <link rel="stylesheet" href="static/zhaoyiwang/zywkehuduan/css/weui.css"/>
    <link rel="stylesheet" href="static/zhaoyiwang/zywkehuduan/css/font-awesome.css">
    <link rel="stylesheet" href="static/zhaoyiwang/zywkehuduan/css/index.css"/>
    <link rel="stylesheet" href="static/zhaoyiwang/zywkehuduan/css/login.css"/>
    <script src="static/zhaoyiwang/zywkehuduan/js/jquery-2.1.4.js"></script>
    <script src="static/zhaoyiwang/zywkehuduan/js/fastclick.js"></script>
    <script src="static/zhaoyiwang/zywkehuduan/js/jquery-weui.js"></script>
    <script src="static/zhaoyiwang/layer/layer.js"></script>
    <title>医生主页</title>
    <style>
        .citys{
            width: 100%;height:44px;line-height: 44px;padding-left:10px;border-bottom: 1px dotted #c0c0c0;border-left: 1px solid #c0c0c0;
           /* border-right: 1px solid #c0c0c0;*/background-color: #f4f4f4;
        }
        /*#citys li a{
            color: #555;
        }*/
        /*ul li a{
            color: #555;
        }*/
        .right_la ul li a{
            color: #555;
        }
        
        body{
            background-color: #f4f4f4;

        }
       /* a{
            color: #555;
        }*/
        .qu{
            width:100%;padding-left:10px;height:44px;line-height: 44px;border-bottom:1px solid #c0c0c0;background-color: #fff;
        }
        .nnn{
            border-right:none;background-color:#fff;border-bottom:none;
        }
        .xuansheng>a>b>i,.type01{
            display:block;width:.75rem;height:.38rem;margin-left:75%;margin-top:-16px;background: url(static/zhaoyiwang/zywkehuduan/images/menu_5.png) no-repeat;background-size:.75rem auto;
        }

        .searchBlock {
            height: 46px;
        }
        .shi02{
            display: inline-block;width:50%;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;
        }
        .tog{
            float: left;
            width:30%;
            height:300px;
            position:absolute;
            top:155px;

            z-index:200;
            overflow-y: auto;
            display: none;
            border-bottom: 1px solid #ddd;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }
        #city{
            float:left ;
            width:70%;
            height:299px;
            position: absolute;
            top: 155px;
            overflow-y: auto;
            right: 0;
            z-index:200;
            display: none;
            padding-left: 10px;
            border-bottom: 1px solid #ddd;
            background-color: #fff;
            transition-duration: 0.4s;
        }
    </style>
</head>
<body>
<!--头部开始-->
<div id="header" style="background-color: #38c4ff;">
    <h1 class="title">医生主页</h1>
    <a href="javascript:history.go(-1)" class="icon1"><i class="icon-angle-left "></i></a>
</div>
<div class="searchBox" style="border-bottom: 1px solid #dedede;position: fixed;top:0;">
    <div class="searchBlock">
        <form action="">
            <input type="text" placeholder="请输入关键词" class="keyWords"/>
            <input type="button" value="搜索" class="searchBtn"/>
        </form>
    </div>
</div>
<div class="main" style="width:100%;position: fixed;top:45px;">
    <div class="menu">
        <ul class="regin">
            <li class="xuansheng">
                <a href="javascript:void(0)"><b><span class="shi02">海口市</span><i class="type01"></i></b></a>
            </li>
            <li>
                <a href="javascript:void(0)"><span style="position: absolute;left:0;top:10px;color:#d9d9d9;">|</span><b><span class="shi02">类型</span><i class="type01"></i></b><span style="position: absolute;right:0;top:10px;color:#d9d9d9;">|</span></a>
            </li>
            <li>
                <a href="javascript:void(0)"><b><span class="shi02">科类</span><i class="type01"></i></b></a>
            </li>
        </ul>
    </div>

    <!--遮罩层-->
    <div class="mask"></div>
    <!--医生介绍-->
    <div class="ys_info">
        <div class="ys_detail" onclick="getDetailByDoctorID()">
            <div class="img3">
                <a href="javascript:void(0)"><img src="static/zhaoyiwang/zywkehuduan/images/yisheng_10.png" alt=""/></a>
            </div>
            <ul class="ys">
                <li>
                    <a href="javascript:void(0)"><b>杨梅</b> | <span>主治医师</span></a>
                </li>
                <li>

                    <a href="javascript:void(0)">个人</a>
                </li>
                <li>
                    <a href="javascript:void(0)">中华医学会心电生理和起搏分会青年委员，中国医师协会心血管内科医师分会青年委员，中华医学会江苏省心血管病分会青年委员会副主委，中华全科医学杂志编委;2007年毕业于南京医科大学并任职于南京医科大学第一附属医院(江苏省人民医院)。熟练掌握各种心律失常的诊断与治疗。</a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick="lijizixun()">
                        <button class="btn">立即咨询</button>
                    </a>
                    <span>帮助过<em>10</em>人</span> | <span>服务评分:<em>4.8</em></span>
                </li>
            </ul>
        </div>
        <div class="ys_detail" onclick="getDetailByDoctorID()">
            <div class="img3">
                <a href="javascript:void(0)"><img src="static/zhaoyiwang/zywkehuduan/images/yisheng_10.png" alt=""/></a>
            </div>
            <ul class="ys">
                <li>
                    <a href="javascript:void(0)"><b>杨梅</b> | <span>主治医师</span></a>
                </li>
                <li>

                    <a href="javascript:void(0)">个人</a>
                </li>
                <li>
                    <a href="javascript:void(0)">中华医学会心电生理和起搏分会青年委员，中国医师协会心血管内科医师分会青年委员，中华医学会江苏省心血管病分会青年委员会副主委，中华全科医学杂志编委;2007年毕业于南京医科大学并任职于南京医科大学第一附属医院(江苏省人民医院)。熟练掌握各种心律失常的诊断与治疗。</a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick="lijizixun()">
                        <button class="btn">立即咨询</button>
                    </a>
                    <span>帮助过<em>10</em>人</span> | <span>服务评分:<em>4.8</em></span>
                </li>
            </ul>
        </div>
    </div>

</div>
<div class="tog" style="width:100%;height:480px;position:absolute;top:150px;;z-index:-1;overflow-y: auto;display: none;" id="sheng">
</div>
<div style="width:68%;height:400px;position:absolute;top:150px;overflow-y: auto;;left:32%;z-index:-1;display: none;" id="city">
</div>

<!--类型-->
<div class="sever">
    <section class="tog3" style=" background-color:#f4f4f4;">
        <div  class="menu_box box3" style="display:none;">
            <ul class="demo">
                <li><a href="">中医</a></li>
                <li><a href="">西医</a></li>
            </ul>
        </div>
    </section>
    <section class="tog2">
        <div class="menu_box box2" style="display:none;">
            <div class="left_la">
                <div class="wrap wrap3">
                    <ul >
                        <li value="2" class="active"><a href="javascript:;">上海</a></li>
                        <li value="3"><a href="javascript:;">天津</a></li>
                        <li value="4"><a href="javascript:;">重庆</a></li>
                        <li value="5"><a href="javascript:;">广东</a></li>
                        <li value="6"><a href="javascript:;">福建</a></li>
                        <li value="7"><a href="javascript:;">浙江</a></li>
                        <li value="8"><a href="javascript:;">江苏</a></li>
                        <li value="9"><a href="javascript:;">山东</a></li>
                        <li value="10"><a href="javascript:;">辽宁</a></li>
                        <li value="11"><a href="javascript:;">江西</a></li>
                        <li value="12"><a href="javascript:;">四川</a></li>
                        <li value="13"><a href="javascript:;">陕西</a></li>
                        <li value="14"><a href="javascript:;">湖北</a></li>
                        <li value="15"><a href="javascript:;">河南</a></li>
                        <li value="16"><a href="javascript:;">河北</a></li>
                        <li value="17"><a href="javascript:;">山西</a></li>
                        <li value="18"><a href="javascript:;">内蒙</a></li>
                        <li value="19"><a href="javascript:;">吉林</a></li>
                        <li value="20"><a href="javascript:;">黑龙江</a></li>
                        <li value="21"><a href="javascript:;">安徽</a></li>
                        <li value="22"><a href="javascript:;">湖南</a></li>
                        <li value="23"><a href="javascript:;">广西</a></li>
                        <li value="24"><a href="javascript:;">海南</a></li>

                    </ul>
                </div>
            </div>
            <div class="right_la" >
                <div class="wrap wrap4">
                    <ul >
                        <li value="2"><a href="javascript:;">上海</a></li>
                        <li value="3"><a href="javascript:;">天津</a></li>
                        <li value="4"><a href="javascript:;">重庆</a></li>
                        <li value="5"><a href="javascript:;">广东</a></li>
                        <li value="6"><a href="javascript:;">福建</a></li>
                        <li value="7"><a href="javascript:;">浙江</a></li>
                        <li value="8"><a href="javascript:;">江苏</a></li>
                        <li value="9"><a href="javascript:;">山东</a></li>
                        <li value="10"><a href="javascript:;">辽宁</a></li>
                        <li value="11"><a href="javascript:;">江西</a></li>
                        <li value="12"><a href="javascript:;">四川</a></li>
                        <li value="13"><a href="javascript:;">陕西</a></li>
                        <li value="14"><a href="javascript:;">湖北</a></li>
                        <li value="15"><a href="javascript:;">河南</a></li>
                        <li value="16"><a href="javascript:;">河北</a></li>
                        <li value="17"><a href="javascript:;">山西</a></li>
                        <li value="18"><a href="javascript:;">内蒙</a></li>
                        <li value="19"><a href="javascript:;">吉林</a></li>
                        <li value="20"><a href="javascript:;">黑龙江</a></li>
                        <li value="21"><a href="javascript:;">安徽</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
    
    function lijizixun(){
    		 layer.alert("开发中！！敬请期待。",{
	            title:"温馨提示"//提示标题，默认为：信息
	            ,skin: 'layui-layer-molv'//默认为：无色，layui-layer-molv：墨绿，layui-layer-lan：深蓝
	            ,anim: 0 //动画类型0-6，默认为：0
	            ,closeBtn: 1//是否显示关闭按钮，0-不显示，1-显示，默认为1
	            ,btn: ['确定'] //按钮
	            ,icon: 6    // icon
		          
       		 });
    }
    
    	function getDetailByDoctorID(){
    		window.location.href='<%=basePath%>api/zywkehu/getDetailByDoctorID.do';
    		
    	}
</script>
<script type="text/javascript">
    var pre=["北京市","天津市","上海市","重庆市","河北省","河南省","云南省","辽宁省","黑龙江省","湖南省","安徽省","山东省","新疆","江苏省","浙江省","江西省","湖北省","广西壮族","甘肃省","山西省","内蒙","陕西省","吉林省","福建省","贵州省","广东省","青海省","西藏","四川省","宁夏","海南省","台湾省","香港","澳门"];
    var citys=[
        ['东城区', '西城区','崇文区','宣武区','朝阳区','丰台区','石景山区', '海淀区','门头沟区', '房山区','通州区','顺义区','昌平区','大兴 区','怀柔区','平谷区','密云县','延庆县'],
        ['和平区','河东区', '河西区', '南开区', '河北区', '红桥区', '塘沽区', '汉沽区', '大港区', '东丽区', '西青区', '津南区', '北辰区', '武清区', '宝坻区', '宁河县', '静海县', '蓟县'],
        ['黄浦区','卢湾区', '徐汇区','长宁区','静安区','普陀区','闸北区','虹口区', '杨浦区', '闵行区', '宝山区', '嘉定区', '浦东新区', '金山区', '松江区', '青浦区', '南汇区', '奉贤区', '崇明县'],
        ['万州区','涪陵区','渝中区','大渡口区','江北区','沙坪坝区','九龙坡区','南岸区','北碚区','万盛区','双桥区','渝北区','巴南区','黔江区','长寿区','江津区','合川区','永川区','南川区','綦江县','潼南县','铜梁县','大足县','荣昌县','璧山县','梁平县','城口县','丰都县','垫江县','武隆县','忠县','开县','云阳县','奉节县','巫山县','巫溪县','石柱土家族自治县','秀山土家族苗族自治县','酉阳土家族苗族自治县','彭水苗族土家族自治县'],
        ['石家庄市', '唐山市', '秦皇岛市', '邯郸市', '邢台市', '保定市', '张家口市', '承德市', '沧州市', '廊坊市', '衡水市'],
        ['郑州市','开封市','洛阳市', '平顶山市', '安阳市', '鹤壁市', '新乡市', '焦作市', '济源市', '濮阳市', '许昌市', '漯河市', '三门峡市', '南阳市', '商丘市', '信阳市', '周口市', '驻马店市'],
        ['昆明市',' 曲靖市','玉溪市','保山市','昭通市','丽江市','思茅市','临沧市','楚雄彝族自治州','红河哈尼族彝族自治州','文山壮族苗族自治州','西双版纳傣族自治州','大理白族自治州','德宏傣族景颇族自治州','怒江傈僳族自治州','迪庆藏族自治州'],
        ['沈阳市' ,'大连市' ,'鞍山市' ,'抚顺市' ,'本溪市' ,'丹东市' ,'锦州市' ,'营口市' ,'阜新市' ,'辽阳市' ,'盘锦市' ,'铁岭市' ,'朝阳市' ,'葫芦岛市'],
        ['哈尔滨市','齐齐哈尔市','鸡西市','鹤岗市','双鸭山市', '大庆市', '伊春市', '佳木斯市', '七台河市', '牡丹江市', '黑河市', '绥化市', '大兴安岭地区'],
        ['长沙市', '株洲市','湘潭市', '衡阳市', '邵阳市', '岳阳市', '常德市', '张家界市', '益阳市', '郴州市', '永州市', '怀化市', '娄底市', '湘西土家族苗族自治州'],
        ['合肥市', '芜湖市', '蚌埠市', '淮南市', '马鞍山市', '淮北市', '铜陵市', '安庆市', '黄山市', '滁州市','阜阳市','宿州市', '巢湖市', '六安市', '亳州市', '池州', '宣城市'],
        ['济南市','青岛市','淄博市','枣庄市','东营市','烟台市','潍坊市','济宁市','泰安市','威海市','日照市','莱芜市','临沂市','德州市','聊城市','滨州市','菏泽市'],
        ['乌鲁木齐市', '克拉玛依市', '吐鲁番地区', '哈密地区', '昌吉回族自治州 ', '博尔塔拉蒙古自治州 ', '巴音郭楞蒙古自治州 ', '阿克苏地区', '克孜勒苏柯尔克孜自治州 ', '喀什地区', '和田地区', '伊犁哈萨克自治州', '塔城地区', '阿勒泰地区', '石河子市', '阿拉尔市', '图木舒克市', '五家渠市' ],
        ['南京市', '无锡市', '徐州市', '常州市', '苏州市', '南通市', '连云港市', '淮安市', '盐城市', '扬州市', '镇江市', '泰州市', '宿迁市' ],
        ['杭州市', '宁波市', '温州市', '嘉兴市', '湖州市', '绍兴市', '金华市', '衢州市', '舟山市', '台州市', '丽水市'],
        ['南昌市','景德镇市','萍乡市','九江市','新余市','鹰潭市','赣州市','吉安市','宜春市','抚州市','上饶市'],
        ['武汉市','黄石市','十堰市', '宜昌市', '襄樊市', '鄂州市', '荆门市', '孝感市', '荆州市', '黄冈市', '咸宁市', '随州市', '恩施土家族苗族自治州','仙桃市', '潜江市', '天门市', '神农架林区'],
        ['南宁市','柳州市','桂林市','梧州市','北海市','防城港市','钦州市','贵港市','玉林市','百色市','贺州市','河池市','来宾市','崇左市'],
        ['兰州市','嘉峪关市', '金昌市', '白银市', '天水市', '武威市', '张掖市', '平凉市', '酒泉市', '庆阳市', '定西市', '陇南市', '临夏回族自治州', '甘南藏族自治州'],
        ['太原市','大同市', '阳泉市', '长治市', '晋城市', '朔州市', '晋中市', '运城市', '忻州市', '临汾市', '吕梁市' ],
        ['呼和浩特市', '包头市', '乌海市', '赤峰市', '通辽市', '鄂尔多斯市', '呼伦贝尔市', '巴彦淖尔市', '乌兰察布市', '兴安盟', '锡林郭勒盟', '阿拉善盟' ],
        ['西安市','铜川市','宝鸡市', '咸阳市', '渭南市', '延安市', '汉中市', '榆林市', '安康市', '商洛市' ],
        ['长春市', '吉林市', '四平市', '辽源市', '通化市', '白山市', '松原市', '白城市', '延边朝鲜族自治州'],
        ['福州市', '厦门市', '莆田市', '三明市', '泉州市', '漳州市', '南平市', '龙岩市', '宁德市' ],
        ['贵阳市','六盘水市', '遵义市', '安顺市', '铜仁地区', '黔西南布依族苗族自治州', '毕节地区', '黔东南苗族侗族自治州', '黔南布依族苗族自治州'],
        ['广州市','韶关市','深圳市','珠海市','汕头市','佛山市','江门市','湛江市','茂名市','肇庆市','惠州市','梅州市','汕尾市','河源市','阳江市','清远市','东莞市','中山市','潮州市','揭阳市','云浮市'],
        ['西宁市' ,'海东地区', '海北藏族自治州', '黄南藏族自治州', '海南藏族自治州', '果洛藏族自治州', '玉树藏族自治州', '海西蒙古族藏族自治州'],
        ['拉萨市','昌都地区', '山南地区', '日喀则地市', '那曲地区', '阿里地区', '林芝地区' ],
        ['成都市','自贡市', '攀枝花市', '泸州市', '德阳市', '绵阳市', '广元市', '遂宁市', '内江市', '乐山市', '南充市', '眉山市', '宜宾市', '广安市', '达州市', '雅安市', '巴中市', '资阳市', '阿坝藏族羌族自治州', '甘孜藏族自治州', '凉山彝族自治州'],
        ['银川市','石嘴山市','吴忠市','固原市','中卫市'],
        ['海口市','三亚市','五指山市', '琼海市', '儋州市', '文昌市', '万宁市', '东方市', '定安县', '屯昌县', '澄迈县', '临高县', '白沙黎族自治县', '昌江黎族自治县', '乐东黎族自治县', '陵水黎族自治县', '保亭黎族苗族自治县', '琼中黎族苗族自治县' ],
        ['台北市', '高雄市', '基隆市', '台中市', '台南市', '新竹市', '嘉义市'],
        ['中西区', '湾仔区', '东区', '南区', '油尖旺区', '深水埗区', '九龙城区', '黄大仙区', '观塘区', '荃湾区', '葵青区', '沙田区', '西贡区', '大埔区', '北区', '元朗区', '屯门区', '离岛区' ],
        ['澳门']
    ];
    
    
    window.onload=function(){//当页面加载完成执行  html css js
        $(".xuansheng").click(function(){
            $(".tog2").hide();
            $(".tog3").hide();
            $(".type1").find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            $(".type").find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            $(".shi02").css("color","#333");
            if($("#sheng").hasClass("red")){
                $("#sheng").removeClass("red");
                $("#sheng").empty();
                $(".mask").hide();
                $("#sheng").css("display","none");
                $("#city").css("display","none");
                //$(".ys_info").css("display","block");
                $(this).find("a>b .shi02").css("color","#333");
                $(".xuansheng>a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            }else{
                $("#sheng").addClass("red");
                $(".xuansheng>a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) bottom no-repeat");
                //$(".ys_info").css("display","none");
                $(".mask").show();
                $("#sheng").css("display","block").addClass("red");
                $("#city").css("display","block");
                $(this).find("a>b .shi02").css("color","#54ccb4");
                var sheng = $("#sheng");
                for(var i=0;i<pre.length;i++){
                    var appendhtml = '<div onclick="getCitysName('+i+',this)" id="tid'+(i+1)+ '" tid="'+i+'" class="citys">'+pre[i]+'</div>';
                    sheng.append(appendhtml);
                }
                $("#tid1").addClass("nnn");
                more($("#tid1").attr("tid"));
            }

        });
    };
    /*北京右侧详情*/
    function more(id){
        var shi=$("#city");
        var arr=citys[id];
        shi.empty();
        for(var i=0;i<arr.length;i++){
            var appendhtmln = '<div  class="qu"  onclick="getName(this)" >'+arr[i]+'</div>';
            shi.append(appendhtmln);
        }
    }
    function getCitysName(number,e1){
       /* console.log(e1);*/
        $("#tid1").removeClass("nnn");
        $("#tid"+(number+1)).addClass("nnn").siblings().removeClass("nnn");
        var shi=$("#city");
        var arr=citys[number];
        shi.empty();
        for(var i=0;i<arr.length;i++){
            var appendhtmln = '<div  class="qu"  onclick="getName(this)" >'+arr[i]+'</div>';
            shi.append(appendhtmln);
        }
    }
    function getName(m1){
        $("#tid1").removeClass("nnn");
       /* console.log(m1.innerHTML);*/
        $(".ys_info").css("display","block");
        $("#sheng").css("display","none");
        $("#city").css("display","none");
        $(".mask").css("display","none");
        $(".xuansheng>a>b>span").html(m1.innerHTML+'<i></i>');
        $(".shi02").css("color","#333");
        $(".xuansheng>a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");

    }
    
    
     $(function(){
        $(".type").click(function(){
        
            $(".tog2").hide();
            $(".type1").find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            $(".shi02").css("color","#333");
            $(".xuansheng").find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            $("#sheng").hide();
            $("#city").hide();
            var index=$(this).index();
            if($(".box3").hasClass("have")){
                $(".mask").hide();
                $(".sever>section").eq(index-1).hide().siblings().hide();
                $(".box3").removeClass("have");
                $(".box3").css("display","none");

                $(this).find("a>b .shi02").css("color","#333");
                $(this).find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            }else{
                $(".mask").show();
                $(".sever>section").eq(index-1).show().siblings().hide();
                $(".box3").css("display","block").addClass("have");
                $(this).find("a>b .shi02").css("color","#54ccb4");
                $(this).find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) bottom no-repeat");
            }
            $(".demo li").click(function(){
                $(this).addClass("nnn").siblings().removeClass("nnn");
                $(".type>a>b>span").html($(this).find("a").text());
                $(".mask").hide();
                $(".tog3").css("display","none");
                $(".shi02").css("color","#333");
                $(".type>a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            });
            //$(".sever>section").eq(index-1).show().siblings().hide()

        });
        $(".type1").click(function(){
            $(".tog3").hide();
            $(".shi02").css("color","#333");
            $(".type").find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            $(".xuansheng").find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            $("#sheng").hide();
            $("#city").hide();
            var index=$(this).index();
            /*$(".tog"+index).show().sibling().hide();*/

            if($(".box2").hasClass("have")){
                $(".mask").hide();
                $(".sever>section").eq(index-1).hide().siblings().hide();
                $(".box2").removeClass("have");
                $(".box2").css("display","none");

                $(this).find("a>b .shi02").css("color","#333");
                $(this).find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) top no-repeat");
            }else{
                $(".mask").show();
                $(".sever>section").eq(index-1).show().siblings().hide();
                $(".box2").css("display","block").addClass("have");
                $(this).find("a>b .shi02").css("color","#54ccb4");
                $(this).find("a>b>i").css("background","url(<%=basePath%>static/zhaoyiwang/zywkehuduan/images/menu_5.png) bottom no-repeat");
            }
        });

    })
</script>
</body>
</html>