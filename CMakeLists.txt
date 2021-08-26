cmake_minimum_required(VERSION 3.14)

project(Timer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Gui Qml QuickControls2 Multimedia Core Quick REQUIRED)

set(PROJECT_SOURCES
        src/main.cpp

        src/timer.cpp
        headers/timer.h

        src/logger.cpp
        headers/logger.h

        src/timestamps_model.cpp
        headers/timestamps_model.h
        resources.qrc
)

add_executable(Timer
  ${PROJECT_SOURCES}
)


target_link_libraries(Timer
    PRIVATE Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::QuickControls2
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Qml
    Qt${QT_VERSION_MAJOR}::Multimedia
)




