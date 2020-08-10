function(input, output, session){
  # 
  # country.stat = reactive({
  #   df.tot %>% 
  #   select(country, input$question) %>% 
  #   filter(country==input$country) %>% 
  #   filter(!is.na(input$question)) %>% 
  #   summarise(percent.yes = sum(input$question=="yes")/n())
  # })
  # 
  # global.stat =  reactive({
  #   df.tot %>% 
  #   select(input$question) %>% 
  #   filter(!is.na(input$question)) %>% 
  #   summarise(percent.yes = sum(input$question=="yes")/n())
  # })
  # 
  # region = c("Global Survey", "United States")
  # percent.yes = reactive({c(global.stat, country.stat)})
  # 
  # output$response.by.country = reactive({
  #   renderPlot(
  #   ggplot(data.frame(region,percent.yes)) + geom_col(aes(region, percent.yes, fill=region))
  # )
  # })
  # 
  # output$graph2 = renderPlot(
  #   df.tot %>% 
  #     mutate(year = as.numeric(levels(df.tot$year))[df.tot$year]) %>% 
  #     group_by(year) %>% 
  #     summarise(avg.age = mean(age)) %>%
  #     head() %>% 
  #     ggplot(aes(year, avg.age)) + geom_line()
  # )
}