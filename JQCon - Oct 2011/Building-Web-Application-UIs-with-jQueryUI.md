---

# Building Web Application 
# UI's with jQuery UI
## jQuery Conference 2011: Boston
## Ralph Whitbeck

---

What to Expect
==============

* What is jQuery UI
* Build something

---


What is jQuery UI
=================

* Interactions
* Animations
* Effects
* Widgets
* Themeable
 
---

Interactions
============

* Draggable
* Droppable 
* Resizable
* Selectable
* Sortable

---

Widgets
=======

* Accordion
* Autocomplete
* Button
* Datepicker
* Dialog
* Progressbar
* Slider
* Tabs

---

Themes
======

* jQuery UI CSS Framework
* Prebuilt themes
* ThemeRoller 

---

Examples of jQuery UI 
=====================

* Grooveshark
* Pandora

---

Downloading jQuery UI
=====================

* jQuery UI Web site
* Google CDN
* Microsoft CDN

---

Installing jQuery UI
====================

    <!doctype html>
    <html>
    <head>
	    <link href="/css/ui-lightness.css" />
	    <link href="/css/style.css" />
	  </head>
    <body>
      <div></div>
      <script src="/js/jquery.js"></script>
      <script src="/js/jqueryui.js"></script>
      <!-- add your plugins and custom script tags here -->
    </body>
    </html>
{: .demo-content }

---

Let's Build Something 
=====================

* Build a fully functioning UI 
* Use jQuery UI
* Front-end only
* State persistence (outside scoop)
* Use the jQuery UI Themes

---

To-Do List
==========

* Script Junkie - Introduction to Complex UIs Using jQuery UI
* Github - [http://github.com/RedWolves/Complex-UIs-with-jQueryUI](http://github.com/RedWolves/Complex-UIs-with-jQueryUI)
* Demo on jsFiddle - [http://jsfiddle.net/RWhitbeck/ZyYFG/](http://jsfiddle.net/RWhitbeck/ZyYFG/)


---

To Do list 
==========

* Login screen (Not in this demo)
* Ability to add new projects
* Separate tasks per project
* Add/Remove projects
* Add/Complete tasks
* Sort task list

---

Tasks
=====

* Title
* Description
* Due date

---

Which Widget would work best for tasks?
=================================

* Accordion
* Autocomplete
* Button
* Datepicker
* Dialog
* Progressbar
* Slider
* Tabs

---

Which Widget works best for tasks
=================================

* Accordion

---

HTML
====

    <div class="accordion">
      <div>
        <h3><a href="#">Download jQuery UI</a></h3>
        <div>
          <input type="checkbox" class="completed">
          <strong>Download jQuery UI</strong>
          <div>
            Go to 
            <a href="http://jqueryui.com/download">
            http://jqueryui.com/download</a> 
            to download jQuery UI.
          </div>
          <div>
            <strong>Date due:</strong> 11/15/2011
          </div>
        </div>
      </div>
    </div>
{: .demo-content }

---

jQuery
======

    $(".accordion").accordion({
      // setting the active option to false allows for no item 
      // to be open and active. The default is that one item 
      // is always open.  
      active: false,

      // setting autoHeight to false allows for each item to 
      // have a dynamic height.  
      autoHeight: false,

      // collapsible set to true allows the accordion to have no open items.  
      collapsible: true,

      // header defines the element of the item that is the header.
      header: "> div > h3"
    });
{: .javascript }

---

Demo
====

<p><a href="/embedded/accordion/index.html" target="demo">Click to Run</a></p>

---

Adding a Task
=============

* Add a button 
* Button will open a Dialog
* Dialog will hold a form to collect task data
* Submit button inserts the new task

---

We need a button
================

    <button class="AddToDo">Add Task</button>
{: .demo-content }

    $(".AddToDo").button();
{: .javascript }

---

Let's define a Dialog
======================

    <div id="AddToDoItem" title="Add To Do Item">
      <p>Use the form below to add a to do item 
	       to the list.
      </p>
      <div>
        <label for="task">Task:</label> 
        <input type="text" id="task">
      </div>
      <div>
        <label for="description">Description:</label> 
        <textarea id="description"></textarea>
      </div>
      <div>
        <label for="duedate">Date due:</label> 
        <input type="text" id="duedate">
      </div>
    </div>
{: .demo-content }

---

Let's define a Dialog
======================

   	$("#AddToDoItem").dialog({
        modal: true,
        autoOpen: false,
        buttons: {
           "Add to do item": function() {
               // Takes the input and creates a new accordion item
               // Add a new task
            },
            "Cancel": function() {
               // Clears all the input fields.
               // Close the dialog
             }
         }
    });
{: .javascript }

---

Cancel Button
=============

    "Cancel": function() {
      // Clear the field in the dialog
      $("#task, #description, #duedate").val("");

			// close the dialog
      $(this).dialog("close");
    }
{: .javascript }

---

Add a task Button
=================

    "Add to do item": function() {
       //create a JSON object to pass the data from the form to the template.
       var newItem = [{
         task: $("#task").val(),
         description: $("#description").val(),
         duedate: $("#duedate").val()
       }];

         // Select the template, render it with the JSON data above and append it to 
         // the visible accordion.
         $("#ToDoItemTemplate").tmpl(newItem).appendTo(".accordion");

         // Call the refreshAccordion to add the new item to the accordion 
         $(".accordion").refreshAccordion();

         // Close the dialog
         $(this).dialog("close");
         // Clear the fields in the dialog
         $("#task, #description, #duedate").val("");
    }
{: .javascript }

---

Datepicker
==========

    $("#duedate").datepicker();
{: .javascript }

---

Open the Dialog
===============

    $(".AddToDo").live("click", function() {
      // Select the DOM that represents the dialog
      $("#AddToDoItem").dialog('open');
    });
{: .javascript }

---

Demo
====

<p><a href="/embedded/dialog/index.html" target="demo">Click to Run</a></p>

---

Sorting Tasks
=============

    $(".accordion").sortable({
      // constrain movement to the y axis only
      axis: "y",
				
      // define which element will be the handle when sorting.
      handle: "h3",
				
      // stop: event that handles when the element being sorted has stopped.
      //       In this instance we are setting the global stop variable which 
      //       helps determine if the todo item is in movement. 
      stop: function() {
        stop = true;
      },
				
        // Don't sort elements with class ui-state-disabled.
        cancel : ".ui-state-disabled"
    });
{: .javascript }

---

Disable accordion click
=======================

    // If an item is moving during a sort we want to override the default click 
    // function of the accordion header to allow the sort to happen unimpeded.
    $( ".accordion h3" ).click(function( event ) {
	
   	// if the item is moving disable the click event for the accordion widget.
      if ( stop ) {
		
        // keeps other handlers from being executed and prevents the event from 
        // bubbling up the DOM tree.
        event.stopImmediatePropagation();
		
        // this will prevent the default action of the event from being triggered.
        event.preventDefault();
		
        // reset the stop variable 
        stop = false;
      }
    });
{: .javascript }

---

Demo
====

<p><a href="/embedded/sortable/index.html" target="demo">Click to Run</a></p>

---

Completing a Task
=================

    $("input[type=checkbox]").live("click", function(){
      $(this)
        // Search up through the DOM tree to find the first instance of the selection.
        // We are looking for the first parent item with a data attribute of sortable-item.
        // This data attribute is set from the sortable interaction widget.
        .closest(':data(sortable-item)')
          // find the H3 element and trigger a click event to activate and close
          // the accordion item.
        .find('h3').click()
        // return the set of matched elements to it's previous state.
        .end()
        // Hide the item we are completing with a sliding motion.  upon completion
        // of the animation fire the callback function.
        .slideUp(function () {
          // remove this todo item from the DOM.
          $(this).remove();
        });
    });
{: .javascript }

---

Demo
====

<p><a href="/embedded/sortable/complete.html" target="demo">Click to Run</a></p>

---

Create Projects
===============

    <div id="tabs">
      <ul>
        <li><a href="#project1">Project 1</a></li>
      </ul>
      <div id="project1">
        All of our existing code goes here.
      </div>
    </div>
{: .demo-content }

    $("#tabs").tabs();
{: .javascript }

---

Let's Add a Project
===================

* Button
* Dialog
* A way to insert a bunch of HTML.

---

Define our Tabs
===============

    $("#tabs").tabs({
	
      // tabTemplate: HTML template from which a new tab is created and added. 
      //              The placeholders #{href} and #{label} are replaced with the
      //              url and tab label that are passed as arguments to 
      //              the add method.
      tabTemplate: "<li><a href='#{href}'>#{label}</a>\
        <span class='ui-icon ui-icon-close'>Remove Tab</span></li>",
							
      // add (event): This event is triggered when a tab is added.
      add: function( event, ui ) {
		
        // Setup a tab based on a jQuery Template defined in the HTML.			
        $("#newProjectTabTemplate")
        .tmpl()
        // append the template results to the selected contents.
        .appendTo(ui.panel)
        // We need to recreate our To Do list accordions to setup the new 
        // accordion that was created with the new project tab.
        .setupToDoList();
      }
    });
{: .javascript }

---

When Adding a Tab
=================

    "Add new project" : function() {
	
      // using the date to create a unique tab id.
      var foo = new Date();
      $tabs.tabs("add", "#project-" + foo.getTime(), $("#project").val())

      // Select the new tab to make it active.
      .tabs("select", $tabs.tabs("length") - 1);
	
      // Close the dialog
      $(this).dialog("close");
	
      // Clear the value on the form field in the dialog.
      $("#project").val("");
    }
{: .javascript }

---

Demo
====

<p><a href="http://jsfiddle.net/RWhitbeck/ZyYFG/" class="Demo">Click to Run</a></p>

---

Get the code
============

* http://github.com/RedWolves/
* http://jsfiddle.net/RWhitbeck/ZyYFG/
* Script Junkie - Introduction to Complex UIs Using jQuery UI (http://scriptjunkie.com)

---

# Thank you
## Any Questions?

