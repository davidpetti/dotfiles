return {
	"Civitasv/cmake-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		cmake_build_directory = "build", -- where CMake generates build files
	},

	keys = {
		-- Configure/build
		{ "<leader>cg", "<cmd>CMakeSelectConfigurePreset<CR>", desc = "CMake: Select configure preset" },
		{ "<leader>cb", "<cmd>CMakeSelectBuildPreset<CR>", desc = "CMake: Select build preset" },
		{ "<leader>ct", "<cmd>CMakeSelectBuildTarget<CR>", desc = "CMake: Select build target" },
		{ "<leader>cc", "<cmd>CMakeBuild<CR>", desc = "CMake: Build" },

		-- Run/debug
		{ "<leader>cl", "<cmd>CMakeSelectLaunchTarget<CR>", desc = "CMake: Select launch target" },
		{ "<leader>cr", "<cmd>CMakeRun<CR>", desc = "CMake: Run launch target" },
		{ "<leader>cd", "<cmd>CMakeDebug<CR>", desc = "CMake: Debug launch target" },
	},
}
