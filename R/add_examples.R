#' Add examples to the project
#'
#' This function adds an example mainscript, function and data to
#' the project so it becomes clear how one could use it.
#'
#' @param path the path to the project folder
#' @param desc optional character vector with description for project.
#' @param ... currently ignored.
#'
#' @return NULL invisibly
#'
#' @export
add_examples <- function(path, desc, ...){

  script <- system.file("defaults/Examples/Mainscript.R",
                        package = "daprojects")

  if(script == "")
    warning("Mainscript could not be copied.")
  else
    res <- file.copy(script, to = file.path(path,"Mainscript.R"))

  if(!res) warning("Mainscript could not be copied.")


  invisible(NULL)
}