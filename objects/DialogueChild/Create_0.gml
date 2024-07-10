event_inherited();

dialogue.add(spr_test_portrait, "Hello");

var decisions = [];
array_push(decisions, {
	optionText: "Yes",
	optionScript: empty_script
});

array_push(decisions, {
	optionText: "No",
	optionScript: instance_destroy
});

dialogue.addWithDecisions(spr_test_portrait_EXCITED, "DOES THIS WORK??? MAYBE?", decisions);
dialogue.add(spr_test_portrait, "Well here is a really long message that should surely break it, I bet you can't handle this many characters...");