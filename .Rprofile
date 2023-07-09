if (nzchar(system.file(package = "cli"))) {
  cli::cli_alert_info(R.version.string)
  cli::cli_alert_warning(paste0("Config '", cli::col_green("~/.Rprofile"), "' was loaded!"))
} else {
  message(R.version.string)
  message("Config '~/.Rprofile' was loaded!")
}

source("renv/activate.R")

options(
  languageserver.formatting_style = function(options, ...) {
    transformers <- styler::tidyverse_style(indent_by = options$tabSize, ...)
    transformers$indention$update_indention_ref_fun_dec <- NULL
    transformers$indention$unindent_fun_dec <- NULL
    transformers$line_break$remove_line_breaks_in_fun_dec <- NULL
    transformers
  },
  knitr.progress.fun = function(total, labels) {
    id = cli::cli_progress_bar(
      total = total, .auto_close = FALSE
    )
    list(
      update = function(i) {
        cli::cli_progress_update(id = id)
      },
      done = function() {
        cli::cli_process_done(id)
      }
    )
  }
)

Sys.setenv(CHROMOTE_CHROME = "/Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser")

if (interactive()) {
  options(
    repos = c(
      "CRAN" = if (is.null(getOption("repos")[["CRAN"]]) || getOption("repos")[["CRAN"]] %in% "@CRAN@") {
        "https://cran.r-project.org/"
      } else {
         getOption("repos")[["CRAN"]]
      }
    ),
    width = 150,
    menu.graphics = FALSE,
    reprex.advertise = FALSE,
    usethis.protocol = "https",
    usethis.full_name = "Mickaël Canouil",
    usethis.description = list(
    `Authors@R` = paste0(
        "person(",
          'given = "Mickaël", ',
          'family = "Canouil", ',
          'role = c("aut", "cre"), ',
          'email = "pro@mickael.canouil.dev", ',
          'comment = c(ORCID = "0000-0002-3396-454")',
        ")"
      ),
      Version = "0.0.0.9000"
    )
  )

  if (nzchar(system.file(package = "prompt"))) prompt::set_prompt(prompt::prompt_git)
}
