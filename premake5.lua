-- premake5.lua
require "export-compile-commands"

workspace "Test"
   configurations { "Debug", "Release" }

project "Test"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"

   files { "*.h", "*.cpp" }
   includedirs { "vendor/spdlog/include/" }
   defines {  }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

