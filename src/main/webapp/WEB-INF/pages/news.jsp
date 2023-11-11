<%--
  Created by IntelliJ IDEA.
  User: huyho
  Date: 10/31/23
  Time: 9:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="include/header.jsp"/>
<body>
<section>
    <div class="container-fluid">
        <div class="CurrentPosition">
            <a href="Index.html" class ="CurrentPosition__Home"> Home </a>
            <span class="CurrentPosition-separate"></span>
            <span class="CurrentPosition__Page">News</span>
        </div>
    </div>
    <div class="container">
        <div class="news">

            <div class="news-top">
                <div class="row">
                    <div class="col-md-6" id="news-top1">
                        <a href="#" class="aa">
                            <img src="images/vvvvv.jpg" alt="img">
                            <div class="content-news-top">
                                <a href="#" id="content-news-top1">Bag of the year</a><br>
                                <a href="#" id="content-news-top2">This year we have many fashion bag so wonderful, so we so hard to choose one in them. And finally we decition choose … </a>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6" id="news-top2">
                        <div class="row" id="logo-news">
                            <a href="#" class="news-logo">

                                <img src="images/logoBB.png" alt="img">

                            </a>
                        </div>
                        <div class="row">
                            <div class="col-md-6"  id="news-top3">
                                <a href="#">
                                    <img src="images/news08.jpg" alt="img">
                                    <div class="content-news-top">
                                        <a href="#" id="content-news-top5">Bag in the world</a> <br>
                                        <a href="#" id="content-news-top6">Since 2020, we have many brand in the world had incorporated and they …</a>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-6" id="news-top3">
                                <a href="#">
                                    <img src="images/member2.jpg" alt="img">
                                    <div class="content-news-top">
                                        <a href="#" id="content-news-top5">Works of one Designer</a> <br>
                                        <a href="#" id="content-news-top6">A designer have many work to do, but one of many important theyl do in …</a>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="news-hot">
                <h4>HOT</h4>
                <div class="row">
                    <div class="col-md-3 col-xs-12">
                        <a href="#">
                            <img src="images/news1.jpg" alt="news">
                            <h6>Fashion bag gradually popular in life.</h6>
                        </a>
                        <p>Now a day, we can see many fashion bag on street and it make a trend. Fashion bag is one thing you can …</p>
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <a href="#">
                            <img src="images/news2.jpg" alt="news">
                            <h6>Bag of office woker now a day</h6>
                        </a>
                        <p>We have fashion bag in many party or on street, but now a day we easy to see many office worker wearing fashion bag …</p>
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <a href="#">
                            <img src="images/news3.jpg" alt="news">
                            <h6>We have more choose of fashion bags</h6>
                        </a>
                        <p>In a past, we had a little choose of fashion bags. In this time, fashion bag have only …</p>
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <a href="#">
                            <img src="images/news06.jpg" alt="news">
                            <h6>Fashion have NO DISCRIMINALTION</h6>
                        </a>
                        <p>Now a day, fashion have a balend for every one. In Africa, have many model so …</p>
                    </div>
                </div>
            </div> -->
            <div class="news-hot container">
                <div class="row">
                    <div class="col-md-3 col-xs-12">
                        <div class="thumbnail">
                            <a href="#">
                                <img src="images/news1.jpg" alt="news">
                                <h6>Fashion bag gradually popular in life.</h6>
                                <p>Now a day, we can see many fashion bag on street and it make a trend. Fashion bag is one thing you can …</p>

                            </a>

                        </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <div class="thumbnail">
                            <a href="#">
                                <a href="#">
                                    <img src="images/news2.jpg" alt="news">
                                    <h6>Bag of office woker now a day</h6>
                                    <p>We have fashion bag in many party or on street, but now a day we easy to see many office worker wearing fashion bag …</p>

                                </a>

                        </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <div class="thumbnail">
                            <a href="#">
                                <img src="images/news3.jpg" alt="news">
                                <h6>We have more choose of fashion bags</h6>
                                <p>In a past, we had a little choose of fashion bags. In this time, fashion bag have only …</p>

                            </a>

                        </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <div class="thumbnail">
                            <a href="#">
                                <img src="images/news06.jpg" alt="news">
                                <h6>Fashion have NO DISCRIMINALTION</h6>
                                <p>Now a day, fashion have a balend for every one. In Africa, have many model so …</p>

                            </a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="more-news">

                <div class="row">
                    <div class="col-md-7">
                        <p class="more-news-tittle">More News</p>
                        <div class="container-fluid">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src="images/news5.jpg" alt="news">
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Important of fashion bag now a day</h5>
                                        <p>Now a day we can see many fashion bag around us. It is achievement of many brand and designer, they made fashion bag to close user and fit for everyone in every genneration...</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="container-fluid">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src="images/news6.jpg" alt="news">
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Fashion bag of men</h5>
                                        <p>We can see now a day, the world become gender equality and that we can easy to see many men wearing fashion bag on street, look so …</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="container-fluid">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src="images/news7.jpg" alt="news">
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Uses of fashion bag</h5>
                                        <p>Talk about fashion bag, we will talk about beauty and fashion. But one thing we can’t dismiss the uses of them…</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="container-fluid">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src="images/news8.jpg" alt="news">
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Fashion in our life</h5>
                                        <p>Now a day, fashion is a friend. It companion with us all of day, in a car, in a restaurant, in a club… everywhere. So that …</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="container-fluid">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src="images/news9.jpg" alt="news">
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Dress up now a day</h5>
                                        <p>The fashion bag it one thing indispensable when dress up. It is a accessory very convenient and look so beauty. However, we should choose…</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <div class="brand-news">
                            <p class="more-news-tittle">Other Brand's News</p>
                            <ul>
                                <li><a href="#"><img src="images/charles&keith.jpg" alt="logo"></a></li>
                                <li><a href="#"><img src="images/pedro.png" alt="logo"></a></li>
                                <li><a href="#"><img src="images/zara.png" alt="logo"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="include/footer.jsp"/>
</body>
</html>
