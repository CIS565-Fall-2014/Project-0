EXEC := "build/CIS565_PROJ_0"

.PHONY: all debug release run run-debug clean

all: debug

debug:
	(mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=debug && make)

release:
	(mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=release && make)

run:
	optirun ${EXEC}

run-debug:
	CUDA_DEBUGGER_SOFTWARE_PREEMPTION=1 optirun cuda-gdb ${EXEC}

clean:
	rm -rf build
