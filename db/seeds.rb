# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create([
    {username: "test",
    email: "test@email.com",
    password: "test"}
])

user = User.create([
    {username: "Home",
    email: "home@email.com",
    password: "home"}
])

test = User.first


test_game = test.video_games.create(
    game_name: "Pokemon Sword and Shield",
    game_genre: "Role-Playing Game",
    game_rating: "E for Everyone",
    game_platform: "Nintendo Switch",
    year_released: 2019,
    description: "Pokémon Sword[a] and Pokémon Shield[b] are 2019 role-playing video games developed by Game Freak and published by The Pokémon Company and Nintendo for the Nintendo Switch.",
    image_url: "https://projectpokemon.org/home/uploads/monthly_2019_06/large.swordnshield.png.051ae8b21788af441c7493b55ff8ad85.png"
    )

    test_game = test.video_games.create(
        game_name: "Super Mario Sunshine",
        game_genre: "Platform",
        game_rating: "E for Everyone",
        game_platform: "Nintendo Gamecube, Nintendo Switch",
        year_released: 2002,
        description: "The game takes place on the tropical Isle Delfino, where Mario, Toadsworth, Princess Peach and five Toads are taking a vacation. A villain resembling Mario, known as Shadow Mario, vandalizes the island with graffiti and leaves Mario to be wrongfully convicted for the mess. Mario is ordered to clean up Isle Delfino, using a device called the Flash Liquidizer Ultra Dousing Device (F.L.U.D.D.), while saving Princess Peach from Shadow Mario.",
        image_url: "https://upload.wikimedia.org/wikipedia/en/7/78/Super_mario_sunshine.jpg"
        )
    
    test_game = test.video_games.create(
        game_name: "Crash Bandicoot 4:It's About Time",
        game_genre: "Platform",
        game_rating: "E 10+ for Everyone 10 and Up",
        game_platform: "Playstation 5, Playstation 4, Xbox Series X, Xbox One",
        year_released: 2020,
        description: "Main story levels focus on players controlling Crash and Coco, both of whom use identical movesets such as spinning and sliding, alongside new moves to the series such as wall running. In these levels, the characters are aided further by special masks, each of which is rescued during the story and who offers their powers – each level features at least one such mask being available to help traverse obstacles during certain segments, appearing before the player enters and leaving when the segment is traversed. Each mask has a specific property that dictates how it can help players overcome obstacles – for example, phasing objects in and out of existence.[9] Alternate timeline levels focus on players controlling one of three other playable characters during these levels: Doctor Neo Cortex, Dingodile, and Tawna.",
        image_url: "https://upload.wikimedia.org/wikipedia/en/3/39/Crash_Bandicoot_4_Box_Art.jpeg"
        )
    
    

