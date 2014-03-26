---
layout: post
title:  "Weekly SASS Mixin and a bunch of other unimoprtant shit"
date:   2013-11-19 11:00:00
author: Dustin Armstrong
tags: [crystal meth, heroin]
banner: /assets/images/glitch/IMG_4383-glitched-a0-s0-i1-q1.png
---

Most of the time when we're caught up in work, it's easy to get focused on getting it done and finished so you can move onto the next project, or be done working in general. Granted, some people love their jobs, but who wouldn't enjoy a bit of extra time in the day to do something leisurely? If your idea of leisure is more work, wouldn't it be nice to get projects done sooner so you can move on to the next one (and maybe earn some more cash)?

{% highlight scss linenos %}
$medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; $medium: medium; 
body {
	//margin-top: 50px; for fixed header
	color: rgb(77, 77, 77);
	// @media #{$medium} {
	// 	margin-top: 60px;
	// }
	// @media #{$large} {
	// 	margin-top: 75px;
	// }
	h1, .h1 {
		 text-transform: uppercase;
	}
	a {
		@include transition;
	}
	small {
		color: $disabled;
		margin-bottom: -1em;
	}
	header {
		&#header {
			//position: fixed;
			height: 50px;
			//padding: 15px 0;
			width: 100%;
			background: rgb(26, 26, 26);
			top: 0;
			z-index: 1000;
			overflow: hidden;
			@include transition;
			&.active {
				height: 230px;
				@media #{$medium} {
					height: inherit;
				}
				@include transition;
			}
			.ph-arrow-down {
				color: white;
				position: absolute;
				top: 16px;
				right: 26px;
				z-index: 9999;
				@media #{$medium}, #{$large} {
					display: none;
				}
			}
			nav {
				ul {
					&.pages {
						float: left;
						clear: both;
						margin-bottom: 1em;
						@media #{$medium} {
							float: right;
							clear: none;
							margin-bottom: 0;
						}
					}
					li {
						line-height: 1;
						a {
							color: white;
							font-family: $h-font-family;font-family: $h-font-family;font-family: $h-font-family;font-family: $h-font-family;font-family: $h-font-family;font-family: $h-font-family;font-family: $h-font-family;font-family: $h-font-family;
							text-transform: uppercase;
							font-size: .8em;
							font-weight: 300;
							padding: 1em .5em;
							display: block;
							@media #{$medium} {
								padding: 18px .5em;
								font-size: 15px;
							}
							&:hover {
								color: rgb(222, 222, 222);
							}
						}
						&.logo {
							.ph-posthuman_text {
								stroke: 1;
							}
							@media #{$medium} {
								display: inline-block;
							}
							a {
								padding: 14px 0;
								color: white;
								font-size: 20px;
								&:hover {
									color: rgb(222, 222, 222);
								}
							}
						}
					}
				}
			}
		}
	}
	.content {
		article {
			margin-bottom: 4em;
		}
		&.index {
			.h1 {
				margin-bottom: .5em;
			}
			article {
				p {
					margin-bottom: 1em;
				}
			}
			footer {
				border: 0;
				padding-top: 0;
			}
		}
	}
	footer {
		border-top: 1px solid #d6d6d6;
		padding-top: 1.5em;
		font-size: .8em;
		a {
			text-transform: capitalize;
			&:after {
				content: ", ";
			}
			&:last-child:after {
				content: "";
			}
		}
	}
}
{% endhighlight %}

You may not think about this, but so many people get into bad or lazy habits that could be improved if you just did a bit of research. Think about how much time you spend every day looking for files you've thrown somewhere easy to access instead of doing it the first time, gone to 4 different sites to read your blogs, or had to look up some code you end up using on almost every site.

##Your workflow is vital to improving your output. Your time is valuable.

Take a bit of time and think about your work routine. While you work through the day, think about little things you can do to save time. Analyze tasks you do daily/weekly. There's almost inevitably a way that you can streamline how you do it. 

It's common for designers and developers to be bad culprits of this. Some basic examples:

>I've watched a designer resize 200 images to the exact same dimensions, one at a time. 

This is something that could have easily been changed from a 3 hour project to 10 minutes with [Photoshop Actions](http://lifehacker.com/5776749/how-to-automate-anything-in-photoshop) which allows you to record your steps, and play them out again. Many are even created for people to download online.

>There's a designer in my office who keeps the entire Adobe Suite along with every application he's opened in years on his dock, some applications not even supported in his current OS. There were times where it might take him a minute to find an application, a minute to close it if he opened the wrong one (since they were all microscopic and crammed onto his tiny little screen), and another 30-40 seconds to find a window behind all of the others he had open.

If he had been using [Alfred](http://www.alfredapp.com/), he'd tap a keyboard shortcut, type in the first few letters of the application he wanted to open, and it would be open. Even better, set a keyboard shortcut for his favorites and open it immediately.

He could have used CMND+SPACE and used spotlight to open the application when he needed it, or to find a file he wanted to open.

Hell, he could have even used CMND+TAB to switch quickly between applications.

##Work Smarter, not harder. A few seconds per task will add up.

If you are performing the same repititious act, it's likely you're wasting time. It may only take you 30 seconds to do, but do it several times a day, that's minutes. They all add up. It could be enough time to get a coffee, or if you haven't thought about your workflow at all, it could get you out the door 15 minutes sooner than the rush hour traffic you always hit, or enough time to cook yourself dinner for once.

Take the time to look into your options. Get to know your computer, your programs, your desk space, and any other details about your day. Think about how you can streamline, minimize, and recreate your process.

Don't waste your time. It's bad for business, and it's bad for you.

##Some Applications that may help you
* [Typinator](http://www.ergonis.com/products/typinator/) - A Text expander for saving things you type frequently
* [Alfred](http://www.alfredapp.com/) - Does pretty much everything you need faster, tons of plugin support
* [Emmet](http://emmet.io/) - Helps you write html/css much faster and works with most mainstream text editors
* [Snap](https://itunes.apple.com/us/app/snap/id418073146?mt=12) - Easy and lightweight application launcher
* [Codebox](http://www.shpakovski.com/codebox/) - Store code you use frequently so you don't need to always hunt for it online
* [Divvy](http://mizage.com/divvy/) - Keep your application windows organized in a grid so you can view more at once, or at least keep your windows sized consistently.
* [1Password](https://agilebits.com/onepassword) (paid) or [LastPass](https://lastpass.com/) (free) - Save your passwords in one place. Don't waste time entering logins on every site or recovering passwords you've lost, save them all in one place and trigger them when you arrive on the site.

##Some Reading
* [Feedly](http://feedly.com) - Literally, do some reading. Use RSS Feeds to combine the sites you use frequently instead of wasting time going to each site and getting distracted.
* [Photoshop Actions](http://photography.tutsplus.com/articles/100-free-photoshop-actions-and-how-to-make-your-own--photo-3502) - This has a good bit of links you can download, and a tutorial on how to write your own.
* [Yeoman](http://yeoman.io/) - Make starting a web application faster and easier to maintain
* [Some tips from Smashing Magazine Magazine](http://www.smashingmagazine.com/2009/05/26/20-time-saving-tips-to-improve-designers-workflow-part-1/) - Some basic tips on creating templates, style files, and batch actions