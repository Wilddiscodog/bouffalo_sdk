COMPONENT_LIB_ONLY := 1
COMPONENT_ADD_INCLUDEDIRS += include
LIBS ?= aacdec_prebuild
COMPONENT_ADD_LDFLAGS += -L$(COMPONENT_PATH)/libs/e907fp $(addprefix -l,$(LIBS))
ALL_LIB_FILES := $(patsubst %,$(COMPONENT_PATH)/libs/e907fp/lib%.a,$(LIBS))
COMPONENT_ADD_LINKER_DEPS := $(ALL_LIB_FILES)