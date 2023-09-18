lib_summary <- function(){

  pkgs <- utils::installed.packages()

  pkg_tbl <- table(pkgs[, "LibPath"])

  pkg_df <- as.data.frame(pkg_tbl, stringAsFactors = FALSE)

  names(pkg_df) <- c("Library", "n_packages")

  pkg_df
}

