*** Settings ***
Documentation    Robotic Process Automation - Verification Test

Library  SeleniumLibrary

*** Variables ***
${url}       https://jira.linx.com.br/secure/Dashboard.jspa
${browser}   chrome
${PASSWORD}  \************

*** Test Cases ***
Jira Software - Login And Issues Creation (Task)
    open browser   ${url}   ${browser}
    #maximize browser window
    Login
    Open Project
    Workflow Management
    Open Backlog
    Creating Resumed Issue 1
    Creating Resumed Issue 2
    Creating Resumed Issue 3
    Creating Issue 1
    Creating Issue 2
    Only My Pendencies
    Issue Review
    Drag and Drop Step
    Init Sprint
    Drag and Drop Step 2
    Complete Sprint
    Reopen Sprint
    Complete Sprint Again
    View Reports

*** Keywords ***
Login
    input text  id:login-form-username   xcenter_automacao
    input text   id:login-form-password  ${PASSWORD}
    click element  id:login
    sleep  5

Open Project
    set selenium speed   0.5
    click link  id:browse_link
    sleep   1
    click link  id:admin_main_proj_link_lnk
    sleep   2

Workflow Management
    click element   id:board-tools-section-button    #Quadro rápido
    sleep  2
    click link   xpath://*[@id="AJS_DROPDOWN_LISTITEM__55"]/a    #Configurar
    sleep  2
    click link   xpath://*[@id="ghx-config-nav"]/li[2]/a       #Colunas
    sleep   2
    click element  id:ghx-config-addcolumn       #Adicionar Coluna
    sleep   3
    input text  name   Quality Assurance (QA)      #Texto
    sleep   2
    click element   xpath://*[@id="ghx-mapping"]/div[3]/ul/li[1]/div[1]/div[2]    #Excluir
    sleep   2
    click link  id:back-to-board    #Voltar
    sleep   3

Open Backlog
    click link   xpath://*[@id="content"]/div[1]/div/div[1]/nav/div/div[2]/ul/li[1]/a
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    sleep  5

Creating Resumed Issue 1  #Story
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[78]/div[1]/button
    input text   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[78]/div[2]/form/div[2]/textarea     Upgrade documentation and push through channels
    Press Keys   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[78]/div[2]/form/div[2]/textarea   ENTER
    sleep   3
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[77]
    sleep   2
    click link    xpath://*[@id="assign-to-me"]
    click element   xpath://*[@id="ghx-detail-head"]/div[1]/div[2]
    sleep   1

Creating Resumed Issue 2   #Bug
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[79]/div[1]/button
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[79]/div[2]/form/div[1]/div/button
    click link    xpath://*[@id="iic-issue-type-dropdown-c11"]/div/ul/li[7]/a
    input text   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[79]/div[2]/form/div[2]/textarea     Fix broken link on careers page
    Press Keys   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[79]/div[2]/form/div[2]/textarea   ENTER
    sleep   3
    select from list by label   id:customfield_11200    Bravos
    scroll element into view  id:issuelinks-linktype
    select radio button   customfield_10205     11632
    click element   id:create-issue-submit
    sleep   2
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[78]
    sleep   2
    click link   xpath://*[@id="assign-to-me"]
    click element   xpath://*[@id="ghx-detail-head"]/div[1]/div[2]

Creating Resumed Issue 3  #Task
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[80]/div[1]/button
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[80]/div[2]/form/div[1]/div/button
    click link    xpath://*[@id="iic-issue-type-dropdown-c11"]/div/ul/li[2]/a
    input text   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[80]/div[2]/form/div[2]/textarea     Upgrade documentation and push through channels
    Press Keys   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[80]/div[2]/form/div[2]/textarea   ENTER
    sleep   3
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[79]
    sleep   2
    click link   xpath://*[@id="assign-to-me"]
    click element   xpath://*[@id="ghx-detail-head"]/div[1]/div[2]
    sleep    5

Creating Issue 1   #Task
    click link  id:create_link
    sleep   7    #Choose the item type

    input text  id:summary   I need you to place the 'Help' icon on all tabs of the Software  #Resumo

    select from list by label   id:customfield_10802    Softpharma    #Tribo - Squad

    input text  id:description   Place the icon so that our customers can access more information, if they need it, at any stage they are using the application.  #Descrição

    sleep   7  # Choose the priority

    select from list by label   id:customfield_11200   Gestao   #Produto

    click link  id:assign-to-me-trigger

    scroll element into view  id:timetracking_remainingestimate

    input text  id:timetracking_originalestimate    3w 2d 12h  #Tempo estimado
    input text  id:timetracking_remainingestimate   3w 7d 12h   #Tempo restante

    input text  id:duedate   12/12/2020   #Data Ficar Pronto

    input text  id:customfield_10303  12/06/2020  #Target start
    input text  id:customfield_10304  12/12/2020  #Target end

    scroll element into view  id:fixVersions-multi-select

    select checkbox  id:qf-create-another

    click element  id:create-issue-submit
    sleep   5

Creating Issue 2    #Task
    sleep   7    #Choose the item type

    input text  id:summary   I need you to place the 'Help' icon on all tabs of the Software  #Resumo

    select from list by label   id:customfield_10802    Plugpharma   #Tribo - Squad

    input text  id:description   Place the icon so that our customers can access more information, if they need it, at any stage they are using the application.  #Descrição

    sleep   7  # Choose the priority

    select from list by label   id:customfield_11200   Bravos   #Produto

    scroll element into view  id:timetracking_remainingestimate

    input text  id:timetracking_originalestimate    2w 4d 8h  #Tempo estimado
    input text  id:timetracking_remainingestimate   4w 1d 6h   #Tempo restante

    input text  id:duedate   12/12/2020   #Data Ficar Pronto

    input text  id:customfield_10303  12/06/2020  #Target start
    input text  id:customfield_10304  12/12/2020  #Target end

    scroll element into view  id:fixVersions-multi-select

    unselect checkbox  id:qf-create-another

    click element  id:create-issue-submit
    sleep   5

Only My Pendencies
    click link   xpath://*[@id="js-plan-quickfilters"]/dd[1]/a

Issue Review
    click element   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[2]
    sleep  3
    scroll element into view   xpath://*[@id="subtasks"]/div[2]/div[2]/button
    sleep  3
    scroll element into view   xpath://*[@id="ghx-tab-com-xiplink-jira-git-jira_git_plugin-agile-git-commits"]/div[2]/div/div/div[5]/div/div/a
    sleep  3
    click element   xpath://*[@id="ghx-detail-head"]/div[1]/div[2]

Drag and Drop Step
    drag and drop   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[2]    xpath://*[@id="ghx-content-group"]/div[1]/div/div[2]/div[1]/div[2]/div
    drag and drop   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[2]    xpath://*[@id="ghx-content-group"]/div[1]/div/div[2]/div[1]/div[2]/div
    drag and drop   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[2]    xpath://*[@id="ghx-content-group"]/div[1]/div/div[2]/div[1]/div[2]/div
    drag and drop   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[2]    xpath://*[@id="ghx-content-group"]/div[1]/div/div[2]/div[1]/div[2]/div
    drag and drop   xpath://*[@id="ghx-content-group"]/div[2]/div[2]/div[2]/div[2]    xpath://*[@id="ghx-content-group"]/div[1]/div/div[2]/div[1]/div[2]/div

Init Sprint
    click element   xpath://*[@id="ghx-content-group"]/div[1]/div/div[1]/div/div[4]/div[1]/button   #Iniciar Sprint
    input text   id:sprint-goal    Teste de Automação
    click element   xpath://*[@id="ghx-dialog-start-sprint"]/div/div[2]/button
    sleep   5

Drag and Drop Step 2
    # To Do - In Progress
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[1]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[1]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[1]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]
    # In Progress - Done
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[3]
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[3]
    # To Do - In Progress
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[1]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[1]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]
    # In Progress - Done
    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[3]

    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[3]
    sleep   1
    select from list by label   id:resolution   Concluída
    click element     xpath://*[@id="issue-workflow-transition-submit"]
    sleep  2

    drag and drop  xpath://*[@id="ghx-pool"]/div[2]/ul/li[2]/div[1]     xpath://*[@id="ghx-pool"]/div[2]/ul/li[3]
    sleep  5

Complete Sprint
    click link      xpath://*[@id="ghx-complete-sprint"]
    sleep   3
    click element   xpath://*[@id="ghx-dialog-complete-sprint"]/div/div[2]/button
    sleep   3

Reopen Sprint
    click link    xpath://*[@id="sprint-actions-trigger"]
    sleep  3
    click link       xpath://*[@id="sprint-reopen"]
    sleep  3
    click element    xpath://*[@id="ghx-dialog-reopen-sprint"]/div/div[2]/button
    sleep  5

Complete Sprint Again
    click link      xpath://*[@id="ghx-complete-sprint"]
    sleep   2
    click element   xpath://*[@id="ghx-dialog-complete-sprint"]/div/div[2]/button
    sleep   2
    click link      xpath://*[@id="js-create-page-form"]/div/a
    sleep    5

View Reports
    go to   https://jira.linx.com.br/projects/TREINO?selectedItem=com.atlassian.jira.jira-projects-plugin:report-page
    sleep   3
    scroll element into view  xpath://*[@id="sidebar-page-container"]/section/div/ul[2]/li[7]/a
    sleep   3
    scroll element into view  xpath://*[@id="footer-logo"]/a
    sleep   3
    execute javascript  window.scrollTo(0, -document.body.scrollHeight)
