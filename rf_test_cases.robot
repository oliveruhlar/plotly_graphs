*** Settings ***
Library  OperatingSystem
Library  Process
*** Variables ***


*** Test Cases ***
Graph temperature BB
    ${result} =  Run Process  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\venv\\Scripts\\python.exe  temperature_lch.py  runserver
    Should Be Empty  ${result.stderr}  msg=${result.stderr}
    Log  ${result.stdout}

Graph networkx
    ${result} =  Run Process  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\venv\\Scripts\\python.exe  networkx_plo.py  runserver
    Should Be Empty  ${result.stderr}  msg=${result.stderr}
    Log  ${result.stdout}

*** Keywords ***

