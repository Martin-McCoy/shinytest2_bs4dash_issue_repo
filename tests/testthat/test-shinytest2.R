library(shinytest2)

test_that("{shinytest2} recording: shinytest2_ui_margin_problem_reprex", {
  app <- AppDriver$new(variant = platform_variant(), name = "shinytest2_ui_margin_problem_reprex", 
      height = 1484, width = 1293)
  app$expect_screenshot()
  app$set_inputs(sidebarId = FALSE)
  app$expect_screenshot()
  app$set_inputs(sidebarId = TRUE)
  app$set_inputs(slider = 18)
  app$expect_screenshot()
  app$set_inputs(slider = 83)
  app$expect_screenshot()
})
