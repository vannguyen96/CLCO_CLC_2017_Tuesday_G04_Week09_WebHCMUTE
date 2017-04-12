<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:templetepage>
	<jsp:attribute name="header">     
    </jsp:attribute>
	<jsp:attribute name="footer">
    </jsp:attribute>

	<jsp:body>
    <link href="Modules/TopicArticleDisplay.css" rel="stylesheet"
			type="text/css" />

<script type="text/javascript">
    function OnSendArticle() {
        var result = window.showModalDialog("/Modules/CMS/SendArticle.aspx", document.URL, "dialogHeight: 320px; dialogWidth: 450px;");
    }
    function OnBack() {
        window.history.back();
    }
    function OnGoToHead() {
        window.moveTo(0, 0);
    }

</script>
<script type="text/javascript">

    $(document).ready(function () {

        $(".slidingDiv").hide();
        $(".show_hide").show();

        $('.show_hide').click(function () {
            $(".slidingDiv").slideToggle();
        });

    });

</script>
<style type="text/css">
.bg_display {
	clear: both;
	float: left;
	background: #fff;
}

.title_display {
	color: #9F0E13;
	font-weight: bold;
	font-size: 14px;
	text-transform: uppercase;
	border-bottom: 1px dashed #0280bb;
	padding: 5px 0px 5px 10px;
	margin: 0px 10px;
}

.title_display a {
	color: #333 !important;
}

.title_display a:hover {
	color: #FF0000 !important;
}

.ct_tin_display {
	float: left;
	width: 670px;
	padding-bottom: 15px;
}

.articleTitle a {
	margin: 0px 5px 0px 5px;
	margin-bottom: 10px;
	color: #0280BB;
	font-weight: bold;
	font-size: 16px;
}

.articleDescription p {
	font: 13px Arial;
	color: #000;
	line-height: 20px;
	margin: 0px 5px 0px 5px;
}

.articleContent {
	font: 13px Arial;
	line-height: 150%;
	text-align: justify;
	margin: 0px 5px 0px 5px;
}

.articleContent ol, .articleContent ul {
	padding-left: 40px;
}

.articleContent a, .articleContent p, .articleContent span,
	.articleContent h1, .articleContent h2, .articleContent h3,
	.articleContent h4, .articleContent h5, .articleContent h6,
	.articleContent div, .articleContent ul, .articleContent li,
	.articleContent table, .articleContent th, .articleContent tr,
	.articleContent td {
	font-family: Arial;
	font-size: 13px;
	text-align: justify;
	line-height: 150%;
}

.tinkhac_display {
	float: left;
	width: 670px;
	margin: 0px 5px 0px 25px;
	list-style-image: url(Resources/ImagesPortal/HomePage/arrow.png);
}

.tinkhac_display a {
	font: 13px Arial;
	line-height: 20px;
	color: #333;
}

.tinkhac_display a:hover {
	color: #FF0000;
}
</style>

<div class="bg_display">
    <div class="display" style="float: left; width: 100%;">
        <div class="title_display">
             <a style='color: #666;'
						href=indexee2e.html?TopicId=e227a1b0-fc7e-410b-bab0-0ffb9a65fe90>contact </a> 
        </div>
        <div style="margin-top: 10px;">
            <div style="margin-left: 5px; margin-bottom: 10px;">
                <div class="ct_tin_display">
                    <div class="articleTitle">
                        <a
									href="index84ba.html?ArticleId=b4031ebe-e802-4402-a49a-5769943872a5">CONTACT INFORMATION</a>
                    </div>
                    <div
								style="float: left; width: 100%; margin: 5px 5px 5px 10px; display: none;">
                        <span
									style="font-weight: bold; font-style: italic">Tác giả </span>:
                    </div>
                   </div>
                   </div>
                   </div>
                   </div>
   ${contact.content}
    
    
	</jsp:body>

</t:templetepage>