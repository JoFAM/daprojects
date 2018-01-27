#' set up the directory structure
#'
#' Set up a directory structure for a standard data analyis project.
#'
#' @param path The path is the main path where the directory structure
#' will be created.
#' @param structure a character vector with the relative paths that have
#' to be created.
#' @param recursive logical. Should elements of any path other than the
#' last be created? See also \code{\link[base:files2]{dir.create}}
#'
#' @return a logical vector (invisibly) indicating whether the creation
#' of the directory worked.
#'
#' @examples
#' \dontrun{
#' setup_dirs(getwd(), c("Data/raw","Data/processed","Output"))
#' }
#'
#' @export
setup_dirs <- function(path, structure = c("Data",
                                           "Data_Processed",
                                           "Functions",
                                           "Graphs",
                                           "Reports"),
                       recursive = TRUE){

  if(!dir.exists(path))
    stop(paste0("The path ",path, " does not exist."))

  # create the dirs.
  ndirs <- length(structure)
  out <- logical(ndirs)

  for(i in seq.int(ndirs)){
    out[i] <- dir.create(file.path(path, structure[i]),
               recursive = recursive,
               showWarnings = FALSE)
  }
  invisible(out)

}