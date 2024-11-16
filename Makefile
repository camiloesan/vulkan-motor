CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi
vkpg: *.cpp *.hpp
	g++ $(CFLAGS) -o vkpg *.cpp $(LDFLAGS)

.PHONY: test clean

test: vkpg
	./vkpg

clean:
	rm -f vkpg
