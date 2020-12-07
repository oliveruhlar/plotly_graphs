*** Settings ***
Library  OperatingSystem
Library  Process
*** Variables ***


*** Test Cases ***
Graph temperature BB
    File Should Not Exist  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\temp_lch.html
    ${result} =  Run Process  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\venv\\Scripts\\python.exe  temperature_lch.py  runserver
    Should Be Empty  ${result.stderr}  msg=${result.stderr}
    File Should Exist  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\temp_lch.html
    Log  ${result.stdout}

Graph networkx
    File Should Not Exist  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\netx_plo.html
    ${result} =  Run Process  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\venv\\Scripts\\python.exe  networkx_plo.py  runserver
    Should Be Empty  ${result.stderr}  msg=${result.stderr}
    File Should Exist  C:\\Users\\oliver.uhlar\\Desktop\\Projects\\plotly_graphs\\netx_plo.html
    Log  ${result.stdout}

*** Keywords ***

