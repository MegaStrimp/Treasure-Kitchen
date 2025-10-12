///@description Clean Up

#region Destroy Lists
ds_list_destroy(selectionList);
if (ds_exists(buttonSelectionList,ds_type_list)) ds_list_destroy(buttonSelectionList);
#endregion