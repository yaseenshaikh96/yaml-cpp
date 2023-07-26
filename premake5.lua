project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"
	
    	targetdir ( "%{wks.location}/bin/" .. outputdir)
    	objdir ( "%{wks.location}/bin-int/" .. outputdir)


	files
	{
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	defines
	{
		"YAML_CPP_STATIC_DEFINE"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
