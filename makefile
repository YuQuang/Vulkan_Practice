LIBINCLUDE		:= --static -lopengl32 -lgdi32 -luser32 -lglfw3dll -lglfw3 -lglfw3 -lvulkan-1 -lgdi32 -lglfw3dll -static-libgcc -static-libstdc++
VULKANINCLUDE	:= C:/VulkanSDK/1.3.231.1/Include
VULKANLIB		:= C:/VulkanSDK/1.3.231.1/LIB
GCCINCLDUDE		:= C:/mingw64/include
OUTPUTNAME		:= VulkanTest
LINKFILE		:= main.o

${OUTPUTNAME}.exe: src/*.cpp src/*.hpp
	g++ -I ${VULKANINCLUDE} -I ${GCCINCLDUDE} -L ${VULKANLIB}  -o ${OUTPUTNAME}.exe *.cpp src/*.cpp ${LIBINCLUDE}

test: ${OUTPUTNAME}.exe
	./${OUTPUTNAME}.exe

clean:
	del *.o