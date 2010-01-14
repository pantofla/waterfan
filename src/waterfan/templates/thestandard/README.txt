------------------ INSTALLATION -------------------
Upload the templates and modules directories to the root of your Pligg site. Overwrite any files that may already exist. Then install the template from your Admin > Configure > Templates area by changing the default template name to "thestandard".

To fix positioning issues for child-comments, you will want to update story.php line 182 to:
				$output .= '<div class="child-comment">';

------------------ ABOUT -------------------
The Standard template was designed by Eric "Yankidank" Heikkinen. 
It is the first official Pligg template to use the new "up/down" voting method. 
By clicking on the up or down arrows the number will increase or decrease by 1 vote.
This means that it is possible for stories to receive either zero votes or a negative number of votes.
In order for a story to become published it must reach +5 votes (default publish value set by Pligg CMS), but after being published the negative votes will not remove it from the Published page. This means that you can have stories on the homepage with a negative number of votes.

----------------- LICENSE ------------------

This work has been licensed under the Attribution-Noncommercial-Share Alike 3.0 Unported.
In short, you are free to share and remix this work under the following conditions:

    * You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work).
    * You may not use this work for commercial purposes.
    * If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.

