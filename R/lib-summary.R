#' R library summary
#'
#' Provides a brief summary of the package libraries on
#' your machine.
#'
#' @param sizes A logical value indicating whether to calculate sizes.
#'  Default `False`.
#'
#' @return A `data.frame` containing the count of packages in each of the
#'      of the user's libraries. If `sizes = TRUE` , a column of library
#'      sizes will be added.
#' @export
#'
#' @examples
#' lib_summary()
#'
lib_summary <- function(sizes = FALSE){

  if(!is.logical(sizes)){
    stop("sizes must be a logical value (TRUE/FALSE)")
  }

  pkgs <- utils::installed.packages()

  pkg_tbl <- table(pkgs[, "LibPath"])

  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)

  names(pkg_df) <- c("Library", "n_packages")

  if(isTRUE(sizes)){
    pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x){
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      },
      FUN.VALUE = numeric(1)
    )
  }


  pkg_df
}

