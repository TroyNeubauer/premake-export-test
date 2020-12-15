-- premake5.lua
require "export-compile-commands"

workspace "Test"
	configurations { "Debug", "Release" }
	language "C++"
	systemversion "latest"
	staticruntime "on"
	architecture "x86_64"

project "Test"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"

	targetdir "bin/%{cfg.buildcfg}"

	files { "*.h", "*.cpp" }
	includedirs { "vendor/spdlog/include/" }
	defines {  }

	filter "configurations:Debug"
		symbols "On"

	filter "configurations:Release"
		optimize "On"

