app <- ShinyDriver$new("../../", loadTimeout = 100000)
app$snapshotInit("multi_ems_all")

app$setInputs(ems_ids = "\"1401030\", \"1401377\"",
              get_data = "click", timeout_ = 50000)
app$setInputs(box = "Results")
app$setInputs(data_rows_current = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), allowInputNoBinding_ = TRUE,
              wait_ = FALSE, values_ = FALSE)
app$setInputs(data_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13), allowInputNoBinding_ = TRUE,
              wait_ = FALSE, values_ = FALSE)
app$snapshot()
app$setInputs(box = "Plots")
app$snapshot()
app$setInputs(box = "About")
app$snapshot()