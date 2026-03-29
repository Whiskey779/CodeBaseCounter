workspace "CodeBaseCounter"
    configurations { "Debug", "Release" }
    architecture "x86_64"
    startproject "CodeBaseCounter"

project "CodeBaseCounter"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"        -- or C++17 if you prefer
    targetdir "bin/%{cfg.buildcfg}"
    objdir "bin-int/%{cfg.buildcfg}"
    files { 
        "src/**.cpp",
    }

    includedirs {
        "include"
    }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"

    filter {} -- clear filter