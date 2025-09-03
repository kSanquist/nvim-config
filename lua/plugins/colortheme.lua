
 return {
	  "Yazeed1s/oh-lucy.nvim",  -- Colorscheme
	  config = function()
		  vim.g.oh_lucy_italic_functions = true
		  vim.g.oh_lucy_italic_comments = false
          vim.g.oh_lucy_transparent_background = true 
		  vim.cmd[[colorscheme oh-lucy]]
	  end
  }
