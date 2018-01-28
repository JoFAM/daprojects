#' Set up a project for data analysis.
#'
#' This function sets up the project template for a simple data analysis.
#' It creates the directory structure, adds a file ProjectInfo.md and
#' sets up the main script.
#'
#' This function is the binding in the dcf file that contains the project
#' definition.
#'
#' @param path a character vector with the path where the project should be created.
#' @param desc a character vector with a short description of the project.
#' This will be used as title.
#' @param readme a logical value indicating whether or not the file README.md
#' should be created
#' @param addexamples a logical value indicating whether or not example
#' files should be copied into the new project.
#' @param ... extra arguments captured from the project wizard.
#' currently ignored.
#'
#' @return NULL invisibly. This function is only called for its side effects.
#'
#' @export
setup_dap <- function(path,
                      desc = character(0),
                      readme = TRUE,
                      addexamples = FALSE,
                      ...){
  # Ensure path exists. Not sure whether this is necessary.
  if(!dir.exists(path)){
    dir.create(path, recursive = TRUE, showWarnings = FALSE)
  }

  # Setup the directory structure
  setup_dirs(path)

  # Add files
  if(readme) add_readme(path, desc)
  if(addexamples){
    add_examples(path, desc)
  }

  invisible(NULL)
}