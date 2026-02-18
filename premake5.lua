project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.cpp",
        "*.h",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.cpp"
    }

    includedirs {
        "./",
        "../glfw/include"
    }
    
    filter "system:windows"
        multiprocessorcompile ("on")
        staticruntime "on"