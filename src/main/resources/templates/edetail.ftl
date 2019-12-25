<html>
<#include "common/header.ftl">

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <nav class="navbar navbar-default navbar-static-top" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1"><span
                                        class="sr-only">导航栏</span><span class="icon-bar"></span><span
                                        class="icon-bar"></span><span class="icon-bar"></span></button>
                            <a class="navbar-brand" href="/recsys">RecSys</a>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="/recsys/main">主页</a>
                                </li>
                                <li class="active">
                                    <a href="/recsys/event/list">活动</a>
                                </li>
                                <li>
                                    <a href="/recsys/group/list">群组</a>
                                </li>
                            </ul>
                            <form class="navbar-form navbar-left" role="search" method="post"
                                  action="/recsys/event/search">
                                <div class="form-group">
                                    <input name="searchContent" type="text" class="form-control" placeholder="请输入关键词"/>
                                </div>
                                <button type="submit" class="btn btn-default">搜索</button>
                            </form>
                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a href="/recsys/logout">登出</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="row clearfix">
                        <div class="col-md-2 column">
                        </div>
                        <div class="col-md-6 column">

                            <h2>${event.eventName}</h2>
                            <p>
                                &nbsp;&nbsp;主办：${event.hostName}<br/>
                                &nbsp;&nbsp;时间：${event.eventTime}<br/>
                                &nbsp;&nbsp;地点：${event.eventRegion}<br/><br/>
                                内容：<br/>${event.eventContent}<br/><br/>
                                <input type="button" value="参加活动"
                                       onclick="javascript:{this.disabled=true;this.value='参加成功';}">
                            </p>

                        </div>
                        <div class="col-md-4 column">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>