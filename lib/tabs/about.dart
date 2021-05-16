import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: SingleChildScrollView(
          child: Html(
            data: """<div class="column column-75 entry-main">
		  		<h1 class="entry-title">About Me</h1>
		  		<div class="entry-meta-list">
				</div>
										  		<div class="entry-copy">
		  			<p><img loading="lazy" class="size-full wp-image-2790 alignleft" src="https://i1.wp.com/www.vineetgeek.in/wp-content/uploads/2020/05/vineet-srivastav.png?resize=260%2C315&#038;ssl=1" alt="" width="260" height="315" srcset="https://i1.wp.com/www.vineetgeek.in/wp-content/uploads/2020/05/vineet-srivastav.png?w=260&amp;ssl=1 260w, https://i1.wp.com/www.vineetgeek.in/wp-content/uploads/2020/05/vineet-srivastav.png?resize=248%2C300&amp;ssl=1 248w" sizes="(max-width: 260px) 100vw, 260px" data-recalc-dims="1" /></p>
<p><span style="color: #e55039; font-weight: bold; font-size: 200%;">W</span>elcome to Vineet Geek A Blog, designed keeping in view the minds of Tech Lovers. <em><strong>Vineet Geek is India as well as Global based blog that aims to provide latest updates from Technology, Social Media and Gadget world Including Latest Tech News,  Reviews, Comparisons and lots more..</strong></em></p>
<p>We report news related to Internet, Gadgets, Social Media, Mobile Apps, Gaming and much more. We also try to cover new, innovation and technology trends. We also cover acquisitions, start ups and funding news. Our goal is to report all the latest updates on the internet, and technology world  with unbiased gadgets reviews. We are now going day by day to organize the blog with latest updates and other things that our tech readers requires.</p>
<p>We aim at providing our readers with the best of what we can serve with quality content. Presently, the Blog is Created so as to help people to get what they are looking fir in the world of technology</p>
<p>In this Blog, you will receive information about different products and topics like New Launches, Hacking and other things also.</p>
<p>Vineet Geek is founded by its author Vineet in July 2016 in Delhi, India. His passion of providing Tech to Gadget lovers with the latest ups  &amp; downs happening in the World of Technology and innovation made this blog come true.</p>

<p>Vineet Srivastav is currently running a digital marketing company in Noida named Quickzed Pvt. Ltd. He has clients from all over the world and his company has completed somewhere around 500+ projects.He also uses his skills for his e-commerce stores and App Development. He has multiple ecommerce stores and Apps on play store which are quite successful. </p><p>According to Vineet, you should work hard until you get success don’t leave your goals in between giving efforts and your hard work will surely pay off but for that you need to have patience. His advice to online freelancers is you should have multiple sources of earnings if you are working online.</p>
<p>Vineet Srivastav is a forever learner. He believes in learning new skills regularly as in the digital world things keep on changing. If you want to know more about Vineet’s work, you can check out his Social media profiles.</p>
Instagram - https://www.instagram.com/vineetgeek/<br>
Twitter - https://twitter.com/vineet9798<br>
</p>
<hr />
&nbsp;<br>
<h2><strong>Achievements</strong></h2>
<br>

<p><a href="https://licreativetechnologies.com/blog/top-technology-and-gadgets-blogs-in-2020/#_Vineet_Geek" target="_blank" rel="noopener noreferrer"><img loading="lazy" src="https://i0.wp.com/licreativetechnologies.com/wp-content/uploads/2020/05/Vineet-Geek.png?resize=200%2C200" alt="digital marketing" width="200" height="200" data-recalc-dims="1" /></a></p>
<div class="gs">
<div class="">
<div id=":1d2" class="ii gt">
<div id=":19l" class="a3s aXjCH ">
<div dir="ltr">
<div class="adL">
<div class="im">
<p>&nbsp;</p>
</div>
</div>
</div>
<br>
<br>
<br>
<br>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;<br>
&nbsp;<br>
&nbsp;<br>
&nbsp;<br>
&nbsp;<br>




<center>. Made with ❤️ in India By Vineet Srivastav .</center>








""",
          ),
        ),
      ),
    );
  }
}
