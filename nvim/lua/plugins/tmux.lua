local tmux_status, tmux = pcall(require, "tmux")
if not tmux_status then
	print("tumx not found")
	return
end

tmux.setup()
