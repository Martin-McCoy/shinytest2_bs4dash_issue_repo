# shinytest2_bs4dash_issue_repo
A small reprex demonstrating some snapshotting issues with shinytest2 when using a bs4Dash layout

There are some snapshots already built in [./tests/testthat/_snaps/](https://github.com/Martin-McCoy/shinytest2_bs4dash_issue_repo/tree/main/tests/testthat/_snaps/mac-4.2/shinytest2) 
but for reprex purposes you can also build new ones with `shinytest2::record_test()`. 

You can see the issue if you run `shinytest2::test_app()` and then the associated `testthat::snapshot_review('shinytest2/')` when the snapshot tests fail. 

The core issue appears to be that there are some small changes to margins/page size between when the recording is performed and when the test is run and snapshots are compared that may be linked to the bs4Dash layout.
