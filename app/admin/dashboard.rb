ActiveAdmin.register_page "Dashboard" do #

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
    
      content title: "Bienvenido al panel de administración" do

    columns do#
      column do
        panel "Últimos posts" do
          ul do
            Article.last(5).map do |article|
              li link_to(article.title, admin_article_path(article))
            end
          end
        end
      end

      column do#
        panel "Información general" do#
          para "<b>Bienvenido</b> al panel de administración de E4E. Desde acá podés administrar los posts, categorías, autores y mucho más que está por venir.".html_safe
          para "Si necesitás ayuda, contactate con <b>kevin@e4e.la</b>, <b>jgesino@e4e.la</b> o <b>paca@e4e.la</b>".html_safe
        end
      end#
    end#
    end#
end #
