<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="weui-tabbar wy-foot-menu">
    <a href="<%=basePath%>api/zywkehu/index1.do" id="sy" onclick="abc(this)" class="weui-tabbar__item">
        <div class="weui-tabbar__icon foot-menu-home"></div>
        <p class="weui-tabbar__label">首页</p>
    </a>
    <a href="<%=basePath%>api/ljylkehu/index.do" id="cjjb" onclick="abc(this)" class="weui-tabbar__item weui-bar__item--on">
        <div class="weui-tabbar__icon foot-menu-ljyl"></div>
        <p class="weui-tabbar__label">旅居养老</p>
    </a>
    <a href="<%=basePath%>api/ljylkehu/fabuxuqiuList.do" id="fbxq" onclick="abc(this)" class="weui-tabbar__item">
        <div class="weui-tabbar__icon  foot-menu-member"></div>
        <p class="weui-tabbar__label">发布需求</p>
    </a>
    <a href="<%=basePath%>api/ljylkehu/connectUs.do" id="lxwm" onclick="abc(this)" class="weui-tabbar__item">
        <div class="weui-tabbar__icon foot-menu-contact"></div>
        <p class="weui-tabbar__label">联系我们</p>
    </a>
    <a href="<%=basePath%>api/ljylkehu/huiyuanzhongxin.do" id="hyzx"  onclick="abc(this)" class="weui-tabbar__item">
        <div class="weui-tabbar__icon foot-menu-user"></div>
        <p class="weui-tabbar__label">会员中心</p>
    </a>
</div>