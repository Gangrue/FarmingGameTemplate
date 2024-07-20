var _key = keyboard_lastchar;
if (selected) {
	var s_len = string_length(input_text);
	if (ord(_key) == vk_backspace) {
		if (s_len >= 1) {
			input_text = string_delete(input_text, s_len, 1);
		}
	}
	else {
		if (s_len < max_input_length) {
			if (char_is_alphanumeric(_key + "")) {
				input_text += _key;
			}
		}
	}
}