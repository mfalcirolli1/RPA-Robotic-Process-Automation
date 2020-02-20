# Execute multiples files (one at a time)           - robot "foldername"\
# Execute all files at the folder (one at a time)   - robot *.robot
# Execute with abbreviated filename                 - robot par*.robot
# Execute files at the same time                    - pabot --processes 3 RFT\*.robot
# Create a folder with log, output and report files - pabot --processes 2 --outputdir Results RFT\*.robot
# Create .exe tkinter interface without CMD window  - pyinstaller –onefile -w script.py

*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test
