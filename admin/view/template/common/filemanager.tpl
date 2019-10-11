<?php echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />

<link href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" type="text/css" rel="stylesheet">
<link href="view/javascript/jquery/fileuploader.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="view/javascript/jquery/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>

<script type="text/javascript" src="view/javascript/jquery/ui/external/jquery.bgiframe-2.1.2.js"></script>
<script type="text/javascript" src="view/javascript/jquery/jstree/jquery.tree.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/jstree/lib/jquery.cookie.js"></script>
<script type="text/javascript" src="view/javascript/jquery/jstree/plugins/jquery.tree.cookie.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ajaxupload.js"></script>

<style type="text/css">@import url(view/javascript/plupload/js/jquery.ui.plupload/css/jquery.ui.plupload.css);</style>
<script type="text/javascript" src="view/javascript/plupload/js/plupload.full.js"></script>
<script type="text/javascript" src="view/javascript/plupload/js/jquery.ui.plupload/jquery.ui.plupload.js"></script>

<style type="text/css">
body {
	padding: 0;
	margin: 0;
	background: #F7F7F7;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
}
img {
	border: 0;
}
#container {
	padding: 0px 10px 7px 10px;
	height: 350px;
}
#menu {
	clear: both;
	height: 29px;
	margin-bottom: 3px;
}
#column_left {
	background: #FFF;
	border: 1px solid #CCC;
	float: left;
	width: 20%;
	height: 302px;
	overflow: auto;
}
#column_right {
	background: #FFF;
	border: 1px solid #CCC;
	float: right;
	width: 78%;
	height: 302px;
	overflow: auto;
	text-align: center;
}
#column_right div {
	text-align: left;
	padding: 5px;
	
}
#column_right a {
	display: inline-block;
	text-align: center;
	border: 1px solid #EEEEEE;
	cursor: pointer;
	margin: 5px;
	padding: 5px;
}
#column_right a.selected {
	border: 1px solid #7DA2CE;
	background: #EBF4FD;
}
#column_right input {
	display: none;
}
#dialog {
	display: none;
}


.button {
	display: block;
	float: left;
	padding: 8px 5px 8px 25px;
	margin-right: 5px;
	background-position: 5px 6px;
	background-repeat: no-repeat;
	cursor: pointer;
}
.button:hover {
	background-color: #EEEEEE;
}
.thumb {
	padding: 5px;
	width: 105px;
	height: 105px;
	background: #F7F7F7;
	border: 1px solid #CCCCCC;
	cursor: pointer;
	cursor: move;
	position: relative;
}

#updateImage a { 
width: 130px; 
height: 16px; 
background: url(view/javascript/jquery/ui/themes/ui-lightness/images/ui-bg_gloss-wave_35_f6a828_500x100.png) repeat; 
color: #fbfbfb; 
text-align: center; 
padding: 5px; 
line-height: 16px; 
font-size: 115%; 
font-weight: bold; 
margin: auto; 
border-radius: 5px;  
border: 1px solid #ddd; 
background-position: 0px -50px;}

#updateImage a:hover { background-position: 0px 0px; }

#btnExpand {float: left; font-size: 10px;}
</style>

</head>
<body>
<div id="container">
  <div id="menu"><a id="create" class="button" style="background-image: url('view/image/filemanager/folder.png');"><?php echo $button_folder; ?></a><a id="delete" class="button" style="background-image: url('view/image/filemanager/edit-delete.png');"><?php echo $button_delete; ?></a><a id="move" class="button" style="background-image: url('view/image/filemanager/edit-cut.png');"><?php echo $button_move; ?></a><a id="copy" class="button" style="background-image: url('view/image/filemanager/edit-copy.png');"><?php echo $button_copy; ?></a><a id="rename" class="button" style="background-image: url('view/image/filemanager/edit-rename.png');"><?php echo $button_rename; ?></a><a id="upload" class="button" style="background-image: url('view/image/filemanager/upload.png');"><?php echo $button_upload; ?></a><a id="uploadmulti" class="button" style="background-image: url('view/image/filemanager/upload.png');">Upload+</a><a id="refresh" class="button" style="background-image: url('view/image/filemanager/refresh.png');"><?php echo $button_refresh; ?></a>
    <div id="updateImage" file="" style="float: right;"><a class="button">Insert</a></div>

  </div>

  <div id="column_left"></div>
  <div id="column_right"></div>
    
   <a id="btnExpand" class="button" style=" width: 48px; font-size: 9px; margin: 0; background-image: url('view/image/desc.png'); background-position: 10px 7px" >Expand</a>
   <a id="btnCollapse" class="button" style="width: 50px; font-size: 9px; margin: 0; background-image: url('view/image/asc.png'); background-position: 10px 7px" >Collapse</a><span style="float: right;  font-size: 10px; padding: 7px;">IM+UL+IPad-(OC 1.5.1.x)</span>
  
</div>

<script type="text/javascript"><!--
/*
***********************************************
*    ImageManager+ with Upload+ for Opencart  *
* 				iPad Edition			      *
*      KayLohn 2012 kaylohn @ gmail . com     *
* 										      *
***********************************************
*	for OC Version : 1.5.1.x
*/

$(document).ready(function () { 

	$('#column_left').tree({
		plugins : {
			cookie : {}
				},	
		
		data: { 
			type: 'json',
			async: true, 
			opts: { 
				method: 'POST', 
				url: 'index.php?route=common/filemanager/directory&token=<?php echo $token; ?>'
			} 
		},
		
		selected: 'top',
		
		ui: {		
			theme_name: 'classic',
			animation: 50
		},	
		types: { 
			'default': {
				clickable: true,
				creatable: false,
				renameable: false,
				deletable: false,
				draggable: false,
				max_children: -1,
				max_depth: -1,
				valid_children: 'all'
			}
		},
		callback: {
			beforedata: function(NODE, TREE_OBJ) { 
				if (NODE == false) {
					TREE_OBJ.settings.data.opts.static = [ 
						{
							data: 'image',
							attributes: { 
								'id': 'top',
								'directory': ''
							}, 
							state: 'closed'
						}
					];
					
					return { 'directory': '' } 
				} else {
					TREE_OBJ.settings.data.opts.static = false;  
					
					return { 'directory': $(NODE).attr('directory') } 
				};
				
			},	
			
			onselect: function (NODE, TREE_OBJ) {
				var dr;
				var tree = $.tree.reference('#column_left a');
				window.dr = $(tree.selected).attr('directory');
				
				$.ajax({
					url: 'index.php?route=common/filemanager/files&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'directory=' + encodeURIComponent($(NODE).attr('directory')),
						
					dataType: 'json',
					success: function(json) {
						html = '<div>';
						
						if (json) {
							for (i = 0; i < json.length; i++) {
								
								name = '';
								
								filename = json[i]['filename'];
								
								for (j = 0; j < filename.length; j = j + 15) {
									name += filename.substr(j, 15) + '<br />';
								}
								
								name += json[i]['size'];
								
								html += '<a file="' + json[i]['file'] + '"><img src="' + json[i]['thumb'] + '" title="' + json[i]['filename'] + '" /><br />' + name + '</a>';
							}
						}
						
						html += '</div>';
						$('#column_right').html(html);
						
					}
					
					
				});
				
			},

			onopen: function(TREE_OBJ) {
				var tr = $('#column_left li#top li[directory]');
				tr.each(function(index, domEle) {
				dd = $(domEle).attr('directory');
				dd = dd.replace(/\//g, ""); 
				dd = dd.replace(" ", ""); 
				
				$(domEle).attr('id', dd);
				});
				
				var myTree = $.tree.reference('#column_left');
				var cc = $.cookie('selected');
				var bb = '#' + cc;
				myTree.select_branch(bb);

			},
			
			
		},
	});	

	$('#btnExpand').click( function() {
		var myTree= $.tree.focused();
        myTree.open_all('#top');
		myTree.refresh(myTree);
	});
	
	$('#btnCollapse').click( function() {
		var myTree= $.tree.focused();
        myTree.close_all('#top');
		myTree.refresh(myTree);
	});
	
	
	$('#column_right a').live('click', function () {
		if ($(this).attr('class') == 'selected') {
			$(this).removeAttr('class');
		} else {
			$('#column_right a').removeAttr('class');
			
			$(this).attr('class', 'selected');
			$('#updateImage').attr('file', $(this).attr('file'));
			//alert ($('#updateImage').attr('file'));
		}
	});
	
	$('#column_right a').live('dblclick', function () {
		<?php if ($fckeditor) { ?>
		window.opener.CKEDITOR.tools.callFunction(2, '<?php echo $directory; ?>' + $(this).attr('file'));
		self.close();	
		
		<?php } else { ?>
		parent.$('#<?php echo $field; ?>').attr('value', 'data/' + $(this).attr('file'));
		parent.$('#dialog').dialog('close');
		
		parent.$('#dialog').remove();	
		<?php } ?>
	});		
						
	$('#create').bind('click', function () {
		var tree = $.tree.focused();
		
		if (tree.selected) {
			$('#dialog').remove();
			
			html  = '<div id="dialog">';
			html += '<?php echo $entry_folder; ?> <input type="text" name="name" value="" /> <input type="button" value="Submit" />';
			html += '</div>';
			
			$('#column_right').prepend(html);
			
			$('#dialog').dialog({
				title: '<?php echo $button_folder; ?>',
				resizable: false
			});	
			
			$('#dialog input[type=\'button\']').bind('click', function () {
				
				$.ajax({
					url: 'index.php?route=common/filemanager/create&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'directory=' + encodeURIComponent($(tree.selected).attr('directory')) + '&name=' + encodeURIComponent($('#dialog input[name=\'name\']').val()),
					dataType: 'json',
					async: true,
					success: function(json) {
						if (json.success) {
							$('#dialog').remove();
							
							tree.refresh(tree.selected);
							
							alert(json.success);
						} else {
							alert(json.error);
						}
					}
				});
			});
		} else {
			alert('<?php echo $error_directory; ?>');	
		}
	});
	
	$('#delete').bind('click', function () {
		path = $('#column_right a.selected').attr('file');
		fldr = $('#column_left a.clicked').html();
		fldr = fldr.replace("<ins>&nbsp;</ins>", "");
		
		//alert (fldr);
		if(path==undefined){
         $('#dialog').remove();
		
		html  = '<div id="dialog">';
		html += '<p><strong  style="color: red;">WARNING:</strong> You are trying to delete the folder' + '<span style="font-weight: bold;"> "' + fldr + '"' +'</span><br />';
		html += 'All folders and files under it will be deleted. <strong  style="color: red;">Confirm?</strong></p>';
		html += '</div>';

		$('#column_right').prepend(html);
		
		$( "#dialog" ).dialog({
			resizable: false,
			height:165,
			width: 380,
			modal: true,
			title: 'Folder Delete',
			buttons: {
				"Delete folder": function() {
					var tree = $.tree.focused();
			
			if (tree.selected) {
				$.ajax({
					url: 'index.php?route=common/filemanager/delete&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'path=' + encodeURIComponent($(tree.selected).attr('directory')),
					dataType: 'json',
					success: function(json) {
						if (json.success) {
							tree.select_branch(tree.parent(tree.selected));
							
							tree.refresh(tree.selected);
							
							alert(json.success);
							
						} 
						
						if (json.error) {
							alert(json.error);
						}
					}
				});			
			} else {
				alert('<?php echo $error_select; ?>');
			}
			$( this ).dialog( "close" );
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			}
		});
		}
		else if (path) {
			$.ajax({
				url: 'index.php?route=common/filemanager/delete&token=<?php echo $token; ?>',
				type: 'POST',
				data: 'path=' + path,
				dataType: 'json',
				success: function(json) {
					if (json.success) {
						var tree = $.tree.focused();
					
						tree.select_branch(tree.selected);
						
						alert(json.success);
					}
					
					if (json.error) {
						alert(json.error);
					}
				}
			});				
		} 
	});
	
	$('#move').bind('click', function () {
		$('#dialog').remove();
		
		html  = '<div id="dialog">';
		html += '<?php echo $entry_move; ?> <select name="to"></select> <input type="button" value="Submit" />';
		html += '</div>';

		$('#column_right').prepend(html);
		
		$('#dialog').dialog({
			title: '<?php echo $button_move; ?>',
			resizable: false,
			
		});

		$('#dialog select[name=\'to\']').load('index.php?route=common/filemanager/folders&token=<?php echo $token; ?>');
		
		$('#dialog input[type=\'button\']').bind('click', function () {
			path = $('#column_right a.selected').attr('file');
							 
			if (path) {																
				$.ajax({
					url: 'index.php?route=common/filemanager/move&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'from=' + encodeURIComponent(path) + '&to=' + encodeURIComponent($('#dialog select[name=\'to\']').val()),
					dataType: 'json',
					success: function(json) {
						if (json.success) {
							$('#dialog').remove();
							
							var tree = $.tree.focused();
							
							tree.select_branch(tree.selected);
							
							alert(json.success);
						}
						
						if (json.error) {
							alert(json.error);
						}
					}
				});
			} else {
				var tree = $.tree.focused();
				
				$.ajax({
					url: 'index.php?route=common/filemanager/move&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'from=' + encodeURIComponent($(tree.selected).attr('directory')) + '&to=' + encodeURIComponent($('#dialog select[name=\'to\']').val()),
					dataType: 'json',
					success: function(json) {
						if (json.success) {
							$('#dialog').remove();
							
							tree.select_branch('#top');
								
							tree.refresh(tree.selected);
							
							alert(json.success);
						}						
						
						if (json.error) {
							alert(json.error);
						}
					}
				});				
			}
		});
	});

	$('#copy').bind('click', function () {
		$('#dialog').remove();
		
		html  = '<div id="dialog">';
		html += '<?php echo $entry_copy; ?> <input type="text" name="name" value="" /> <input type="button" value="Submit" />';
		html += '</div>';

		$('#column_right').prepend(html);
		
		$('#dialog').dialog({
			title: '<?php echo $button_copy; ?>',
			resizable: false
		});
		
		$('#dialog select[name=\'to\']').load('index.php?route=common/filemanager/folders&token=<?php echo $token; ?>');
		
		$('#dialog input[type=\'button\']').bind('click', function () {
			path = $('#column_right a.selected').attr('file');
							 
			if (path) {																
				$.ajax({
					url: 'index.php?route=common/filemanager/copy&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'path=' + encodeURIComponent(path) + '&name=' + encodeURIComponent($('#dialog input[name=\'name\']').val()),
					dataType: 'json',
					success: function(json) {
						if (json.success) {
							$('#dialog').remove();
							
							var tree = $.tree.focused();
							
							tree.select_branch(tree.selected);
							
							alert(json.success);
						}						
						
						if (json.error) {
							alert(json.error);
						}
					}
				});
			} else {
				var tree = $.tree.focused();
				
				$.ajax({
					url: 'index.php?route=common/filemanager/copy&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'path=' + encodeURIComponent($(tree.selected).attr('directory')) + '&name=' + encodeURIComponent($('#dialog input[name=\'name\']').val()),
					dataType: 'json',
					success: function(json) {
						if (json.success) {
							$('#dialog').remove();
							
							tree.select_branch(tree.parent(tree.selected));
							
							tree.refresh(tree.selected);
							
							alert(json.success);
						} 						
						
						if (json.error) {
							alert(json.error);
						}
					}
				});				
			}
		});	
	});
	
	$('#updateImage').bind('click', function () { 
		
		if ($(this).attr('file') == "") {
		
		$('#dialog').remove();
		
		html  = '<div id="dialog">';
		html += '<p><strong  style="color: red;">WARNING:</strong> No image was selected. ';
		html += 'Please select an image. </p>';
		html += '</div>';

		$('#column_right').prepend(html);
		
		$( "#dialog" ).dialog({
			resizable: false,
			height: 130,
			width: 380,
			modal: true,
			title: 'No image selected',
			buttons: {
				"Ok": function() {
					$('#dialog').remove();
					}
					}
					})
					}
					 else {
	
		<?php if ($fckeditor) { ?>
		window.opener.CKEDITOR.tools.callFunction(2, '<?php echo $directory; ?>' + $('#updateImage').attr('file'));
		self.close();	
		
		<?php } else { ?>
		parent.$('#<?php echo $field; ?>').attr('value', 'data/' + $('#updateImage').attr('file'));
		parent.$('#dialog').dialog('close');
		
		parent.$('#dialog').remove();	
		<?php } ?>
	};
	
	});
	
	
	
	$('#rename').bind('click', function () {
		$('#dialog').remove();
		
		html  = '<div id="dialog">';
		html += '<?php echo $entry_rename; ?> <input type="text" name="name" value="" /> <input type="button" value="Submit" />';
		html += '</div>';

		$('#column_right').prepend(html);
		
		$('#dialog').dialog({
			title: '<?php echo $button_rename; ?>',
			resizable: false
		});
		
		$('#dialog input[type=\'button\']').bind('click', function () {
			path = $('#column_right a.selected').attr('file');
							 
			if (path) {		
				$.ajax({
					url: 'index.php?route=common/filemanager/rename&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'path=' + encodeURIComponent(path) + '&name=' + encodeURIComponent($('#dialog input[name=\'name\']').val()),
					dataType: 'json',
					success: function(json) {
						if (json.success) {
							$('#dialog').remove();
							
							var tree = $.tree.focused();
					
							tree.select_branch(tree.selected);
							
							alert(json.success);
						} 
						
						if (json.error) {
							alert(json.error);
						}
					}
				});			
			} else {
				var tree = $.tree.focused();
				
				$.ajax({ 
					url: 'index.php?route=common/filemanager/rename&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'path=' + encodeURIComponent($(tree.selected).attr('directory')) + '&name=' + encodeURIComponent($('#dialog input[name=\'name\']').val()),
					dataType: 'json',
					success: function(json) {
						if (json.success) {
							$('#dialog').remove();
								
							tree.select_branch(tree.parent(tree.selected));
							
							tree.refresh(tree.selected);
							
							alert(json.success);
						} 
						
						if (json.error) {
							alert(json.error);
						}
					}
				});
			}
		});		
	});

	new AjaxUpload('#upload', {
		action: 'index.php?route=common/filemanager/upload&token=<?php echo $token; ?>',
		name: 'image',
		autoSubmit: false,
		responseType: 'json',
		onChange: function(file, extension) {
			var tree = $.tree.focused();
			if (tree.selected) {
				this.setData({'directory': $(tree.selected).attr('directory')});
				//alert($(tree.selected).attr('directory'))
			} else {
				this.setData({'directory': ''});
			}
			
			
			this.submit();
		},
		onSubmit: function(file, extension) {
			$('#upload').append('<img src="view/image/loading.gif" id="loading" style="padding-left: 5px;" />');
		},
		onComplete: function(file, json) {
			if (json.success) {
				var tree = $.tree.focused();
					
				tree.select_branch(tree.selected);
				
				alert(json.success);
			}
			
			if (json.error) {
				alert(json.error);
			}
			
			$('#loading').remove();	
		}
	});
	
	$('#refresh').bind('click', function () {
		var tree = $.tree.focused();
		tree.refresh(tree.selected);
		});	

		// ++++++++++++ Begin Upload+ main code	++++++++++++++

				var dr;
				var tree = $.tree.reference('#column_left a');
				$('#column_left a').live('click', function() {
				window.dr = $(tree.selected).attr('directory');
				})
				
	$('#uploadmulti').click(function() { 
		
			html  = '<div id="uploadMulti" title="Multiple File Upload">';
			html += '<div id="uploader"></div>';
			html += '</div>';
			
			$('#column_left').prepend(html);
		
		$('#uploadMulti').dialog({ 
		height: '350', 
		width: '760', 
		modal: true,
		resizable: false,
		create: function(event, ui) {
		
		var tree = $.tree.focused();
		
		$("#uploader").plupload({
		
		runtimes : 'flash,html5',
		url : 'index.php?route=common/filemanager/multi&token=<?php echo $token; ?>&directory=' + window.dr,
		max_file_size : '5mb', // allowed by OC '300kb', 
		chunk_size : '1mb',
		unique_names : false,

		resize : {width : 800, height : 600, quality : 90},
		
		filters : [
			{title : "Allowed files", extensions : "jpg,gif,png,pdf,zip,swf"} //,
		],

		flash_swf_url : 'view/javascript/plupload/js/plupload.flash.swf',
		silverlight_xap_url : 'view/javascript/plupload/js/plupload.silverlight.xap'
	});

	$('form').submit(function(e) {
        var uploader = $('#uploader').plupload('getUploader');
		var tree = $.tree.reference('#column_left');
		
        if (uploader.files.length > 0) {
            
            uploader.bind('StateChanged', function() {
                if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
                    $('form')[0].submit();
                }
            });
			                
            uploader.start();

        } else
            alert('You must at least upload one file.');

        return false;

		});
			},
			
			close: function(event, ui) {
				var tree = $.tree.reference('#column_left');
				//tree.refresh(tree.selected); // doesnt work at times 
				tree.refresh(); // works all the time but takes time to refresh the whole tree
				var uploader = $('#uploader').plupload('getUploader');
				
				$('#uploadMulti').remove();
				
			}
			
			})
				
		})

		// end Upload+ main code	
		
});

//--></script>

</body>
</html>