
project "App_InverseDynamicsExample"

if _OPTIONS["ios"] then
	kind "WindowedApp"
else	
	kind "ConsoleApp"
end
defines {"B3_USE_STANDALONE_EXAMPLE"}
includedirs {"../../src"}

links {
	"BulletInverseDynamicsUtils", "BulletInverseDynamics","Bullet3Common","BulletDynamics","BulletCollision", "LinearMath"
}

language "C++"

files {
	"**.cpp",
	"**.h",
	"../StandaloneMain/main_console_single_example.cpp",
		"../Utils/b3ResourcePath.cpp",
			"../Utils/b3ResourcePath.h",
			"../RenderingExamples/TimeSeriesCanvas.cpp",
			"../RenderingExamples/TimeSeriesFontData.cpp",
			"../MultiBody/InvertedPendulumPDControl.cpp",
			"../ThirdPartyLibs/tinyxml/tinystr.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxml.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxmlerror.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxmlparser.cpp",
			"../ThirdPartyLibs/Wavefront/tiny_obj_loader.cpp",
			"../ThirdPartyLibs/Wavefront/tiny_obj_loader.h",
			"../Importers/ImportColladaDemo/LoadMeshFromCollada.cpp",
			"../Importers/ImportObjDemo/LoadMeshFromObj.cpp",
			"../Importers/ImportObjDemo/Wavefront2GLInstanceGraphicsShape.cpp",
			"../Importers/ImportURDFDemo/BulletUrdfImporter.cpp",
			"../Importers/ImportURDFDemo/MyMultiBodyCreator.cpp",
			"../Importers/ImportURDFDemo/URDF2Bullet.cpp",
			"../Importers/ImportURDFDemo/UrdfParser.cpp",
			"../Importers/ImportURDFDemo/urdfStringSplit.cpp",
			
}


project "App_InverseDynamicsExampleGui"

if _OPTIONS["ios"] then
        kind "WindowedApp"
else
        kind "ConsoleApp"
end
defines {"B3_USE_STANDALONE_EXAMPLE"}

includedirs {"../../src"}

links {
        "BulletInverseDynamicsUtils", "BulletInverseDynamics","BulletDynamics","BulletCollision", "LinearMath", "OpenGL_Window","Bullet3Common"
}

	initOpenGL()
  initGlew()


language "C++"

files {
        "InverseDynamicsExample.cpp",
        "*.h",
        "../StandaloneMain/main_opengl_single_example.cpp",
	"../ExampleBrowser/OpenGLGuiHelper.cpp",
	"../ExampleBrowser/GL_ShapeDrawer.cpp",
			"../Utils/b3ResourcePath.cpp",
			"../Utils/b3ResourcePath.h",
			"../RenderingExamples/TimeSeriesCanvas.cpp",
			"../RenderingExamples/TimeSeriesFontData.cpp",
			"../MultiBody/InvertedPendulumPDControl.cpp",
			"../ThirdPartyLibs/tinyxml/tinystr.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxml.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxmlerror.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxmlparser.cpp",
			"../ThirdPartyLibs/Wavefront/tiny_obj_loader.cpp",
			"../ThirdPartyLibs/Wavefront/tiny_obj_loader.h",
			"../Importers/ImportColladaDemo/LoadMeshFromCollada.cpp",
			"../Importers/ImportObjDemo/LoadMeshFromObj.cpp",
			"../Importers/ImportObjDemo/Wavefront2GLInstanceGraphicsShape.cpp",
			"../Importers/ImportURDFDemo/BulletUrdfImporter.cpp",
			"../Importers/ImportURDFDemo/MyMultiBodyCreator.cpp",
			"../Importers/ImportURDFDemo/URDF2Bullet.cpp",
			"../Importers/ImportURDFDemo/UrdfParser.cpp",
			"../Importers/ImportURDFDemo/urdfStringSplit.cpp",

}

if os.is("Linux") then initX11() end

if os.is("MacOSX") then
        links{"Cocoa.framework"}
end
                          


project "App_InverseDynamicsExampleGuiWithSoftwareRenderer"

if _OPTIONS["ios"] then
        kind "WindowedApp"
else
        kind "ConsoleApp"
end
defines {"B3_USE_STANDALONE_EXAMPLE"}

includedirs {"../../src"}

links {
        "BulletInverseDynamicsUtils", "BulletInverseDynamics","BulletDynamics","BulletCollision", "LinearMath", "OpenGL_Window","Bullet3Common"
}

	initOpenGL()
        initGlew()


language "C++"

files {
        "InverseDynamicsExample.cpp",
        "*.h",
        "../StandaloneMain/main_sw_tinyrenderer_single_example.cpp",
	"../ExampleBrowser/OpenGLGuiHelper.cpp",
	"../ExampleBrowser/GL_ShapeDrawer.cpp",
	"../TinyRenderer/geometry.cpp",
	"../TinyRenderer/model.cpp",
	"../TinyRenderer/tgaimage.cpp",
	"../TinyRenderer/our_gl.cpp",
	"../TinyRenderer/TinyRenderer.cpp",
	"../Utils/b3ResourcePath.cpp",
			"../Utils/b3ResourcePath.cpp",
			"../Utils/b3ResourcePath.h",
			"../RenderingExamples/TimeSeriesCanvas.cpp",
			"../RenderingExamples/TimeSeriesFontData.cpp",
			"../MultiBody/InvertedPendulumPDControl.cpp",
			"../ThirdPartyLibs/tinyxml/tinystr.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxml.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxmlerror.cpp",
			"../ThirdPartyLibs/tinyxml/tinyxmlparser.cpp",
			"../ThirdPartyLibs/Wavefront/tiny_obj_loader.cpp",
			"../ThirdPartyLibs/Wavefront/tiny_obj_loader.h",
			"../Importers/ImportColladaDemo/LoadMeshFromCollada.cpp",
			"../Importers/ImportObjDemo/LoadMeshFromObj.cpp",
			"../Importers/ImportObjDemo/Wavefront2GLInstanceGraphicsShape.cpp",
			"../Importers/ImportURDFDemo/BulletUrdfImporter.cpp",
			"../Importers/ImportURDFDemo/MyMultiBodyCreator.cpp",
			"../Importers/ImportURDFDemo/URDF2Bullet.cpp",
			"../Importers/ImportURDFDemo/UrdfParser.cpp",
			"../Importers/ImportURDFDemo/urdfStringSplit.cpp",

}

if os.is("Linux") then initX11() end

if os.is("MacOSX") then
        links{"Cocoa.framework"}
end
                          