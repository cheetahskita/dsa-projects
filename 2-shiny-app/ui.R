dashboardPage(
  
  dashboardHeader(
    title = "Exploring Mental Health in the Workplace",
    titleWidth = 400
    ),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home", icon = icon('home')),
      menuItem("Global", tabName = "global", icon = icon("globe")),
      menuItem("National", tabName = "national", icon=icon('flag-usa')),
      menuItem("Data", tabName = "data", icon = icon("database"))
      )
    ),

  dashboardBody(
    
    tabItems(
      
      tabItem(
        tabName = "home",
        h2("Home"),
        p("The country has recently become more interested in mental health."),
        img(src = "images/image1.jpg"),
        p("The purpose of this dashboard is to analyze trends in a recent survey on mental health."),
        p("The survey was collected online by Open Sourcing Mental Illess, Ltd."),
        p("Some of the survey questions were:"),
        p(" - Basic demographic info for age, gender"),
        p(" - Basic comapny info like company size"),
        p(" - Do you have a mental illness?"),
        p(" - Does your mental illness affect your job?"),
        p(" - Would you feel comfortable talking with a coworker about your mental illness?")
        ),
      
      tabItem(
        tabName = "global",
        fluidPage(
          h2("Global Results"),
          tabsetPanel(
            tabPanel("By Country",
                     h4("Compare the survey responses of a given country to the global average responses."),
                     selectInput("country", "Choose Country:", country.list),
                     selectInput("question", "Choose Response:", response.list),
                     img(src = "images/image2.jpg")),
            tabPanel("By Demographic",
                     h4("Compare the survey responses across different demographics"),
                     selectInput("dem", "Category", c("age", "gender")),
                     selectInput("question", "Choose Response:", response.list),
                     img(src = "images/image3.jpg")),
            tabPanel("By Company",
                     h4("Compare the survey responses across different types of companies"),
                     selectInput("dem", "Category", c("type", "size")),
                     selectInput("question", "Choose Response:", response.list),
                     img(src = "images/image4.jpg"))
          )
        )
      ),
      
      tabItem(
        tabName = "national",
        h2("National Results"),
        h4("Compare the survey results in America with National Mental Health Statistics"),
        selectInput("stat","National Statistic:", c("Suicide", "Depression", "Anxiety"),),
        selectInput("question","Choose Response:", response.list),
        img(src = "images/image5.jpg")
      ),
      
      tabItem(
        tabName = "data",
        fluidPage(
          h4("Sources of Data"),
          tags$a(href = "https://osmihelp.org/research", "OSMI Website"),
          p("Survey results were downloaded from the OSMI website. These works are licensed under a Creative Commons Attribution-ShareAlike 4.0 International."),
          p("National statistics we downloaded from the Department of Health and Human Services 2018
            National Survey on Druge Use and Health, which can be downloaded from their website:"),
          tags$a(href = "https://www.samhsa.gov/data/sites/default/files/cbhsq-reports/NSDUHNationalFindingsReport2018/NSDUHNationalFindingsReport2018.pdf",
                 "Access Report")
        )
      )
    )
  )
)