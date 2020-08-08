function(input, output){
  
  output$graph1 = renderPlot(
    df.tot %>% 
      select(1, 2) %>%
      filter(year==input$year) %>%
      ggplot(aes(age, fill=year)) + geom_bar()
  )
  
  output$graph2 = renderPlot(
    df.tot %>% 
      mutate(year = as.numeric(levels(df.tot$year))[df.tot$year]) %>% 
      group_by(year) %>% 
      summarise(avg.age = mean(age)) %>%
      head() %>% 
      ggplot(aes(year, avg.age)) + geom_line()
  )
}