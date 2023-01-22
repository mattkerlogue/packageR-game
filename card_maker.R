library(htmltools)

card_maker <- function(card_id, card_data = card_data) {
  
  card_info <- card_data |> dplyr::filter(card_id == !!card_id) |>
    as.list()
  
  tagList(
    tags$table(
      class = c(card_info$card_group, card_info$card_type),
      tags$thead(
        tags$tr(
          tags$th(card_info$title, colspan = 2),
        ),
      ),
      tags$tbody(
        tags$tr(
          tags$td(
            includeHTML(paste0("imgs/svg/", card_info$icon, ".svg")),
            class="logo",
            colspan = 2
          )
        ),
        tags$tr(
          tags$td(
            card_info$description,
            colspan = 2
          )
        ),
        tags$tr(
          tags$td(
            "ACTION:",
            class = "action_label"
          ),
          tags$td(
            card_info$action,
            class = "action_detail"
          ),
          class = c("action", ifelse(is.na(card_info$action), "remove", "show"))
        ),
        tags$tr(
          tags$td(
            ifelse(
              card_info$code_value > 1, 
              paste(card_info$code_value, "UNITS OF CODE"),
              paste(card_info$code_value, "UNIT OF CODE")
            ),
            class = "code_value",
            colspan = 2
          ),
          class = c("code_units", ifelse(is.na(card_info$code_value), "remove", "show"))
        ),
        tags$tr(
          tags$td(
            paste("ERROR VALUE:", card_info$error_value),
            class = "error_value",
            colspan = 2
          ),
          class = c("error_units", ifelse(is.na(card_info$error_value), "remove", "show"))
        )
      )
    )
  )
  
}

card_back <- function() {
  
  tagList(
    tags$table(
      class = "card_back",
      tags$tbody(
        tags$tr(
          tags$td(
            includeHTML("imgs/svg/packageR_logo.svg"),
            class="game_logo"
          )
        )
      )
    )
  )
  
}

insert_icon <- function(icon, class = "card_icon") {
  
  if (length(icon) == 1) {
    tags$div(
      includeHTML(paste0("imgs/svg/", icon, ".svg")),
      class = class
    )
  } else {
    tags$div(
      purrr::map(
        icon,
        ~tags$div(
          includeHTML(paste0("imgs/svg/", .x, ".svg")),
          class = class
        )
      ),
      class = "icon_container"
    )
  }

}
