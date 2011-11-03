---

#jQuery("#knowledge")
# .appendTo("#you");
## ODTUG Kscope11

---

Who am I?
=========

* [Ralph Whitbeck](http://ralphwhitbeck.com)
* jQuery Team Member
* ASP.NET and Front-end Developer

---

appendTo
========

* The Company Dedicated to jQuery
* Founded by jQuery Team Members
* Services include:
	- Consultation
	- Custom Development
	- Remote Staff Augmentation
	- Training
* For more information contact us at [http://appendto.com](http://appendto.com)

---

jQuery Podcast
==============

![jQuery Podcast](images/jquerypodcast.png)

---

jQuery Podcast 
==============

* Cohost w/ Rey Bango
* 50 episodes
* [http://podcast.jquery.com](http://podcast.jquery.com)

---

What can we Expect Today?
=========================

* Why jQuery? 
* jQuery basics
	- Find something, do something
	- Selectors
	- Iterations
	- Manipulation
	- Behaviors
	- Traversing
	- Chaining
	- Creating/Inserting Elements

---

What can we Expect Today?
=========================

* Why jQuery? 
* jQuery basics
* Ajax
* Events
* Animations
* Plugins
* jQuery UI

---

jQuery to the Rescue
======

* A Library that simplifies interaction between HTML and JavaScript
* Consistent API across browsers
* Will work IE6+, FireFox 2+, Chrome, Opera 9+, and Safari 3+
* Consistent and terse programming syntax
* Ajax support
* Easily extended

---

And on top of those reasons...
===========

* Great Community
* Excellent [Documentation](http://api.jquery.com)
* Small Size

---

jQuery in Technology today
==========================

* jQuery is incredibly popular: [jQuery Usage Statistics](http://trends.builtwith.com/javascript/JQuery)

![jQuery Usage Statistics](images/jquery-trends.png)

---

jQuery in Technology today
==========================

* jQuery is incredibly popular: [jQuery Usage Statistics](http://trends.builtwith.com/javascript/JQuery)
* Companies: Microsoft, Google, HP, Mozilla, IBM, Amazon, Intel
* Technologies with jQuery integrated: 
	- Oracle APEX
	- Ruby on Rails
	- ASP.NET MVC
	- WordPress
	- Drupal

---

Oracle Application Express
==========================

* Version 4.0 includes:
	- jQuery 1.4.2
	- jQuery UI 1.8
	- various jQuery plugins
* Using jQuery with APEX 
	- Step Up Your APEX Apps with jQuery and Ajax (Abstract ID:242793) 
	- Raj Mattamal, Niantic Systems
	- 06/29/2011, 3:00 PM-4:00 PM
	- 201A
	
---

Your First jQuery statement
===========================

* Instantiate the jQuery object
* Pass it a CSS selector
* Perform an action

---

Your First jQuery statement
===========================

    jQuery( "div" ).hide();

    //jQuery object shortcut alias - $
    $( "div" ).hide();
{: .javascript }

    <div></div>
{: .demo-content }

---

jQuery Selectors
================

Select by Id:

    $( "#myId" ).css( "color", "red" );
{: .javascript }

    <div id="myId">Div with id of myId</div>
    <div id="theirId">another div</div>
    <div id="yourId">another div</div>
{: .demo-content }

---

jQuery Selectors
================

Select by Class:

    $( ".demoClass" ).css( "color", "red" );
{: .javascript }

    <div class="demoClass otherClass">Div 1</div>
    <div class="demoClass">Div 2</div>
    <div class="anotherClass">Div 3</div>
{: .demo-content }

---

jQuery Selectors
================

Select by Tag:

    $( "li" ).css( "color", "red" );
{: .javascript }

    <ul>
    	<li>Apple</li>
    	<li>Pear</li>
    </ul>
{: .demo-content }

---

#Taking action with jQuery
##Once selection occurs, we do something

    $( "#thisId" ).css( "color" , "green" );
    $( "#lastId" ).css( "color" , "blue" );
{: .javascript }

    <div id="thisId">Div with id of thisId</div>
    <div id="thatId">another div</div>
    <div id="lastId">Div with id of yourId</div>
{: .demo-content }

---

Iteration
=========
Changes all elements returned via Implicit Iteration

    $( "p" ).css( "color", "red" );
{: .javascript }

    <p>One</p>
    <p>Two</p>
    <p>Three</p>
{: .demo-content }

---

Iteration
=========
Some methods take callback functions
.each() Operates on each p individually.

    $( "p" ).each(function() {
    	var rand;
    	rand = Math.random();
    	if ( rand > 0.5 ) {
    		$( this ).hide();
    	}
    });
{: .javascript }


---

Iteration
=========

    $( "p" ).each(function() {
    	var rand;
    	rand = Math.random();
    	if ( rand > 0.5 ) {
    		$( this ).hide();
    	}
    });
{: .javascript }

    <p>One</p>
    <p>Two</p>
    <p>Three</p>
{: .demo-content }

---


Attributes
==========
	
    $( "#logo" ).attr( "src", "images/appendTo-avatar.png" );
{: .javascript }

    <img id="logo" />
{: .demo-content }

---

Attributes
==========

    $( "#logo2" ).attr({
    	src: "images/appendTo-avatar.png",
    	alt: "Company logo"
    });
{: .javascript }

    <img id="logo2" />
{: .demo-content }

---

#Styling - CSS Classes
	
    $( "p" ).addClass( "baz" );
    $( "p" ).removeClass( "foo" );
    $( "p" ).toggleClass( "bar" );
{: .javascript }

    <style type="text/css">
    	.baz { color: red;}
    	.foo { color: blue;}
    	.bar { color: green;}
    </style>
    <p>One</p>
    <p class="foo">Two</p>
    <p class="bar">Three</p>
{: .demo-content }

---

Styling - CSS Styles
=======
	
    $( "p" ).css( "color", "red" );
    $( "p" ).css({
    	fontWeight: "bold", 
    	border: "1px solid black"
    });
{: .javascript }

    <p>One</p>
    <p>Two</p>
{: .demo-content }

---

Behavior
========
	
    $( "p" ).click(function() {
    	$( this ).css( "color", "red" );
    });
{: .javascript }

    <p>One</p>
    <p>Two</p>
    <p>Three</p>
{: .demo-content }

---

Behavior
========

    $( "p" ).hover(function() {
    	$( this ).css( "color", "green" );
    }, 
    function() {
    	$( this ).css( "color", "" );
    });
{: .javascript }

    <p>One</p>
    <p>Two</p>
    <p>Three</p>
{: .demo-content }

---

Traversing
==========

    $( "ul" ).children().addClass("child");
{: .javascript }

    <ul>
    	<li>Fork</li>
    	<li>Spoon</li>
    </ul>
{: .demo-content }

---

Chaining
==============

Many methods return the jQuery object. This allows another jQuery object method to be 'chained' on.

	$( "a" ).text( "new anchor text!" ).css( "color", "red" );
	
	// easier reading with returns and indents
	$( "a" )
		.text( "new anchor text!" )
		.css( "color", "red" );
{: .javascript }

[JS Bin Demo](http://play.appendto.com/ekoqo/2/edit)

---

Creating Elements
=================

	$( "<div></div>" );

	// Creates ...
	<div></div>

	$( "<ul><li>Hello</li></ul>" );

	// Creates ...
	<ul>
		<li>Hello</li>
	</ul>
{: .javascript }

---

Creating Elements
=================

	// New in 1.4
	$( "<div/>" , {
		class: "test",
		text: "Click me!",
		click: function(){
			$( this ).toggleClass( "test" );
		}
	});
	
	// Creates ...
	// Clicking toggles the class
	<div class="test">Click me!</div>
{: .javascript }

---

Inserting Elements
==================

Attach immediately after the p

    $( "p" ).after( "<img src='images/appendTo-avatar.png' />" );    
{: .javascript }

    <p>Apple</p>
    <p>Orange</p>
{: .demo-content }

---

Inserting Elements
==================

Attach immediately after the p

    $( "<img src='images/appendTo-avatar.png' />" )
    	.attr( "alt", "logo" )
    	.insertAfter( "p" );
{: .javascript }

    <p>Apple</p>
    <p>Orange</p>
{: .demo-content }

---

Inserting Elements
==================

Attach immediately before the p

    $( "p" ).before( "<img src='images/appendTo-avatar.png' />" );
{: .javascript }

    <p>Apple</p>
    <p>Orange</p>
{: .demo-content }

---

Inserting Elements
==================

    $( "#apple" )
    	.prepend( "<img src='images/red_apple.jpg' />" );
	
    $( "#orange" )
    	.append( "<img src='images/orange.jpg' />" );
{: .javascript }

    <p id="apple">Apple</p>
    <p id="orange">Orange</p>
{: .demo-content }

---

Inserting Elements
==================

    $( "<img src='images/red_apple.jpg' />" )
    	.prependTo( "#apple2" );
	
    $( "<img src='images/orange.jpg' />" )
    	.appendTo( "#orange2" );
{: .javascript }

    <p id="apple2">Apple</p>
    <p id="orange2">Orange</p>
{: .demo-content }

---

Modifying Elements
==================

    $( "p" ).wrap( "<div></div>" );
{: .javascript }

    <p>Hello world</p> 
    <p>Foo bar</p>
{: .demo-content }

---

jQuery and Ajax
============

* Ajax = Interrelated set of web technologies.
* Allow retrieval of data from the server asynchronously and in the background.

---

Making a Request
=============

    $.get( "../references/sample.html", function( data ) {
    	$( "p" ).html( data );
    }, "html" );
{: .javascript }

[Direct Link to HTML file](../references/sample.html)

    <p>Add content here</p>
{: .demo-content }

---

Making a Request
==============

    $.getJSON( "../references/sample.json", function( json ) {
    	$( "p" ).append( json.states[0] + "\n" );
    });
{: .javascript }

[Direct Link to JSON file](../references/sample.json)

    <p>Add content here</p>
{: .demo-content }


---

Making a Request - $.ajax()
=============

$.ajax() takes in an object literal

    $.ajax({
    	url: "../references/sample.html",
    	type: "GET",
    	dataType: "html",
    	success: function( data ) {
    		$( "p" ).append( data );
    	}
    });
{: .javascript }

    <p>Add content here</p>
{: .demo-content }

---

jQuery Animations
=================

Seems simple enough at first glance

    $( "#hideshowDemo" )
    	.hide( 1000 )
    	.show( 1000 );
{: .javascript }

    <p id="hideshowDemo">A paragraph to animate</p>
{: .demo-content }

---

jQuery Animations
=================

Other animation shortcuts

    var speed = 400;
    $( "#slidefadeDemo" )
    	.slideUp(speed)
    	.slideDown(speed)
    	.fadeOut(speed)
    	.fadeIn(speed);
{: .javascript }

    <p id="slidefadeDemo">A paragraph to animate</p>
{: .demo-content }

---

jQuery Animations
=================

Custom animations

    $( "p" ).animate({"margin-left": "300px"}, 5000);
{: .javascript }

    <p>I should move to the right</p>
{: .demo-content }

---

Binding Events
==============

    $( "a.foo" ).click(function( e ) {
    	$( this ).css( "color", "green" );
    	e.preventDefault();
    });
	
    $( "a.foo" ).mouseover(function() {
    	$( this ).css( "color", "red" );
    });
{: .javascript }

    <a class="foo" href="http://appendto.com">.appendTo()</a>
{: .demo-content }

---

Binding Events
==============

Events are chainable

    $( "a.foo" )
    	.click(function( e ) {
    		$( this ).css( "color", "green" );
    		e.preventDefault();
    	})
    	.mouseover( function() {
    		$( this ).css( "color", "red" );
    	});
{: .javascript }

    <a class="foo" href="http://appendto.com">.appendTo()</a>
{: .demo-content }

---

Available Events
================

* click, dblclick, mouseover, mouseout
* mouseenter, mouseleave
* change, focus, blur
* keydown, keyup, keypress
* scroll, resize

---

jQuery plugins
=================

* jQuery core library contains a number of actions, but more can be added
* A plugin typically extends the core jQuery object
* A plugin is a jQuery method defined externally to jQuery Core
* A collection of one or more methods
* Extends the core jQuery object

---

Plugin Example
=================

    $( ".big-text" ).bigtext();
{: .javascript }

    <div class="big-text" style="width: 300px">
      <div>The plugin</div>
      <div>BIGTEXT</div>
      <div>DEMO</div>
      <div>for you to see how it works</div>
    </div>
{: .demo-content }

---

# jQuery UI

* Oracle APEX includes jQuery UI 1.8
* Subset only
	- Datepicker
	- Tabs

---

# jQuery UI is

* Effects
* Interactions
* Widgets
* Theming...

---

# Interactions!

---

# Resizable

    $( ".resize-demo" ).resizable();
{: .javascript }

    <div class="resize-demo"><h3>\m/   \ > . < /   \m/<h3></div>
{: .demo-content }

---

# Draggable

    $(".draggable-demo").draggable({
    	parent: "body",
    	helper: "clone"
    });
{: .javascript }

    <div class="draggable-demo">Drag me around!</div>
{: .demo-content }

---

# Droppable

    $(".draggable-demo").draggable({
      helper: "clone",
      scope: "demoItem"
    });
    $(".droppable-demo").droppable({
    	drop: function() { // <--- custom event hook.
    		alert( "smart." );
    	}, scope: "demoItem"
    });
{: .javascript }

    <div class="draggable-demo" >Bacon Strips</div>
    <div class="droppable-demo" >Oven</div>
{: .demo-content }

---

# Sortable

    $( ".sortable-priorities" ).sortable();
    // ... later in code ...
    $( ".sortable-priorities" ).bind( "sortupdate",
    	function( evt, ui ) {
    		if ( $( this ).find( "li:first" ).text() === "beer" ) {
    			alert( "wow. nice priorties Ralph." );
    		} else if( $( ui.item ).text() === "beer" ) {
    			alert( "shouldn't you be concerned with other things?" );
    		}
    	});
{: .javascript }

    <ul class="sortable-priorities">
    	<li><span>beer</span></li>
    	<li><span>beer</span></li>
    	<li><span>conference talk</span></li>
    	<li><span>beer</span></li>
    	<li><span>beer</span></li>
    </ul>
{: .demo-content }

---

# Widgets

UI Widgets are fully-featured UI controls

 * HTML (typically dynamically added)
 * CSS (themeing)
 * JavaScript (event handling and functionality)

---

# Datepicker

Included with APEX 4.0 jQuery UI

    $(".datepicker-demo").datepicker();
{: .javascript }

    <input class="datepicker-demo" type="text" />
{: .demo-content }

---

# Tabs

Included with APEX 4.0 jQuery UI

    $( ".tabs-demo" ).tabs();
    setTimeout( function() {
    	$( ".tabs-demo" ).tabs( "select", 2 );
    }, 3000 );
{: .javascript }

    <div class="tabs-demo">
    	<ul>
    		<li><a href="#tabs-1">Nunc tincidunt</a></li>
    		<li><a href="#tabs-2">Proin dolor</a></li>
    		<li><a href="#tabs-3">Aenean lacinia</a></li>
    		</ul>
    		<div id="tabs-1">
    		<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci.</p>
    	</div>
    	<div id="tabs-2">
    		<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam.</p>
    	</div>
    	<div id="tabs-3">
    		<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
    		<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit.</p>
    	</div>
    </div>
{: .demo-content }

---

# Autocomplete

    var data = ['BSD','GPL','MIT','Apache', 'APEX'];
    $(".autocomplete-demo").autocomplete({
    	source: data
    });
{: .javascript }

    <input class="autocomplete-demo" type="text" />
{: .demo-content }

---

# Dialog

    $(".dialog-demo").dialog({
    	autoOpen: true,
    	hide: "explode"
    });
{: .javascript }

    <div class="dialog-demo">This is the text that will appear in the dialog.</div>
{: .demo-content }

---

# Slider

    $( ".slider-demo" ).slider({
    	change: function( evt, ui) {
    		alert( ui.value );
    	}
    });
{: .javascript }

    <div class="slider-demo" style="width: 1000px;"></div>
{: .demo-content }

---

# Progress bar

    $( ".progress-demo" ).progressbar({
    	value: 45
    });
{: .javascript }

    <div class="progress-demo" style="width: 1000px;"></div>
{: .demo-content }

---

# DataGrid Widget
## Coming soon

---

# Thank you
## Questions?
---