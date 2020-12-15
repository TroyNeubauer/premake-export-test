-- premake5.lua
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

