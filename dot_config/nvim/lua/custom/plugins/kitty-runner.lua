return {
  "lolpie244/simple-kitty-runner.nvim",

  config = function()
require("kitty-runner").setup({
	runner = {
		-- default location of runner. Docs: https://sw.kovidgoyal.net/kitty/remote-control/#cmdoption-kitty-launch-location
		default_location = "vsplit",
		-- delay between opening runner and sending command.
		delay = 0,
		-- extra arguments for opening runner, Docs: https://sw.kovidgoyal.net/kitty/remote-control/#id14
		extra_open_runner_args = {},
		-- extra_open_runner_args = { "--dont-take-focus" },
		-- extra arguments for sending command to runner, docs: https://sw.kovidgoyal.net/kitty/remote-control/#id22
		extra_send_command_args = {},
		-- environment variables, that will be copy to the runner instance
		env_to_copy = { "PATH" }
	},
	launch = {
		-- default location of launch result. Docs: https://sw.kovidgoyal.net/kitty/remote-control/#cmdoption-kitty-launch-location
		default_location = "hsplit",
		-- extra arguments for launching to runner. Docs: https://sw.kovidgoyal.net/kitty/remote-control/#cmdoption-kitty-launch-location
		extra_launch_args = {},
		-- environment variables, that will be copy to the launcher instance
		env_to_copy = { "PATH" },
	},

        -- socket where kitty is listening. See ssh section
	kitty_listen_on = os.getenv("KITTY_LISTEN_ON")



})
  end

}

