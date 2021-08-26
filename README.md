# Timer

## Task Description
You need to implement a timer graphical desktop application using Qt framework and QML.

The timer must have the following functions:
- Setting of timeout.
- Starting of timer by pressing `Start` button.
- Pausing of timer by pressing `Stop` button.
- Reseting of timer by pressing `Reset` button.
- Saving of current timestamp to timestamps list by pressing `Tap` button. Timestamps list should be displayed somewhere on the application window. Also the should appear scroll bar if list content is too large. Implement `TimestampsModel` and use it in qml as data source.
- Popup modal window should be displayed and alarm sound should be played after timeout. Press `OK` button to close popup window and stop alarm sound.
- Possibility to select desired alarm sound.
- Light/Dark mode, which can be instantly switched by some button.

Add logging of all important events(timer started, paused, reseted, ...)

## Important notes!
1. Do not implement the logic of the timer and logging in QML. This must be implemented in C ++ code. QML should be responsible only for the user interface, ie there should be an interaction between C++ and QML. All business logic should be implemented in C++ classes. The user interface should 'stretch' as the screen resizes. Try to make UI maximally user friendly.
2. You are not allowed to use qt designer, which is provided by Qt Creator for creating UI.
3. Use CMake build system for generating the project. Not QMake!!!
4. All resource files (sounds, qml files, etc...) should be included in `resources.qrc` and used in following way: `qrc:/...`. Do not use local path to any resource!!!

## Required technologies
- C++
- CMake
- Qt (Do not use QtWidgets)
- QML

## Maintainer

- Result
    - [ ] Check ability to set timeout
    - [ ] Pressing of `Start` button should start timer
    - [ ] Pressing of `Stop` button should pause timer
    - [ ] Pressing of `Reset` button should clear timestamp list and reset timer.
    - [ ] Pressing of `Tap` button should save the current timestamp into some place in application window.
    - [ ] Place in window where timestamps are shown should provide scroll bar if list of content is too large.
    - [ ] If timer is started and current timer's time become equal to timeout:
        - [ ] The alarm sound shold be played.
        - [ ] Timer stops after timeout.
        - [ ] Popup modal window with message should be shown. 
    - [ ] Interface 'stretches' as the screen resizes.
    - [ ] Light/dark mode should be implemented using switch button in application window.
- Code
    - [ ] CMake was used for building project.
    - [ ] Provided interfaces should be implemented and can be extended.
    - [ ] Custom logger should be implemented.
    - [ ] Timestamp model should be implemented in C++ side.
    - [ ] QML components should be implemented in separate files (if possible).
