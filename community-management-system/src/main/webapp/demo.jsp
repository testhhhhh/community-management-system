<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>ueditor demo</title>
</head>
<body>
<!-- 加载编辑器的容器 -->



<form method="post" action="${pageContext.request.contextPath}/Regist?ope=notice">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom bggray">公告名称：</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom main-for">
				<input type="text" name="noticeName" value="" class="text-word">
			</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom bggray">公告时间：</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom main-for">
				<input type="date" name="noticeTime" value="" class="text-word">
			</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom bggray">社团id：</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom main-for">
				<input type="text" name="communityId" value="" class="text-word">
			</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom bggray">公告内容：</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom main-for">
				<script id="container" name="content" type="text/plain" style="width:1000px;height:1000px;">

				</script>
			</td>
		</tr>
		<tr>
			<td>
				<input name="lru" type="hidden" value="regist"/>
			</td>
		</tr>
		<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
			<td align="left" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>
			<td align="left" valign="middle" class="borderright borderbottom main-for">
				<input name="" type="submit" value="提交" class="text-but">
				<input name="" type="reset" value="重置" class="text-but"></td>
		</tr>
	</table>
</form>
</body>

<!-- 配置文件 -->
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
	// if(UE.Editor.prototype._bkGetActionUrl == undefined)
	// 	UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
	//
	// UE.Editor.prototype.getActionUrl = function(action) {
	// 	if (action == 'uploadimage' || action == 'uploadscrawl') {
	// 		return 'http://localhost:8080/UploadServlet';//这就是自定义的上传地址
	// 	} else if (action == 'uploadvideo') {
	// 		return '';
	// 	} else {
	// 		return this._bkGetActionUrl.call(this, action);
	// 	}
	// }




	var ue = UE.getEditor('container');
</script>
</html>
