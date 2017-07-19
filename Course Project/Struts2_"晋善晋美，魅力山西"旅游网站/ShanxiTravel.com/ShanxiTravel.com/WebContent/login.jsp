<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>账号 - 登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
	<link rel="icon" href="favicon.ico" type="image/x-icon" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
﻿html,body,h1,h2,h3,h4,h5,h6,blockquote,p,pre,dl,dd,ol,ul,li,a,span,caption,th,td,form,fieldset,legend,input,button,textarea,address{margin:0;padding:0}h1,h2,h3,h4,h5,h6{font-size:100%}ol,ul{list-style:none}li{list-style:none}fieldset,img{border:0}address,cite,dfn,em,var{font-style:normal}code,kbd,pre,samp{font-family:courier new,courier,monospace}input,button,textarea,select{font-size:100%}input,button,select,textarea{outline:0}textarea{resize:none}table{border-collapse:collapse;border-spacing:0;empty-cells:show;font-size:inherit}abbr[title]{border-bottom:1px dotted;cursor:help}a,a:hover{text-decoration:none}a,label,:focus{outline:0 none}a,img,input{border:0 none}s{font-style:normal;text-decoration:none}body{font-size:12px;font-family:arial,"Hiragino Sans GB","Microsoft YaHei","WenQuanYi Micro Hei","微軟正黑體","儷黑 Pro",sans-serif}button,input,select,textarea{font-family:arial,"Hiragino Sans GB","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif}input::-moz-placeholder,textarea::-moz-placeholder{color:#3b3b3b;font-weight:normal}::-webkit-input-placeholder{color:#3b3b3b;font-weight:normal}input:-ms-input-placeholder{color:#3b3b3b;font-weight:normal}::-ms-clear{display:none}::-ms-reveal{display:none}.clearfix:after{display:block;content:"\20";height:0;clear:both;overflow:hidden;visibility:hidden}.clearfix{*zoom:1}input::-ms-clear{display:none}input::-ms-reveal{display:none}input:-webkit-autofill{-webkit-box-shadow:0 0 0 1000px white inset}@media screen and (-ms-high-contrast:active),(-ms-high-contrast:none){a{background-color:transparent}}input{background:0;border:0 none}input[type="button"],input[type="submit"],input[type="reset"],a{-webkit-appearance:none;appearance:none}.fl{float:left}.fr{float:right}.nbg{background:none !important}.t_l{text-align:left}.t_c{text-align:center}.t_r{text-align:right}.c_b:before,.c_b:after{content:"";display:block}.c_b:after{clear:both}.c_b{zoom:1}.hidden,.hide{display:none}.hideimportant{display:none !important}.underline{text-decoration:underline}input[type=text]::-ms-clear,input[type=password]::-ms-reveal{display:none}input{color:#333}input:required,input:invalid{-moz-box-shadow:none;box-shadow:none}input::-moz-focus-inner{border:0}html,body{height:100%}body{background:#f5f5f5;color:#757575}a{color:#757575}input{color:#333}::-webkit-input-placeholder{color:#9d9d9d}input:-ms-input-placeholder{color:#9d9d9d}.milogo,.ercode,.icon_type,.iconfacebook,.icon_arrow_down,


.btn_turn,.btn_mod_close,.icon_code_close{background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAALCAYAAACprHcmAAAABGdBTUEAALGPC/xhBQAAAJxJREFUGBl1kLEOgkAQRA9pVUKihTR2FBREPwD/v6ehsDYhoTBWVsAb5AguMMm7I7sz3O0FzrkYOnjDlg409ruxm7MrtKaI4g30w0EyPsAGZCzgBH+ygYUxnNm/fH8gAx2ZQgUNDJqbVVBAxjs84QWT/IC+oKOvUEICdgZKP9k72hm8z1mjbywCRzqrzzMmFFD/HLBcoIUatqR3jnolNxObIsWRIwAAAABJRU5ErkJggg==) no-repeat center center}.wrapper{width:100%;min-height:100%;height:auto;display:-webkit-box;display:box;display:-moz-box;display:-o-box;-webkit-box-align:center;-moz-box-align:center;-o-box-align:center;box-align:center;-webkit-box-pack:center;-moz-box-pack:center;-o-box-pack:center;box-pack:center}.wrap{padding-bottom:80px;padding-top:100px \9}@media screen and (min-width:0\0){.wrap{padding-top:100px}}.layout{background-color:#fff;width:854px;margin:0 auto 20px;position:relative;min-height:620px}.mainbox{padding-bottom:30px}.captcha_layout{min-height:700px}.ercode{width:68px;height:68px;position:absolute;right:0;top:0;opacity:.3;filter:alpha(opacity=30)}.ercode:hover,.ercode:focus{opacity:1;filter:alpha(opacity=100)}.header_tit{padding:50px 0 22px}.milogo{background-position:0 -138px;width:49px;height:48px;margin:0 auto;display:block}.header_tit_txt{font-size:30px;color:#424242;font-weight:normal;padding-top:22px}.lgn_inputbg{position:relative}.login_area{width:358px;margin:0 auto;padding-bottom:20px}.labelbox{display:block;margin-bottom:14px;padding:0;border:1px solid #e0e0e0}.labelbox input{width:326px;height:22px;line-height:22px;padding:13px 16px 13px 14px;display:block}.placehld{padding:13px 16px 13px 14px}.country_list{cursor:pointer;display:none;float:left}.country_regin{max-width:80px;overflow:hidden;white-space:nowrap;-webkit-text-overflow:ellipsis;-moz-text-overflow:ellipsis;-o-text-overflow:ellipsis;text-overflow:ellipsis}.item_account{float:left}.country_regin{margin-right:8px}.country_code{padding-right:12px;position:relative}.icon_arrow_down{width:8px;height:5px;position:absolute;top:8px;right:0;background-position:-102px -69px}.divflex .item_account{width:270px}.turn_area{display:none;height:11px;padding:18px 0 18px 10px;float:left}.btn_turn{width:11px;height:11px;display:block}.turn_off{display:none}.add_regioncode .item_account{width:220px}.add_regioncode .country_list{height:22px;line-height:22px;padding:13px 10px 13px 0;margin-left:10px;color:#333;border-right:1px solid #e0e0e0;display:block;overflow:hidden;position:relative}.add_regioncode .country_list span{display:inline-block;vertical-align:middle}.add_regioncode .turn_area{display:block}.add_regioncode .animation{position:relative;-webkit-animation:fade-in ease-in-out .5s;animation-name:fade-in;animation-timing-function:ease-in-out;animation-duration:.5s}@media screen and (-webkit-min-device-pixel-ratio:0){.login_user{display:-webkit-box;display:box}.turn_area,.country_list,.item_account{float:none}.item_account{-webkit-box-flex:1;box-flex:1}}.input_normal{width:100%}.lgncode{padding-bottom:14px}.code_label{float:left;width:190px;margin-bottom:0;padding:0 14px 0 16px}.code_label .code{width:100%;padding:13px 0}.code_label .placehld{padding:13px 0}.chkcode_img{margin-left:10px;cursor:pointer}.btns_bg{padding-top:10px;padding-bottom:15px}

.btnadpt{width:100%;height:50px;line-height:50px;display:block;margin-bottom:14px;text-align:center;font-size:14px;color:#fff;cursor:pointer}

.btn_orange{background-color:rgb(7,171,184);}

.btn_fb{background-color:#3a5897}.iconfacebook{background-position:0 -69px;width:18px;height:18px;margin-right:10px;display:inline-block;vertical-align:middle}.oth_type_tit{border-top:1px solid #e0e0e0;padding-top:10px}.oth_type_txt{font-size:14px;color:#b0b0b0;padding:0 25px;margin:0 auto}.oth_type_links{padding-top:10px;text-align:center}

.icon_type{width:30px;
          height:30px;
          margin:0 12px;
          display:inline-block;
          text-indent:-9999px;
          -webkit-filter:grayscale(100%);
          -moz-filter:grayscale(100%);
          -ms-filter:grayscale(100%);
          -o-filter:grayscale(100%);
          filter:grayscale(100%);
          filter:url(https://account.xiaomi.com/static/res/e5c6b4e/account-static/respassport/acc-2014/sass/gray.svg#grayscale)}

.icon_type:hover{-webkit-filter:grayscale(0);
                 -moz-filter:grayscale(0);
                 -ms-filter:grayscale(0);
                 -o-filter:grayscale(0);
                 filter:grayscale(0);
                 filter:none}

.icon_qq{background-position:-69px 0}
.icon_wb{background-position:-102px 0}
.icon_zfb{background-position:-69px -38px}
.icon_wx{background-position:-102px -38px}
.errorMessage li span{
	list-style-type: none;
	color:#EF5B00;
	font-family: 微软雅黑;
}


.n_links_area{padding-top:30px;text-align:center;color:#e0e0e0}.n_links_area a{padding:0 9px;font-size:14px}.n_links_area a:hover{color:#ff6700}.site_info{padding-top:10px}.site_info_txt{color:#ff6700}.site_info_link{padding:0 5px}.country-container{width:356px;background:#fff;height:168px;line-height:30px;border:1px solid #e8e8e8;overflow-x:hidden;overflow-y:auto;position:absolute;left:0;top:51px;z-index:98;display:none}#select_country_code{float:right;cursor:pointer}.btn_commom_cancel{display:none}.country-code .header{background:#eaeaea;padding-left:10px}.country-code .record{padding:0 10px;clear:both;overflow:hidden;cursor:pointer}.country-code .record:hover{background:#eaeaea}.country-code .record span{height:30px;overflow:hidden}.country-code .record-country{float:left;max-width:74%;cursor:pointer}.country-code .record-code{float:right;max-width:20%}.n-footer{height:80px;margin-top:-80px;line-height:1.5;text-align:center}.nf-intro{padding:10px}.nf-link-area{text-align:center}.nf-link-area li{display:inline-block;*display:inline;*zoom:1}.nf-link-area a{display:inline-block;*display:inline;*zoom:1;padding:0 10px;color:#757575}.nf-link-area a:hover,.nf-link-area a.current{color:#333}.faq_link a{padding:0 10px}.ercode_area{background-color:#fff;width:854px;margin:0 auto;display:none;position:relative;z-index:98}.ercode_box{width:400px;height:400px;position:absolute;left:50%;top:50%;margin-top:-200px;margin-left:-200px}.code_close{background-color:#bdbdbd;-webkit-border-radius:50%;-moz-border-radius:50%;-o-border-radius:50%;border-radius:50%;width:30px;height:30px;position:absolute;right:20px;top:20px}.icon_code_close{width:14px;height:14px;display:block;margin:8px auto 0;cursor:pointer}.code_hd{padding-bottom:50px;text-align:center}.code_tit{font-size:30px;color:#ff6700;font-weight:normal;padding-bottom:10px}.code_iframe{text-align:center}.ercode_container{background:#fff}.na-img-area{width:80px;height:80px;border:2px solid #e3e3e3;border-radius:50%;padding:4px;background:#fff;position:relative;z-index:4;margin:0 auto}.na-img-bg-area{background:url(https://account.xiaomi.com/static/res/7c3e9b0/passport/acc-2014/img/n-avator-bg.png) 0 0 no-repeat;width:100%;height:100%;border-radius:50%;overflow:hidden}.na-img-area img{display:block;width:100%;height:100%;border-radius:50%}.single_imgarea{text-align:center;line-height:20px;font-size:14px;color:#333}.single_imgarea .us_name{padding-top:10px}.single_imgarea,.confirm_con{line-height:20px;font-size:14px;color:#333}.confirm_con{padding-top:15px}.confirm_con .txt{padding-bottom:5px}@-moz-document url-prefix(){.add_regioncode{width:100%;-moz-box-sizing:border-box;box-sizing:border-box}}.msk{width:100%;height:100%;background:#000;position:absolute;left:0;top:0;display:none;opacity:.4;filter:alpha(opacity=40)}
.err_tip{margin-bottom:5px;line-height:20px;color:#f56700;display:none}
.icon_error{background-position:-69px -69px}
.icon_error{width:14px;height:14px;margin:-1px 5px 0 0;overflow:hidden;display:inline-block;vertical-align:middle}
.err_tip span{vertical-align:middle}
.err_forbidden{padding:10px;border:1px solid #e0e0e0;line-height:1.5;background:#f5f5f5;color:#ff6700;display:none}.error_bg{border:1px solid #f56700 !important}@media only screen and (max-width:850px){.layout{width:100%;min-width:400px;min-height:480px}.mainbox{padding-bottom:15px}.header_tit{padding:25px 0 0}.header_tit_txt{font-size:22px;padding-top:15px}.btns_bg{padding-bottom:10px;padding-top:10px}.oth_type_links{padding-top:5px}.n_links_area{padding-top:0}}@-webkit-keyframes fade-in{from{left:-100%}to{left:0}}@-moz-keyframes fade-in{from{left:-100%}to{left:0}}@-o-keyframes fade-in{from{left:-100%}to{left:0}}@keyframes fade-in{from{left:-100%}to{left:0}}.show_more_lang{background:#fff;border:1px solid #ccc;border-radius:3px;cursor:pointer;margin-right:10px;padding:0 5px}.modal_container{position:fixed;top:0;left:0;z-index:100;width:100%;height:100%}.modal_msk{background:#000;width:100%;height:100%;opacity:.4;filter:alpha(opacity=40);position:absolute;left:0;top:0}.modal_tip{background:#fff;margin:0 auto;padding:0 14px;line-height:30px;border:6px solid #838383;border:6px solid #d1d1d1 \9;-webkit-border-radius:5px;-moz-border-radius:5px;-o-border-radius:5px;border-radius:5px;color:#666;position:fixed}:root .modal_tip{border:6px solid #838383}.modal_tip_hd{height:42px;padding-top:13px;line-height:42px;border-bottom:1px solid #e6e6e6;position:relative}.modal_tip_title{color:#1e1e1e;font-size:15px;font-weight:bold;padding:0 20px}.btn_mod_close{width:22px;height:22px;overflow:hidden;position:absolute;top:7px;right:-7px;_cursor:pointer}.btn_mod_close span{display:none}.more-lang-modal{left:50%;top:50%;margin-left:-200px;margin-top:-170px}.more-lang-modal{width:400px;height:340px}.lang_items_list{padding:10px 10px 0}.lang_items_list li{float:left;width:50%;line-height:20px;padding:5px 0}.lang_items_list a{color:#46639c}.lang_items_list a:hover,.lang_items_list .current{color:#0600fb}.external_logo_area{display:none}
</style>

	<script type="text/javascript">
	function check(form) {
        if(form['username'].value=='') {
              alert("请输入帐号!");
              form['username'].focus();
              return false;
         }
     if(form['password'].value==''){
              alert("请输入密码!");
              form['password'].focus();
              return false;
       }
       return true;
     }
		
	</script>

  </head>
  
  <body class="en">
    			    <div class="wrapper">
      <div class="wrap">
        <div class="layout" id="layout">
          <!--表单输入登录-->
          <div class="mainbox" id="login-main">
            <div><a class="ercode" id="qrcode-trigger" href="javascript:void(0)"></a></div>
            <!-- header s -->            
              <div class="header_tit t_c">     
              <font size="5" color="red"> ${requestScope.error}</font>
                <h4 class="header_tit_txt" id="login-title">账号登录</h4>
             </div>
            <!-- header e -->
            <div>
              <div class="login_area">
                
                <form action="loginCheck" id="login-main-form" method="post" validate="true" onsubmit="return check(this);">
                  <s:token/>
                  <div class="loginbox c_b">
                    <!-- 输入框 -->
                    <div class="lgn_inputbg c_b">
                      <!--验证用户名-->
                      <s:fielderror fieldName="loginerror"/>
                      <label id="region-code" class="labelbox login_user c_b" for="">
                        <div class="turn_area"><a class="btn_turn" id="manual_code" href="javascript:void(0);" title="关闭国家码"></a></div>
                        <div class="country_list">
                          <div class="animation countrycode_selector" id="countrycode_selector">
                            <span class="country_code"><tt class="countrycode-value" id="countrycode_value"></tt><i class="icon_arrow_down"></i></span>
                          </div>
                        </div>
                        <input class="item_account" autocomplete="off" type="text" name="username" id="username" placeholder="邮箱/手机号码"/>
                      </label>
                       <s:fielderror fieldName="username"/>
                      <div class="country-container" id="countrycode_container" style="display: none;"></div>
                      <label class="labelbox c_b">
                        <input type="password" placeholder="密码" name="password" id="pwd"/>
                      </label>
                      <s:fielderror fieldName="password"/>
                       <label class="labelbox c_d">
                        <select name="type" >
									  <option  value="游客" onClick="">游客</option>
           							  <option  value="管理员">管理员</option>
						</select>
                      </label>
                      
                    </div>
                    <div class="lgncode c_b" id="captcha">
                    </div>       
                    <div class="btns_bg">
                      <input class="btnadpt btn_orange" id="login-button" type="submit" value="立即登录">
                    </div>
                    <!-- 其他登录方式 s -->
                    <div class="other_login_type" id="custom_display_16">
                      <fieldset class="oth_type_tit">
                        <legend align="center" class="oth_type_txt">其他方式登录</legend>
                      </fieldset>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- 其他登录方式 e -->
            <div class="n_links_area" id="custom_display_64">
              <a class="outer-link" href="addUser.jsp">注册帐号</a><span>|</span>
              <a class="outer-link" href="">忘记密码？</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div id="custom_display_4" class="n-footer">  
      <div class="nf-link-area clearfix">
        <ul class="lang-select-list">
          <li><a href="#">简体</a>|</li>
          <li><a href="#" data-lang="zh_TW" class="lang-select-li">繁体</a>|</li>
          <li><a href="#">English</a>|</li>
          <li><a href="#">常见问题</a></li>
        </ul>
      </div>
      <p class="nf-intro"><span>版权所有-违者必究</span></p>
    </div><br>
  </body>
</html>
