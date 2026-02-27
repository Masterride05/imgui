project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.cpp",
        "*.h",
        "misc/cpp/*.cpp",
        "misc/cpp/*.h",

        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.cpp"
    }

    includedirs {
        "./",
        "../glfw/include"
    }
    
    filter "configurations:*Shared"
        staticruntime "off"
    filter "configurations:*Static"
        staticruntime "on"

    filter "configurations:Debug*"
        runtime "Debug"
    filter "configurations:Release*"
        runtime "Release"
    filter "configurations:Dist*"
        runtime "Release"

    filter "system:windows"
        multiprocessorcompile ("on")