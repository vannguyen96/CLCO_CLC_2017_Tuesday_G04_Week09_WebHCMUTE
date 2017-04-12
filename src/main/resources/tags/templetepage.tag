<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WELCOME TO ICSSE 2017</title>

<link href="<c:url value="css/show_img.css"/>" rel="stylesheet"
	type="text/css" />

<script type="text/javascript"
	src="<c:url value="Portlets/PanelBar/js/jquery-1.7.2.min.js"/>"></script>
<script src="<c:url value="js/Common.js" />" type="text/javascript"></script>
<script src="<c:url value="js/PagingContent.js" />"
	type="text/javascript"></script>
<link rel="shortcut icon" type="image/png"
	href="<c:url value="Resources/Imagephoto/logo.png"/>" />
<link href="<c:url value="components/lightbox/css/lightbox.css"/>"
	rel="stylesheet" type="text/css" />
<script src="<c:url value="Components/lightbox/js/lightbox.min.js"/>"
	type="text/javascript"></script>
<link href="<c:url value="css/search_Article.css"/>" rel="stylesheet" />
<script language="javascript" type="text/javascript">
	function SearchProcess(event) {
		if (event.keyCode == 13) {
			OnSearch(document.getElementById('txtSearchArticle').value);
			return false;
		}
		return true;
	}
	function OnSearch(query) {
		PSCPortal.Services.CMS.SearchAndPaging(query, currentPage,
				OnSearchSuccess, OnSearchFailed);
	}

	function OnSearchSuccess(results, context, methodName) {
		var position = results.indexOf('_');
		totalRecords = results.substring(0, position);
		results = results.substring(position + 1);
		LoadContentAndPaging(results);
	}
	function OnSearchFailed(results, context, methodName) {
	}

	function retitleUrl(str) {
		str = str.replace(/^\s+|\s+$/g, ''); // trim
		str = str.toLowerCase();
		// remove accents, swap Ã± for n, etc
		var from = "Ã Ã¡áº£Ã£áº¡Äáº±áº¯áº³áºµáº·Ã¢áº§áº¥áº©áº«áº­ÄÃ¨Ã©áº»áº½áº¹Ãªá»áº¿á»á»á»Ã¬Ã­á»Ä©á»Ã²Ã³á»Ãµá»Ã´á»á»á»á»á»Æ¡á»á»á»á»¡á»£Ã¹Ãºá»§Å©á»¥Æ°á»«á»©á»­á»¯á»±á»³Ã½á»·á»¹á»µÂ·/_,:;";
		var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
		for (var i = 0, l = from.length; i < l; i++) {
			str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
		}
		str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
		.replace(/\s+/g, '-') // collapse whitespace and replace by -
		.replace(/-+/g, '-'); // collapse dashes
		return str;
	};

	function popunder() {
		$('a').not(
				'[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]')
				.each(
						function() {
							$(this).attr(
									'href',
									function(index, value) {
										if (value != undefined) {
											var index = value
													.indexOf("Default.aspx");
											if (index >= 0)
												return value = "/"
														+ value.substring(
																index,
																value.length);
										}
									});
						});
		var articleId = '' != '' ? '' : '';
		var topicId = '' != '' ? '' : '';
		var moduleId = '' != '' ? '' : '';
		if (articleId != '') {
			if (window.history.state == null) {
				if (articleId.indexOf("index.html") > -1)
					articleId = articleId.substr(0, articleId
							.indexOf("index.html"));
				window.history.replaceState({
					ArticleId : articleId
				}, "ArticleId", "/ArticleId/" + articleId + "/"
						+ retitleUrl(''));
			}
		}
		if (topicId != '') {
			if (window.history.state == null) {
				if (topicId.indexOf("index.html") > -1)
					topicId = topicId.substr(0, topicId.indexOf("index.html"));
				window.history.replaceState({
					TopicId : topicId
				}, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
			}
		}

	}
</script>


<link
	href="<c:url value = "css/WebResource35b9.css"/>?d=QGz0EVx6KnXd0XFNz6_h8xNXGaTBbw0tdFlEudQ7cm-OthWnn6Dm_5tU0MRnaGIhZBbRg9S7WqTpHMZa1xNtEI0ab6Kl1IPnRi5TjbKoJFbytbX9TFl44EGYy--GyfelKV3DXQ2&amp;t=636040235083572431"
	type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
<link
	href="WebResourceb3b4.css?d=x4growm4tE1xfqgq7CUmVsUnI-CbXa2N-c2_fNRwnEpvDP0BV-wXVIwtg-UArpbb2CDL-uqyWHg0pIMI2IqW_DG9HsBwwwsOkPeV5QgKyY9Yh5O4O982ECGyV1iNUPf_9TfsdN6N5kUDZgz-JeRM7Yx1qwU1&amp;t=636040235083572431"
	type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
<link
	href="<c:url value="css/WebResourcee0ee.css"/>?d=ytD-yNU6w7OB5aQbpzdcKJJ4smWyZMrK26w2o8npDQvDJ2icAgnw46NhWNMATnygLURPdF6r1twj4HqvCpovy2cbE23Jpa5bO0SD9RAs5_bYKKb1dSU8kaK__zLNU1OzkJIV0Q2&amp;t=636040235083572431"
	type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
</head>
<body class="body" onload='popunder();'>

	<!-- header -->
	<jsp:invoke fragment="header" />
	<form name="form1" method="post" action="#" id="form1">
		<div>
			<input type="hidden" name="RadScriptManager1_TSM"
				id="RadScriptManager1_TSM" value="" /> <input type="hidden"
				name="__EVENTTARGET" id="__EVENTTARGET" value="" /> <input
				type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPaA8FDzhkNDcwM2E4MmIzZTg1NxgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgURUmFkV2luZG93TWFuYWdlcjEFOmN0bDA2JHBvcnRsZXRfODAwODg2YTgtY2NiNS00MGRkLTgxM2EtMmMwMmFjMGQyZTkyJFJhZE1lbnWWq04WBGWRJGLcOwi3PFP5x9B5Cw==" />
		</div>

		<script type="text/javascript">
			//<![CDATA[
			var theForm = document.forms['form1'];
			if (!theForm) {
				theForm = document.form1;
			}
			function __doPostBack(eventTarget, eventArgument) {
				if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
					theForm.__EVENTTARGET.value = eventTarget;
					theForm.__EVENTARGUMENT.value = eventArgument;
					theForm.submit();
				}
			}
			//]]>
		</script>


		<script
			src="<c:url value="js/WebResource9300.js"/>?d=m-BGqXLvdmxbkGKJ0cdC31IEEQSwl8M48qzhTdLsvA4cQATMbLAUn5HThStArYaMS9SVdQ3Idd2S2XYrPm7fUFdO8YM1&amp;t=635328605200000000"
			type="text/javascript"></script>


		<script
			src="<c:url value = "js/Telerik.Web.UI.WebResourcec672.js"/>?_TSM_HiddenField_=RadScriptManager1_TSM&amp;compress=1&amp;_TSM_CombinedScripts_=%3b%3bSystem.Web.Extensions%2c+Version%3d4.0.0.0%2c+Culture%3dneutral%2c+PublicKeyToken%3d31bf3856ad364e35%3aen-US%3a509f92a1-e5fd-464f-a450-13846a6c973b%3aea597d4b%3ab25378d2%3bTelerik.Web.UI%2c+Version%3d2011.1.315.35%2c+Culture%3dneutral%2c+PublicKeyToken%3d121fae78165ba3d4%3aen-US%3ae4ca4719-c559-4761-8501-9be20bbda1fe%3a16e4e7cd%3a874f8ea2%3af7645509%3a24ee1bba%3af46195d3%3a19620875%3a490a9d4e%3abd8f85e4%3ae330518b%3a1e771326%3ac8618e41"
			type="text/javascript"></script>
		<script type="text/javascript">
			//<![CDATA[
			if (typeof (Sys) === 'undefined')
				throw new Error(
						'ASP.NET Ajax client-side framework failed to load.');
			//]]>
		</script>

		<script src="<c:url value ="Services/PortletProxy.asmx/jsdebug.js"/>"
			type="text/javascript"></script>
		<script src="<c:url value = "Services/ModuleProxy.asmx/jsdebug.js"/>"
			type="text/javascript"></script>
		<script src="<c:url value = "Services/CMS.asmx/jsdebug.js"/>"
			type="text/javascript"></script>
		<script
			src="<c:url value = "Services/WeatherService.asmx/jsdebug.js"/>"
			type="text/javascript"></script>
		<div>

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="CA0B0334" />
		</div>
		<div id="RadWindowManager1" style="display: none;">
			<!-- 2011.1.315.35 -->
			<div id="RadWindowManager1_alerttemplate" style="display: none;">
				<div class="rwDialogPopup radalert">
					<div class="rwDialogText">{1}</div>

					<div>
						<a onclick="$find('{0}').close(true);" class="rwPopupButton"
							href="javascript:void(0);"> <span class="rwOuterSpan">
								<span class="rwInnerSpan">##LOC[OK]##</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<div id="RadWindowManager1_prompttemplate" style="display: none;">
				<div class="rwDialogPopup radprompt">
					<div class="rwDialogText">{1}</div>
					<div>
						<script type="text/javascript">
							function RadWindowprompt_detectenter(id, ev, input) {
								if (!ev)
									ev = window.event;
								if (ev.keyCode == 13) {
									var but = input.parentNode.parentNode
											.getElementsByTagName("A")[0];
									if (but) {
										if (but.click)
											but.click();
										else if (but.onclick) {
											but.focus();
											var click = but.onclick;
											but.onclick = null;
											if (click)
												click.call(but);
										}
									}
									return false;
								} else
									return true;
							}
						</script>
						<input title="Eneter Value"
							onkeydown="return RadWindowprompt_detectenter('{0}', event, this);"
							type="text" class="rwDialogInput" value="{2}" />
					</div>
					<div>
						<a
							onclick="$find('{0}').close(this.parentNode.parentNode.getElementsByTagName('input')[0].value);"
							class="rwPopupButton" href="javascript:void(0);"><span
							class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
						<a onclick="$find('{0}').close(null);" class="rwPopupButton"
							href="javascript:void(0);"><span class="rwOuterSpan"><span
								class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
					</div>
				</div>
			</div>
			<div id="RadWindowManager1_confirmtemplate" style="display: none;">
				<div class="rwDialogPopup radconfirm">
					<div class="rwDialogText">{1}</div>
					<div>
						<a onclick="$find('{0}').close(true);" class="rwPopupButton"
							href="javascript:void(0);"><span class="rwOuterSpan"><span
								class="rwInnerSpan">##LOC[OK]##</span></span></a> <a
							onclick="$find('{0}').close(false);" class="rwPopupButton"
							href="javascript:void(0);"><span class="rwOuterSpan"><span
								class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
					</div>
				</div>
			</div>
			<input id="RadWindowManager1_ClientState"
				name="RadWindowManager1_ClientState" type="hidden" />
		</div>
		<script type="text/javascript">
			//<![CDATA[
			Sys.WebForms.PageRequestManager._initialize('RadScriptManager1',
					'form1', [], [], [], 90, '');
			//]]>
		</script>


		<link
			href="<c:url value = "Resources/ImagesPortal/PhongBan/main.css"/>"
			rel="stylesheet" />
		<link href="<c:url value = "css/mainPortlets.css"/>" rel="stylesheet" />
		<script language="javascript" type="text/javascript">
			function SearchProcess(event) {
				if (event.keyCode == 13) {
					OnSearch(document.getElementById('txtSearchArticle').value);
					return false;
				}
				return true;
			}
			function OnSearch(query) {
				PSCPortal.Services.CMS.SearchAndPaging(query, currentPage,
						OnSearchSuccess, OnSearchFailed);
			}

			function OnSearchSuccess(results, context, methodName) {
				var position = results.indexOf('_');
				totalRecords = results.substring(0, position);
				results = results.substring(position + 1);
				LoadContentAndPaging(results);
			}
			function OnSearchFailed(results, context, methodName) {
			}
		</script>
			<div class="wrapper">
				<table cellspacing="0" cellpadding="0" border="0"
					style="border-collapse: collapse;">
					<tr>
						<td colspan="2"><div id="pnTop">
								<div id="pnTopDisplay" style="width: 1000px; float: left">
									<div id='ctl06_portlet_83a3e05a-eb99-4512-bd1a-5af90706fcf3'
										style="width: 574px; float: left">
										<div>
											<div class="P_top">
												<div class="P_logo">
													<div class="anh_logo">
														<img alt=""
															src="<c:url value = "Resources/Images/SubDomain/icsse2017/Banner%20Hoi%20nghi%20quoc%20te%20sua.jpg"/>"
															style="width: 800px; height: 188px;" /><br />
													</div>
													<div class="name_ute"></div>
												</div>
											</div>

										</div>
									</div>
									<div id='ctl06_portlet_6299a742-1878-4325-8536-4faefa3c1b4c'
										style="width: 199px; float: right">
										<div>
											<div class="search_phong">
												<input class="bgsearch_phong" id="txtSearchArticle"
													onkeydown="return SearchProcess(event);" type="text" /><input
													class="btsearch_phong"
													onclick="OnSearch(document.getElementById('txtSearchArticle').value);"
													type="button" />
											</div>
											<div class="link_trang">
												<a href="home.jsp">http://icsse2017.hcmute.edu.vn</a>
											</div>

										</div>
									</div>
									<div id='ctl06_portlet_e28a24d5-befe-4213-a3d5-2e1ebcb2a71e'
										style="width: 1000px; float: left">
										<div>

											<link
												href="<c:url value = "Portlets/NivoSlider/CSS/nivo-slider.css"/>"
												rel="stylesheet" />
											<link
												href="<c:url value = "Portlets/NivoSlider/CSS/themes/default/default.css"/>"
												rel="stylesheet" />

											<script
												src="<c:url value = "Portlets/NivoSlider/Scripts/jquery.nivo.slider.js"/>"></script>




											<div class="container" style="height: 350px;">
												<div class="slider-wrapper theme-default">
													<div id="slider" class="nivoSlider">

														<a href="#" target="_blank"> <img
															src="<c:url value = "Resources/imagesPortlet/e28a24d5-befe-4213-a3d5-2e1ebcb2a71e/HNQT3.jpg"/>"
															title="" /></a> <a href="#" target="_blank"> <img
															src="<c:url value = "Resources/imagesPortlet/e28a24d5-befe-4213-a3d5-2e1ebcb2a71e/HNQT2.jpg"/>"
															title="" /></a> <a href="#" target="_blank"> <img
															src="<c:url value = "Resources/imagesPortlet/e28a24d5-befe-4213-a3d5-2e1ebcb2a71e/HNQT1.jpg"/>"
															title="" /></a>

													</div>
												</div>
											</div>
											<script>
												$(document)
														.ready(
																function() {
																	$(
																			".nivoSlider")
																			.nivoSlider(
																					{
																						effect : 'random',
																						slices : 15,
																						boxCols : 8,
																						boxRows : 4,
																						animSpeed : 500,
																						pauseTime : 3000,
																						startSlide : 0,
																						directionNav : true,
																						controlNav : true,
																						controlNavThumbs : false,
																						pauseOnHover : true,
																						manualAdvance : false,
																						prevText : 'Prev',
																						nextText : 'Next',
																						randomStart : false,
																						beforeChange : function() {
																						},
																						afterChange : function() {
																						},
																						slideshowEnd : function() {
																						},
																						lastSlide : function() {
																						},
																						afterLoad : function() {
																						}
																					});
																	$(
																			'.nivoSlider')
																			.css(
																					'height',
																					'350px');
																	$(
																			'.nivoSlider img')
																			.css(
																					'height',
																					'350px');
																})
											</script>
										</div>
									</div>
									<div id='ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92'
										style="padding: 10px 0px 0px 0px; width: 1000px; float: left">
										<div>

											<link
												href="<c:url value = "Portlets/MenuRad/Menu.Green.css"/>"
												rel="stylesheet" type="text/css" />
											<div
												id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"
												class="RadMenu RadMenu_Green rmSized"
												style="height: 40px; z-index: 1; width: 100%;">
												<ul class="rmRootGroup rmHorizontal">
													<li class="rmItem rmFirst"><a
														href="Default71a5.html?PageId=8cb7e0c5-10f3-438b-8881-a74c24b373e3"
														class="rmLink rmRootLink"><span class="rmText">Home</span></a></li>
													<li class="rmItem "><a
														href="Portlets/MenuRad/index.html#"
														class="rmLink rmRootLink"><span class="rmText">About</span></a>
														<div class="rmSlide">
															<ul class="rmVertical rmGroup rmLevel1">
																<li class="rmItem rmFirst"><a
																	href="Default50b6.html?ArticleId=f9111384-c9ad-46ac-ba10-037bf3d691a4"
																	class="rmLink"><span class="rmText">icsse</span></a></li>
																<li class="rmItem "><a
																	href="Default093c.html?ArticleId=c8018710-9562-44c6-bef0-2a0f22e73f6b"
																	class="rmLink"><span class="rmText">HCMUTE</span></a></li>
																<li class="rmItem rmLast"><a
																	href="Default816d.html?ArticleId=dd21088d-cb55-4f9d-ac9c-73553c715cae"
																	class="rmLink"><span class="rmText">Committees</span></a></li>
															</ul>
														</div></li>
													<li class="rmItem ">
												
												<a href="<c:url value="/jsp/Default789b.jsp"/>?ArticleId=fc8c1223-a9d2-46b5-9db3-665c778f0ac9"
														class="rmLink rmRootLink"><span class="rmText">Call
																for papers</span></a></li>
													<li class="rmItem "><a
														href="Defaultd478.html?ArticleId=945864b5-165f-45a3-8e75-a9ba5ac1f9ef"
														class="rmLink rmRootLink"><span class="rmText">Submission</span></a></li>
													<li class="rmItem "><a
														href="Defaulta8ef.html?ArticleId=707e0e24-5220-4821-a40f-4041eb76cc1a"
														class="rmLink rmRootLink"><span class="rmText">Registration</span></a></li>
													<li class="rmItem "><a
														href="Default6b73.html?ArticleId=be204435-0615-4fc3-aa86-392d871decc8"
														class="rmLink rmRootLink"><span class="rmText">Keynote
																Speakers</span></a></li>
													<li class="rmItem "><a
														href="Portlets/MenuRad/index.html#"
														class="rmLink rmRootLink"><span class="rmText">Program</span></a></li>
													<li class="rmItem "><a
														href="Portlets/MenuRad/index.html#"
														class="rmLink rmRootLink"><span class="rmText">Venue
																& Hotel</span></a></li>
													<li class="rmItem rmLast"><a
														href="Default84ba.html?ArticleId=b4031ebe-e802-4402-a49a-5769943872a5"
														class="rmLink rmRootLink"><span class="rmText">Contact</span></a></li>
												</ul>
												<input
													id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState"
													name="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState"
													type="hidden" />
											</div>

										</div>
									</div>
								</div>
							</div></td>
							
					</tr>
					
					<tr valign="top">
					
					<td><div id="pnCenter">
					<div id="pnCenterDisplay" style="width: 692px;float:left">
					
					<jsp:doBody />
					
					</div>
					
					
					 </div>
     			   </td>
					
					</td>
		<td><div id="pnRight">
			<div id="pnRightDisplay" style="padding:0px 0px 0px 6px;width:300px;float:left">
				<div id='ctl06_portlet_b633be64-8363-4e53-9952-6acf34d3e9e9' style="float:left;"><div>
					
<style type="text/css">

</style>
<div class="thongbao_phong">
    <div class="topictb_phong_blue">
        <h3>Latest news</h3>
        <a class="wobble-horizontal" href="indexc059.html?TopicId=31ca0f13-71be-4bd9-ad28-d3589a3cf6d2">
            <img src="Resources/ImagesPortal/PhongBan/arrow_all_phong.png"></a>
    </div>
    <div class="listtb_phong">
        <ul>
            

                    <li><a href="index52be.html?ArticleId=3af2fa01-2645-4516-a65a-67bfec768e13">
                        <p>Create Date 09/03/2017</p>
                        SPECIAL SESSION 02 FOR ICSSE2017: FUZZY SYSTEMS AND ITS APPLICATIONS</a></a> </li>
                

                    <li><a href="indexe41c.html?ArticleId=bc474489-26ce-4997-a1c0-b37dce27b202">
                        <p>Create Date 07/03/2017</p>
                        ABSTRACT DEADLINE EXTENSION: MARCH 19, 2017</a></a> </li>
                

                    <li><a href="indexc489.html?ArticleId=f796f938-0681-4d25-b47e-6bcd24536152">
                        <p>Create Date 20/02/2017</p>
                        SPECIAL SESSION 01 FOR ICSSE2017: INTELLIGENT HEALTHCARE SYSTEMS</a></a> </li>
                
        </ul>
    </div>
    <!--end listtb_phong-->
</div>

				</div></div><div id='ctl06_portlet_9d945843-6c22-4daf-9b88-835da3891673' style="float:left"><div>
					<table>
    <tbody>
        <tr>
            <td style="text-align: left; width: 350px; height: 40px; vertical-align: middle; background-color: #ff0000;">&nbsp;<span style="font-size: 20px; color: #ffff00;"><strong>IMPORTANT DEADLINES</strong></span></td>
        </tr>
    </tbody>
</table>
<p style="text-align: justify;"><span style="font-size: 12px; color: #002060;"><strong><br />
</strong></span></p>
<div style="text-align: center;"><strong><strong style="text-align: left;"><span style="font-size: 16px;"><span style="text-decoration: line-through;">March 7, 2017</span><br />
<strong><span style="color: #c00000;">Extended untill March 19, 2017</span></strong><br />
</span></strong></strong></div>
<span style="font-size: 16px; color: #002060;"><strong>
</strong>
</span>
<div style="text-align: center;"><span style="font-size: 16px; color: #002060;"><span style="text-align: left; font-size: 16px;">2-Pages &nbsp;Extended Abstract&nbsp;</span><span style="font-size: 16px;">Submission</span></span></div>
<div style="text-align: center;"><span style="font-size: 16px; color: #002060;"><br />
</span></div>
<span style="font-size: 16px; color: #002060;">
<div style="text-align: center;"><strong style="text-align: left;">March 30, 2017</strong></div>
<div style="text-align: center;"><span style="text-align: left; font-size: 16px;">Notification of Acceptance</span></div>
</span>
<div style="text-align: center;"><span style="font-size: 16px; color: #002060;"><br />
</span></div>
<span style="font-size: 16px; color: #002060;">
<div style="text-align: center;"><strong style="text-align: left;">May 10, 2017</strong></div>
<div style="text-align: center;"><span style="text-align: left; font-size: 16px;">2-6 Pages Final Papers Submission</span></div>
</span><span style="font-size: 16px;"><span style="font-size: 16px; color: #002060;">
</span>
<div style="text-align: center;"><span style="font-size: 16px; color: #002060;"><br />
</span></div>
<span style="font-size: 14px;"><span style="font-size: 16px; color: #002060;">
</span>
<div style="text-align: center;"><span style="font-size: 16px; color: #002060;"><strong style="font-size: medium; text-align: left;">May 30, 2017</strong><span style="text-align: left; font-size: 16px;">:&nbsp;</span></span></div>
<span style="font-size: 16px; color: #002060;"><span style="font-size: 16px;">
</span>
<div style="text-align: center;"><span style="text-align: left; font-size: 16px;">Online Registration</span></div>
</span>
</span>
<br />
</span>

				</div></div><div id='ctl06_portlet_553574d9-9245-4da8-a214-baf51898689a' style="float:left;"><div>
					<table>
    <tbody>
        <tr>
            <td style="width: 350px; height: 40px; background-color: #92d050;"><strong><span><span style="font-size: 20px; color: #c00000;">SPECIAL SESSION</span><br />
            </span></strong></td>
        </tr>
    </tbody>
</table>
<span style="font-size: 10.5pt; letter-spacing: 0.85pt; font-family: &quot;times new roman&quot;, serif;"><strong style="font-weight: bold; color: #002060; font-family: &quot;times new roman&quot;, serif; font-size: 14px; letter-spacing: 1.13333px;"><strong><br />
<a href="https://easychair.org/conferences/?conf=icsse2017specialsess" target="_blank">SPECIAL SESSION SUBMISSION LINK</a>&nbsp;</strong></strong><br />
<span style="font-size: 14px;"><br />
<div style="text-align: center;"><strong style="letter-spacing: 0.85pt; background-color: #ffff00;"><span style="color: #002060;"><strong style="letter-spacing: 1.13333px;"><strong>SPECIAL SESSION&nbsp;</strong></strong>01</span></strong></div>
<strong>
<div style="text-align: center;"><strong style="letter-spacing: 0.85pt;"><span style="background-color: #ffff00; color: #002060;">INTELLIGENT HEALTHCARE SYSTEMS</span></strong></div>
</strong></span>
<div style="font-weight: bold; color: #002060; text-align: center;"><span style="font-size: 10.5pt; letter-spacing: 0.85pt;"><a href="Resources/Docs/SubDomain/icsse2017/SS_cfp_Huang.pdf">CALL FOR PAPERS</a></span></div>
<br />
<div style="text-align: center;"><strong style="font-size: 10.5pt; letter-spacing: 0.85pt; margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 14px; background-color: #ffff00; color: #002060;"><strong style="font-family: &quot;times new roman&quot;, serif; font-size: 14px; letter-spacing: 0.85pt; text-align: -webkit-center; background-color: #ffff00;"><span style="color: #002060;"><strong style="letter-spacing: 1.13333px;"><strong>SPECIAL SESSION&nbsp;</strong></strong></span></strong>02<br />
FUZZY SYSTEMS &amp; ITS APPLICATIONS</span></strong></span></strong></div>
<strong style="margin: 0px; padding: 0px; font-size: 14px;">
<div style="text-align: center;"><strong style="letter-spacing: 0.85pt; margin: 0px; padding: 0px;"><a href="Resources/Docs/SubDomain/icsse2017/SS02%20-%20call4pp.pdf" style="margin: 0px; padding: 0px; text-decoration: none;">CALL FOR PAPER</a></strong></div>
</strong>
<br />
</span>

				</div></div><div id='ctl06_portlet_78439b67-a318-4ced-ac29-33d02da2a0fb' style="float:left;"><div>
					<table>
    <tbody>
        <tr>
            <td style="text-align: left; width: 350px; vertical-align: middle; height: 40px; background-color: #002060;">&nbsp;<span style="font-size: 20px; color: #ffff00;"><strong>KEY LINKS</strong></span></td>
        </tr>
    </tbody>
</table>
<br />
<span style="color: #002060;"><span style="font-size: 14px;"><a href="https://easychair.org/conferences/?conf=icsse2017" target="_blank"><strong>EASYCHAIR SUBMISSION SITE</strong></a></span><br />
<span style="font-size: 14px;"><a href="Resources/Docs/SubDomain/icsse2017/ieeeconf_letter.doc"><br />
<strong>
PAPER FORMAT TEMPLATE DOWNLOAD</strong></a>&nbsp;<br />
</span></span><span style="font-size: 14px;"><br />
<strong><strong style="font-size: 14px;"></strong><strong style="font-size: 14px;"></strong><a href="Resources/Docs/SubDomain/icsse2017/Instruction%20easychair_ICSSE2017.docx"><strong style="font-size: 14px;">EASYCHAIR&nbsp;</strong>SUBMISSION INSTRUCTION</a></strong></span>

				</div></div>
			</div>
		</div></td>
					</tr>
					<!-- end of header -->
					<!-- body -->
					
					
					
					<!-- end of body -->
					<!-- footer -->
					<jsp:invoke fragment="footer" />
					<tr>
						<td colspan="2"><div id="pnBottom">
								<div id="pnBottomDisplay"
									style="clear: both; background: url(Resources/ImagesPortal/PhongBan/bgfooter_phong.png) repeat-x; width: 1000px; height: 110px;">
									<div id='ctl06_portlet_5c231c9e-b9b3-474f-bb01-834b95465666'
										style="float: right">
										<div>

											<div class="truycap_ute">
												<p>
													Visit month: <span
														id="ctl06_portlet_5c231c9e-b9b3-474f-bb01-834b95465666_Label4">2,509</span>
												</p>
												<p class="line_footer"></p>
												<p>
													Visit total:<span
														id="ctl06_portlet_5c231c9e-b9b3-474f-bb01-834b95465666_Label1">5,987</span>
												</p>
											</div>

										</div>
									</div>
									<div id='ctl06_portlet_8b056785-3dc4-4de8-9516-a546e8152a5c'
										style="float: left;">
										<div>
											<div class="addute">
												<p>
													<span style="font-size: 14px; color: #ffffff;">2017
														IEEE International Conference on System Science and
														Engineering<br /> <span style="font-size: 14px;">HCMC
															University of Technology and Education</span><br /> Add: No 1
														Vo Van Ngan Street, Linh Chieu Ward, Thu Duc District, Ho
														Chi Minh City<br /> Tel: (+84.8) 37 221 223 - Ext: 8161 /
														8163<br /> E-mail: icsse2017@hcmute.edu.vn
													</span>
												</p>
											</div>

										</div>
									</div>
								</div>
							</div></td>
					</tr>
				</table>
			</div>
	



		<script type="text/javascript">
			//<![CDATA[
			Sys.Application.add_init(function() {
				$create(Telerik.Web.UI.RadWindowManager, {
					"clientStateFieldID" : "RadWindowManager1_ClientState",
					"formID" : "form1",
					"iconUrl" : "",
					"minimizeIconUrl" : "",
					"name" : "RadWindowManager1",
					"skin" : "Default",
					"windowControls" : "[]"
				}, null, null, $get("RadWindowManager1"));
			});
			Sys.Application
					.add_init(function() {
						$create(
								Telerik.Web.UI.RadMenu,
								{
									"_childListElementCssClass" : null,
									"_skin" : "Green",
									"attributes" : {},
									"clientStateFieldID" : "ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState",
									"collapseAnimation" : "{\"duration\":450}",
									"expandAnimation" : "{\"duration\":450}",
									"itemData" : [
											{
												"navigateUrl" : "~/Default.aspx?PageId=8cb7e0c5-10f3-438b-8881-a74c24b373e3"
											},
											{
												"items" : [
														{
															"navigateUrl" : "~/Default.aspx?ArticleId=f9111384-c9ad-46ac-ba10-037bf3d691a4"
														},
														{
															"navigateUrl" : "~/Default.aspx?ArticleId=c8018710-9562-44c6-bef0-2a0f22e73f6b"
														},
														{
															"navigateUrl" : "~/Default.aspx?ArticleId=dd21088d-cb55-4f9d-ac9c-73553c715cae"
														} ],
												"navigateUrl" : "#"
											},
											{
												"navigateUrl" : "~/Default.aspx?ArticleId=fc8c1223-a9d2-46b5-9db3-665c778f0ac9"
											},
											{
												"navigateUrl" : "~/Default.aspx?ArticleId=945864b5-165f-45a3-8e75-a9ba5ac1f9ef"
											},
											{
												"navigateUrl" : "~/Default.aspx?ArticleId=707e0e24-5220-4821-a40f-4041eb76cc1a"
											},
											{
												"navigateUrl" : "~/Default.aspx?ArticleId=be204435-0615-4fc3-aa86-392d871decc8"
											},
											{
												"navigateUrl" : "#"
											},
											{
												"navigateUrl" : "#"
											},
											{
												"navigateUrl" : "~/Default.aspx?ArticleId=b4031ebe-e802-4402-a49a-5769943872a5"
											} ]
								},
								null,
								null,
								$get("ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"));
					});
			//]]>
		</script>
	</form>
	<!-- end of footer -->
</body>
</html>