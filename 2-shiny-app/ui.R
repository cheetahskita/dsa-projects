fluidPage(
  titlePanel("Exploring Mental Health in Today's Workplace"),
  selectizeInput(inputId = "year",
                 label = "Choose Year",
                 choices = unique(df.tot$year)),
  plotOutput("graph1"),
  plotOutput("graph2")
)