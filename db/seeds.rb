# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# db/seeds.rb

puts "Limpando a base de dados..."
Movie.destroy_all

puts "Criando filmes..."

movies = [
  {
    title: "O Poderoso Chefão",
    overview: "Uma saga sobre a família Corleone e a máfia italiana em Nova York.",
    poster_url: "https://image.tmdb.org/t/p/w500/poderoso_chefao.jpg",
    rating: 9.2
  },
  {
    title: "Os Bons Companheiros",
    overview: "A trajetória de Henry Hill no submundo do crime e da máfia.",
    poster_url: "https://image.tmdb.org/t/p/w500/os_bons_companheiros.jpg",
    rating: 8.7
  },
  {
    title: "Pulp Fiction: Tempo de Violência",
    overview: "Histórias cruzadas de violência e redenção no submundo de Los Angeles.",
    poster_url: "https://image.tmdb.org/t/p/w500/pulp_fiction.jpg",
    rating: 8.9
  },
  {
    title: "Clube da Luta",
    overview: "Dois homens criam um clube de luta secreto para extravasar frustrações.",
    poster_url: "https://image.tmdb.org/t/p/w500/clube_da_luta.jpg",
    rating: 8.8
  },
  {
    title: "A Origem",
    overview: "Um ladrão especializado em invadir sonhos planeja o roubo perfeito.",
    poster_url: "https://image.tmdb.org/t/p/w500/a_origem.jpg",
    rating: 8.8
  },
  {
    title: "12 Homens e uma Sentença",
    overview: "Jurados debatem intensamente a culpa ou a inocência de um jovem acusado.",
    poster_url: "https://image.tmdb.org/t/p/w500/12_homens.jpg",
    rating: 9.0
  },
  {
    title: "A Vida é Bela",
    overview: "Um pai cria jogos imaginários para proteger o filho durante a guerra.",
    poster_url: "https://image.tmdb.org/t/p/w500/a_vida_e_bela.jpg",
    rating: 8.6
  },
  {
    title: "Cidade de Deus",
    overview: "Uma história sobre crimes e oportunidades perdidas na favela carioca.",
    poster_url: "https://image.tmdb.org/t/p/w500/cidade_de_deus.jpg",
    rating: 8.6
  },
  {
    title: "O Senhor dos Anéis: A Sociedade do Anel",
    overview: "Frodo inicia a missão de destruir o Um Anel e salvar a Terra-média.",
    poster_url: "https://image.tmdb.org/t/p/w500/sociedade_do_anel.jpg",
    rating: 8.8
  },
  {
    title: "Forrest Gump: O Contador de Histórias",
    overview: "Um homem simples vivencia eventos marcantes da história americana.",
    poster_url: "https://image.tmdb.org/t/p/w500/forrest_gump.jpg",
    rating: 8.8
  },
  {
    title: "O Grande Hotel Budapeste",
    overview: "As aventuras de um concierge e seu amigo em um lendário hotel europeu.",
    poster_url: "https://image.tmdb.org/t/p/w500/grande_hotel_budapeste.jpg",
    rating: 8.1
  },
  {
    title: "Corra!",
    overview: "Um jovem negro descobre segredos sombrios na família de sua namorada.",
    poster_url: "https://image.tmdb.org/t/p/w500/corra.jpg",
    rating: 7.7
  },
  {
    title: "Parasita",
    overview: "Uma família se infiltra na casa de uma família rica, gerando tensão.",
    poster_url: "https://image.tmdb.org/t/p/w500/parasita.jpg",
    rating: 8.6
  },
  {
    title: "A Viagem de Chihiro",
    overview: "Uma garota entra em um mundo espiritual e precisa salvar seus pais.",
    poster_url: "https://image.tmdb.org/t/p/w500/a_viagem_de_chihiro.jpg",
    rating: 8.6
  },
  {
    title: "Django Livre",
    overview: "Um ex-escravo se une a um caçador de recompensas para salvar sua esposa.",
    poster_url: "https://image.tmdb.org/t/p/w500/django_livre.jpg",
    rating: 8.4
  },
  {
    title: "Star Wars: Uma Nova Esperança",
    overview: "Luke Skywalker se une a aliados para enfrentar o Império Galáctico.",
    poster_url: "https://image.tmdb.org/t/p/w500/star_wars_nova_esperanca.jpg",
    rating: 8.6
  },
  {
    title: "O Rei Leão",
    overview: "Simba enfrenta desafios para se tornar o legítimo rei da savana.",
    poster_url: "https://image.tmdb.org/t/p/w500/o_rei_leao.jpg",
    rating: 8.5
  },
  {
    title: "Vingadores: Ultimato",
    overview: "Os heróis da Marvel se reúnem para enfrentar Thanos em uma batalha final.",
    poster_url: "https://image.tmdb.org/t/p/w500/vingadores_ultimato.jpg",
    rating: 8.4
  },
  {
    title: "O Esquadrão Suicida",
    overview: "Vilões são recrutados para missões quase impossíveis sob supervisão militar.",
    poster_url: "https://image.tmdb.org/t/p/w500/esquadrao_suicida.jpg",
    rating: 7.2
  },
  {
    title: "Mad Max: Estrada da Fúria",
    overview: "Em um deserto pós-apocalíptico, sobreviventes lutam por liberdade.",
    poster_url: "https://image.tmdb.org/t/p/w500/mad_max_fury_road.jpg",
    rating: 8.1
  },
  {
    title: "Rocky: Um Lutador",
    overview: "A história de um boxeador amador que recebe uma chance pelo título.",
    poster_url: "https://image.tmdb.org/t/p/w500/rocky.jpg",
    rating: 8.1
  },
  {
    title: "Alien: O Oitavo Passageiro",
    overview: "A tripulação de uma nave espacial é perseguida por um alienígena mortal.",
    poster_url: "https://image.tmdb.org/t/p/w500/alien.jpg",
    rating: 8.5
  },
  {
    title: "A Princesa Prometida",
    overview: "Uma história de amor e aventura, repleta de duelos e gigantes.",
    poster_url: "https://image.tmdb.org/t/p/w500/princesa_prometida.jpg",
    rating: 8.0
  },
  {
    title: "Blade Runner: O Caçador de Andróides",
    overview: "Num futuro distópico, um policial investiga replicantes rebeldes.",
    poster_url: "https://image.tmdb.org/t/p/w500/blade_runner.jpg",
    rating: 8.1
  },
  {
    title: "Titanic",
    overview: "Um romance proibido nasce a bordo do transatlântico destinado à tragédia.",
    poster_url: "https://image.tmdb.org/t/p/w500/titanic.jpg",
    rating: 7.9
  },
  {
    title: "O Iluminado",
    overview: "Jack Torrance enlouquece em um hotel isolado, ameaçando sua família.",
    poster_url: "https://image.tmdb.org/t/p/w500/o_iluminado.jpg",
    rating: 8.4
  },
  {
    title: "Um Sonho de Liberdade",
    overview: "A amizade entre dois presidiários traz esperança em meio ao desespero.",
    poster_url: "https://image.tmdb.org/t/p/w500/um_sonho_de_liberdade.jpg",
    rating: 9.3
  },
  {
    title: "A Lista de Schindler",
    overview: "A história real de um empresário que salvou centenas de judeus na guerra.",
    poster_url: "https://image.tmdb.org/t/p/w500/lista_de_schindler.jpg",
    rating: 8.9
  },
  {
    title: "Homem-Aranha no Aranhaverso",
    overview: "Miles Morales assume o papel de Homem-Aranha em um multiverso surpreendente.",
    poster_url: "https://image.tmdb.org/t/p/w500/aranhaverso.jpg",
    rating: 8.4
  },
  {
    title: "De Volta Para o Futuro",
    overview: "Um adolescente viaja no tempo e precisa garantir a própria existência.",
    poster_url: "https://image.tmdb.org/t/p/w500/de_volta_para_o_futuro.jpg",
    rating: 8.5
  }
]

movies.each do |movie|
  Movie.create!(movie)
end

