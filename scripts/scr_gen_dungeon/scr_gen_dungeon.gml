/// @param {string} file_name
/// @return {boolean}

var file_name = argument0;

if (!file_exists(file_name)) {
	return false;
}

var file = file_text_open_read(file_name);

var grid = ds_grid_create(15, 10);
var row = 0;

while (!file_text_eof(file)) {
	var line = file_text_read_string(file);
	
	for (var i = 0; i < string_length(line) - 1; ++i) {
		ds_grid_set(grid, i, row, string_char_at(line, i));
	}
	
	++row;
}

file_text_close(file);



return true;
