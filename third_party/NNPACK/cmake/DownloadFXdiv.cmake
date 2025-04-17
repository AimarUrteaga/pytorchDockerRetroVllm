cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

PROJECT(fxdiv-download NONE)

INCLUDE(ExternalProject)
ExternalProject_Add(fxdiv
	GIT_REPOSITORY https://github.com/Maratyszcza/FXdiv.git
	GIT_TAG master
	SOURCE_DIR "${CONFU_DEPENDENCIES_SOURCE_DIR}/fxdiv"
	BINARY_DIR "${CONFU_DEPENDENCIES_BINARY_DIR}/fxdiv"
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	INSTALL_COMMAND ""
	TEST_COMMAND ""
)
