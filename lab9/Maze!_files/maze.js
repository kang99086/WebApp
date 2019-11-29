/* CSE3026 : Web Application Development
 * Lab 09 - Maze
 */

var loser = null;  // whether the user has hit a wall

window.onload = function() {
	var a = $$(".boundary")
	for (var i=0; i<a.length; i++) {
		a[i].onmouseover = overBoundary;
	}
	$("end").onmouseover = overEnd;
	$("start").onclick = startClick;
};

// called when mouse enters the walls;
// signals the end of the game with a loss
function overBoundary(event) {
	var boundary = $$(".boundary");
	for (var i=0; i<boundary.length; i++) {
		boundary[i].addClassName("youlose");
		loser = true;
	}
}

// called when mouse is clicked on Start div;
// sets the maze back to its initial playable state
function startClick() {
	loser = null;
	var boundary = $$(".boundary");
	for (var i=0; i<boundary.length; i++) {
		boundary[i].removeClassName("youlose");
	}
}

// called when mouse is on top of the End div.
// signals the end of the game with a win
function overEnd() {
	if(!loser){
		$("status").innerText = "You Win:)";
	}
	else {
		$("status").innerText = "You lose:(";
	}
}

// test for mouse being over document.body so that the player
// can't cheat by going outside the maze
function overBody(event) {
	$()
}
