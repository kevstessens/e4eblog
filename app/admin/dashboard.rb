ActiveAdmin.register_page "Dashboard" do #

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
    
    columns do#
      column do
        panel "Últimos posts" do
          ul do
            Article.recent(5).map do |article|
              li link_to(article.title, admin_article_path(article))
            end
          end
        end
      end

      column do#
        panel "Información general" do#
          para "Bienvenido al panel de administración de E4E. Desde acá podés administrar los posts, categorías, autores y mucho más que está por venir."
          para "Si necesitás ayuda, contactate con kevin@e4e.la, jgesino@e4e.la o paca@e4e.la"
        end
      end#
    end#
end #
