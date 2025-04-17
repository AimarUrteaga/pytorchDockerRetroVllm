cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

PROJECT(pthreadpool-download NONE)

INCLUDE(ExternalProject)
ExternalProject_Add(pthreadpool
	GIT_REPOSITORY https://github.com/Maratyszcza/pthreadpool.git
	GIT_TAG master
	SOURCE_DIR "${CONFU_DEPENDENCIES_SOURCE_DIR}/pthreadpool"
	BINARY_DIR "${CONFU_DEPENDENCIES_BINARY_DIR}/pthreadpool"
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	INSTALL_COMMAND ""
	TEST_COMMAND ""
)
