module ApplicationHelper
    def full_title(page_title)
        app_title = "Vocabulary Builder"
        if page_title.empty?
            app_title
        else
            "#{page_title} | #{app_title}"
        end
    end
end
