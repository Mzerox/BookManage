<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 米泽榕
  Date: 2022/5/16
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <!-- Basic -->
  <meta charset="UTF-8" />

  <title>BookManage</title>

  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

  <!-- Import google fonts -->
  <link href='http://fonts.useso.com/css?family=Titillium+Web' rel='stylesheet' type='text/css'>

  <!-- Favicon and touch icons -->
  <link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
  <link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
  <link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
  <link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
  <link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
  <link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
  <link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
  <link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" />

  <!-- Vendor CSS-->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  <link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />

  <!-- Plugins CSS-->
  <link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
  <link href="assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
  <link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
  <link href="assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
  <link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
  <link href="assets/plugins/jqvmap/jqvmap.css" rel="stylesheet" />

  <!-- Theme CSS -->
  <link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

  <!-- Page CSS -->
  <link href="assets/css/style.css" rel="stylesheet" />
  <link href="assets/css/add-ons.min.css" rel="stylesheet" />

  <!-- end: CSS file-->


  <!-- Head Libs -->
  <script src="assets/plugins/modernizr/js/modernizr.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<script src="assets/js/cart.js"></script>
<script src="assets/js/core.min.js" >
<script src="assets/js/remove.js" >
  <script src="scripts/jquery.mmenu.min.js"></script>

  <![endif]-->
</head>

<body class=" pace-done" style="">

<!-- 左边框-->
<div class="sidebar mm-menu mm-horizontal mm-offcanvas mm-ismenu">
  <div class="sidebar-collapse mm-panel mm-opened mm-subopened mm-current" id="mm-0">
    <!-- BookManage Logo-->
    <div class="sidebar-header">
      <img src="assets/img/logo.png" class="img-responsive" alt="">
    </div>
    <!-- 左边框导航盒子-->
    <div class="sidebar-menu" style="height: 769px;">
      <nav id="menu" class="nav-main opened" role="navigation">
        <!-- 左边框导航内细分类-->
        <ul class="nav nav-sidebar mm-list">
          <li>
            <a href="index">
              <i class="fa fa-tasks" aria-hidden="true"></i><span>首页</span>
            </a>
          </li>
          <c:forEach items="${bookList}" var="book">
            <li >
              <a href="category?id=${book.getId()}">
                <i class="fa fa-tasks" aria-hidden="true"></i><span>${book.getName()}</span>
              </a>
            </li>
          </c:forEach>
          <li>
            <a href="bookcase.jsp">
              <i class="fa fa-tasks" aria-hidden="true"></i><span>我的书架</span>
            </a>
          </li>
          <li>
            <a href="reader">
              <i class="fa fa-tasks" aria-hidden="true"></i><span>我的借阅</span>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</div>
<!-- 整体盒子-->
<div class="mm-page" style="min-height: 969px;">
  <!--    <div class="pace  pace-inactive">-->
  <!--        <div class="pace-progress" data-progress-text="100%" data-progress="99" style="width: 100%;">-->
  <!--            <div class="pace-progress-inner"></div>-->
  <!--        </div>-->
  <!--        <div class="pace-activity"></div>-->
  <!--    </div>-->
  <div class="mm-page" style="min-height: 969px;">
    <!--        <div class="pace  pace-inactive">-->
    <!--            <div class="pace-progress" data-progress-text="100%" data-progress="99" style="width: 100%;">-->
    <!--                <div class="pace-progress-inner"></div>-->
    <!--            </div>-->
    <!--            <div class="pace-activity"></div>-->
    <!--        </div>-->
    <div class="mm-page" style="min-height: 969px;">
      <!--            <div class="pace  pace-inactive">-->
      <!--                <div class="pace-progress" data-progress-text="100%" data-progress="99" style="width: 100%;">-->
      <!--                    <div class="pace-progress-inner"></div>-->
      <!--                </div>-->
      <!--                <div class="pace-activity"></div>-->
      <!--            </div>-->
      <!-- 上导航盒子-->
      <div class="navbar" role="navigation">
        <div class="container-fluid container-nav">
          <div style="font-family:'微软雅黑 Light';font-size: x-large;font-weight: bold;color: rgb(59,191,180);">程序猿天堂自助图书馆</div>
          <!-- 用户盒子-->
          <c:if test="${login=='true'}">
            <div class="navbar-right" style="transform: translateY(-60px)">
              <div class="userbox">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <figure class="profile-picture hidden-xs">
                    <img src="assets/img/avatar.jpg" class="img-circle" alt="">
                  </figure>
                  <div class="profile-info">
                    <span class="name">${name}</span>
                    <span class="role"><i class="fa fa-circle bk-fg-success"></i>Administrator</span>
                  </div>
                  <i class="fa custom-caret"></i>
                </a>
                <div class="dropdown-menu">
                  <ul class="list-unstyled">
                    <li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
                      <div class="progress progress-xs  progress-striped active">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                          60%
                        </div>
                      </div>
                    </li>
                    <li>
                      <a href="page-profile.html"><i class="fa fa-user"></i> Profile</a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-wrench"></i> Settings</a>
                    </li>
                    <li>
                      <a href="page-invoice"><i class="fa fa-usd"></i> Payments</a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-file"></i> File</a>
                    </li>
                    <li>
                      <a href="login.jsp"><i class="fa fa-power-off"></i> Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </c:if>
          <c:if test="${login=='false'}">
            <div class="navbar-right" style="font-size:x-large;transform: translateY(-60px) translateX(-50px)">
              <a href="login.jsp" style="text-decoration: none;color: black">登录</a>
            </div>
          </c:if>
        </div>
      </div>
      <!-- 主页正题盒子-->
      <div class="container-fluid content">
        <div class="row">
          <div class="main" style="min-height: 969px;">
            <div class="page-header">
              <form class="search navbar-form" action="SearchServlet" method="get">
                <div class="input-group input-search">
                  <input type="text" class="form-control bk-radius" name="q" id="q" placeholder="Search...">
                  <span class="input-group-btn">
                                            <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                                        </span>
                </div>
              </form>
            </div>
            <!-- 借阅清单-->
            <div>
              <table class="table table-styled mb-0">
                <thead>
                <tr>
                  <th><input type="checkbox" name="checkall" value="all" id="del"  >全选</th>
<%--                  <input type="checkbox" name="checkall" value="all" id="del"  >--%>
                  <th>书籍编码</th>
                  <th>书籍名称</th>
                  <th>书籍作者</th>
                  <th>书籍出版社</th>
                  <th>图书状态</th>
                  <th><button class="xujie"  id="btn" style="color: white;background-color: #0cbeaf;width: 80px;height: 50px;text-align: center" >
                    借阅
                  </button></th>
                  <th></th>
                </tr>
                </thead>
                <c:forEach items="${shop.getBookList()}" var="book">
                  <tbody>
                  <tr id="${book.getId()}">
<%--                    <td> <input class="qin" type="checkbox" name="check" ></td>--%>
                   <td><input class="qin" type="checkbox" name="check" value="${book.getId()}" ></td>
                    <td >${book.getCode()}</td>
                    <td >${book.getName()}</td>
                    <td >${book.getAuthors()}</td>
                    <td>${book.getPress()}</td>
                    <td>${book.getStatus()}</td>
                    <td>
                      <c:if test="${book.getStatus()== '有货'}">
                        <a style="color: #00acee" href="shop?id=${book.getId()}">借阅</a>
                      </c:if>
                      <c:if test="${book.getStatus()== '无货'}">
                        <p style="color: red">已借阅</p>
                      </c:if>
                    </td>
                    <td><a style="color: red;text-decoration: none" href="remover?id=${book.getId()}">X</a></td>
                  </tr>
                  </tbody>
                </c:forEach>
              </table>
        </div>
      </div>
    </div>
    <!--        <div class="jqvmap-label" style="display: none;">-->
    <!--        </div>-->
  </div>
</div>


<!-- start: JavaScript-->

<!-- Vendor JS-->
<script src="assets/vendor/js/jquery.min.js"></script>
<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendor/skycons/js/skycons.js"></script>
<script src="assets/vendor/js/pace.min.js"></script>

<!-- Plugins JS-->
<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<script src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/plugins/bootkit/js/bootkit.js"></script>
<script src="assets/plugins/magnific-popup/js/magnific-popup.js"></script>
<script src="assets/plugins/moment/js/moment.min.js"></script>
<script src="assets/plugins/fullcalendar/js/fullcalendar.js"></script>
<script src="assets/plugins/flot/js/jquery.flot.min.js"></script>
<script src="assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
<script src="assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
<script src="assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
<script src="assets/plugins/flot/js/jquery.flot.time.min.js"></script>
<script src="assets/plugins/flot-tooltip/js/jquery.flot.tooltip.js"></script>
<script src="assets/plugins/chart-master/js/Chart.js"></script>
<script src="assets/plugins/jqvmap/jquery.vmap.js"></script>
<script src="assets/plugins/jqvmap/data/jquery.vmap.sampledata.js"></script>
<script src="assets/plugins/jqvmap/maps/jquery.vmap.world.js"></script>
<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>

<!-- Theme JS -->
<script src="assets/js/jquery.mmenu.min.js"></script>
<script src="assets/js/core.min.js"></script>

<!-- Pages JS -->
<script src="assets/js/pages/index.js"></script>

<!-- end: JavaScript-->
<script>
  $(function () {
    $('#del').click(function () {
      if(this.checked){
        $("input[name='check']").attr("checked",true);
      }
      else {
        $("input[name='check']").attr("checked",false);
      }
    })

  })
  $(function () {
    $('#btn').click(function () {

      // let check=$('.qin').val();
      let check=document.getElementsByName('check')
      let id=[];
      if ($("input[name='check']:checked").length==0){
        confirm("请至少选择一个目标")
      }else {
        for(i=0;i<check.length;i++){

          if(check[i].checked){
            id.push(check[i].value);

          }
        }

        $.ajax({
          url:'shopreal',
          type:'get',
          data:{
            id:JSON.stringify(id)

          },
          success:(req)=>{
            window.alert("借阅成功")

            for (let i = 0; i < id.length; i++) {
              $("input[name='check']").parents('tr#'+id[i]).remove()
            }

            // $("input[name='check']:checked").parents('td').remove()

            // $("input[name='check']").attr("checked",true).parents('td').remove()



          }
        })
      }

    })


  })
</script>


<!-- Code injected by live-server -->
<%--<script type="text/javascript">--%>
<%--  // <![CDATA[  <-- For SVG support--%>
<%--  if ('WebSocket' in window) {--%>
<%--    (function () {--%>
<%--      function refreshCSS() {--%>
<%--        var sheets = [].slice.call(document.getElementsByTagName("link"));--%>
<%--        var head = document.getElementsByTagName("head")[0];--%>
<%--        for (var i = 0; i < sheets.length; ++i) {--%>
<%--          var elem = sheets[i];--%>
<%--          var parent = elem.parentElement || head;--%>
<%--          parent.removeChild(elem);--%>
<%--          var rel = elem.rel;--%>
<%--          if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {--%>
<%--            var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');--%>
<%--            elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());--%>
<%--          }--%>
<%--          parent.appendChild(elem);--%>
<%--        }--%>
<%--      }--%>
<%--      var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';--%>
<%--      var address = protocol + window.location.host + window.location.pathname + '/ws';--%>
<%--      var socket = new WebSocket(address);--%>
<%--      socket.onmessage = function (msg) {--%>
<%--        if (msg.data == 'reload') window.location.reload();--%>
<%--        else if (msg.data == 'refreshcss') refreshCSS();--%>
<%--      };--%>
<%--      if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {--%>
<%--        console.log('Live reload enabled.');--%>
<%--        sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);--%>
<%--      }--%>
<%--    })();--%>
<%--  }--%>
<%--  else {--%>
<%--    console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');--%>
<%--  }--%>
<%--  // ]]>--%>
<%--</script>--%>


<%--<script>--%>
<%--  (function() {--%>
<%--    var ws = new WebSocket('ws://' + window.location.host + '/jb-server-page?reloadServiceClientId=10');--%>
<%--    ws.onmessage = function (msg) {--%>
<%--      if (msg.data === 'reload') {--%>
<%--        window.location.reload();--%>
<%--      }--%>
<%--      if (msg.data.startsWith('update-css ')) {--%>
<%--        var messageId = msg.data.substring(11);--%>
<%--        var links = document.getElementsByTagName('link');--%>
<%--        for (var i = 0; i < links.length; i++) {--%>
<%--          var link = links[i];--%>
<%--          if (link.rel !== 'stylesheet') continue;--%>
<%--          var clonedLink = link.cloneNode(true);--%>
<%--          var newHref = link.href.replace(/(&|\?)jbUpdateLinksId=\d+/, "$1jbUpdateLinksId=" + messageId);--%>
<%--          if (newHref !== link.href) {--%>
<%--            clonedLink.href = newHref;--%>
<%--          }--%>
<%--          else {--%>
<%--            var indexOfQuest = newHref.indexOf('?');--%>
<%--            if (indexOfQuest >= 0) {--%>
<%--              // to support ?foo#hash--%>
<%--              clonedLink.href = newHref.substring(0, indexOfQuest + 1) + 'jbUpdateLinksId=' + messageId + '&' +--%>
<%--                      newHref.substring(indexOfQuest + 1);--%>
<%--            }--%>
<%--            else {--%>
<%--              clonedLink.href += '?' + 'jbUpdateLinksId=' + messageId;--%>
<%--            }--%>
<%--          }--%>
<%--          link.replaceWith(clonedLink);--%>
<%--        }--%>
<%--      }--%>
<%--    };--%>
<%--  })();--%>
<%--</script><div id="mm-blocker"></div></div></div></body>--%>
</html>
