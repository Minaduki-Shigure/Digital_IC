######################################################################
# Logical Library Settings
######################################################################
set_app_var search_path "$search_path $ADDITIONAL_SEARCH_PATH"
set_app_var target_library $TARGET_LIBRARY_FILES
set_app_var link_library "* $target_library $synthetic_library"
set_app_var symbol_library $SYMBOL_LIBRARY_FILES


