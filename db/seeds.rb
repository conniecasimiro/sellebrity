require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Celeb.destroy_all
User.destroy_all

user1 = User.new(
  first_name: Faker::Name.first_name,
  last_name:  Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456,
  bio: Faker::TvShows::Community.quotes
)
user1.save!

Celeb.create!(
  first_name: "Taylor",
  last_name:  "Swift",
  service:  "Singer, Songwriter, Musician, Actor",
  bio:  "Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Her discography spans multiple genres and her narrative songwriting—often inspired by her personal life—has received critical praise and widespread media coverage. Born in West Reading, Pennsylvania, Swift moved to Nashville, Tennessee, at age 14 to become a country artist. She signed a songwriting deal with Sony/ATV Music Publishing in 2004 and a recording contract with Big Machine Records in 2005. Her 2006 self-titled debut album made her the first female country singer to write or co-write a US platinum-certified album entirely.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/191125_Taylor_Swift_at_the_2019_American_Music_Awards_%28cropped%29.png/440px-191125_Taylor_Swift_at_the_2019_American_Music_Awards_%28cropped%29.png",
  instagram_url: "https://www.instagram.com/taylorswift/?hl=en",
  price:  rand(250..50000),
  user_id: user1.id
)

Celeb.create!(
  first_name: "John",
  last_name:  "Travolta",
  service:  "Actor, Singer, Dancer",
  bio:  "John Joseph Travolta (born February 18, 1954) is an American actor. He came to public attention during the 1970s, appearing on the television sitcom Welcome Back, Kotter (1975–1979) and starring in the box office successes Carrie (1976), Saturday Night Fever (1977), Grease (1978), and Urban Cowboy (1980). His acting career declined throughout the 1980s, but he enjoyed a resurgence in the 1990s with his role in Pulp Fiction (1994), and went on to star in films including Get Shorty (1995), Broken Arrow (1996), Phenomenon (1996), Face/Off (1997), A Civil Action (1998), Primary Colors (1998), Hairspray (2007), and Bolt (2008).",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/John_Travolta_Cannes_2018_%28cropped%29.jpg/440px-John_Travolta_Cannes_2018_%28cropped%29.jpg",
  instagram_url: "https://www.instagram.com/johntravolta/?hl=en",
  price:  rand(250..50000),
  user_id: user1.id
)

Celeb.create!(
  first_name: "Tom",
  last_name:  "Jones",
  service:  "Actor, Musician, Singer",
  bio:  "Sir Thomas Jones Woodward OBE (born 7 June 1940), known professionally as Tom Jones, is a Welsh singer. His career began with a string of top-ten hits in the mid-1960s. He has toured regularly, with appearances in Las Vegas (1967–2011). Jones's voice has been described by AllMusic as a 'full-throated, robust baritone'",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Sir_Tom_Jones_at_The_Queen%27s_Birthday_Party_%28cropped-2%29.jpg/440px-Sir_Tom_Jones_at_The_Queen%27s_Birthday_Party_%28cropped-2%29.jpg",
  instagram_url: "https://www.instagram.com/realsirtomjones/?hl=en",
  price:  rand(250..50000),
  user_id: user1.id
)

Celeb.create!(
  first_name: "Megan",
  last_name:  "Fox",
  service:  "Model, Actor",
  bio:  "Megan Denise Fox (born May 16, 1986) is an American actress and model. Fox made her acting debut in the family film Holiday in the Sun (2001), which was followed by numerous supporting roles in film and television, such as the teen musical comedy Confessions of a Teenage Drama Queen (2004), as well as a starring role in the ABC sitcom Hope & Faith (2004–2006). Her breakout role was as Mikaela Banes in the blockbuster action film Transformers (2007), which she reprised in its sequel Transformers: Revenge of the Fallen (2009). She also portrayed the titular character in the horror comedy Jennifer's Body (2009), starred as April O'Neil in the superhero action film Teenage Mutant Ninja Turtles (2014) and its sequel Teenage Mutant Ninja Turtles: Out of the Shadows (2016), and starred as Reagan Lucas in the fifth and sixth seasons of the Fox sitcom New Girl (2016–2017).",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Megan_Fox_%2851914406561%29_%28cropped%29.jpg/440px-Megan_Fox_%2851914406561%29_%28cropped%29.jpg",
  instagram_url: "https://www.instagram.com/meganfox/?hl=en",
  price:  rand(250..50000),
  user_id: user1.id
)

user2 = User.new(
  first_name: Faker::Name.first_name,
  last_name:  Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456,
  bio: Faker::TvShows::Community.quotes
)
user2.save!

Celeb.create!(
  first_name: "Miley",
  last_name:  "Cyrus",
  service:  "Actor, Singer, Songwriter, Dancer",
  bio:  "Miley Ray Cyrus (born Destiny Hope Cyrus on November 23, 1992) is an American singer, songwriter, and actress. Known for her distinctive raspy voice, her music incorporates elements of varied styles and genres, including pop, country pop, hip hop, experimental, and rock. She has attained the most US Billboard 200 top-five albums in the 21st century by a female artist, with a total of thirteen entries.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Miley_Cyrus_Primavera19_-226_%2848986293772%29_%28cropped%29.jpg/440px-Miley_Cyrus_Primavera19_-226_%2848986293772%29_%28cropped%29.jpg",
  instagram_url: "https://www.instagram.com/mileycyrus/?hl=en",
  price:  rand(250..50000),
  user_id: user2.id
)

Celeb.create!(
  first_name: "Dwayne",
  last_name:  "Johnson",
  service:  "Actor, Wrestler",
  bio:  "Dwayne Douglas Johnson (born May 2, 1972), also known by his ring name The Rock,[3] is an American actor and former professional wrestler. Widely regarded as one of the greatest professional wrestlers of all time,[6][7] he was integral to the development and success of the WWE during the Attitude Era, an industry boom period in the late 1990s and early 2000s. Johnson wrestled for WWF/E for eight years prior to pursuing an acting career. His films have grossed over $3.5 billion in North America and over $10.5 billion worldwide,[8] making him one of the world's highest-grossing and highest-paid actors.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Dwayne_Johnson_2014_%28cropped%29.jpg/440px-Dwayne_Johnson_2014_%28cropped%29.jpg",
  instagram_url: "https://www.instagram.com/therock/?hl=en",
  price:  rand(250..50000),
  user_id: user2.id
)

Celeb.create!(
  first_name: "Margot",
  last_name:  "Robbie",
  service:  "Actor, Producer",
  bio:  "Margot Elise Robbie (born 2 July 1990) is an Australian actress and producer. Known for her roles in both blockbusters and independent films, she has received several accolades, including nominations for two Academy Awards, three Golden Globe Awards, and five British Academy Film Awards. Time magazine named her one of the 100 most influential people in the world in 2017 and she was ranked as one of the world's highest-paid actresses by Forbes in 2019.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/SYDNEY%2C_AUSTRALIA_-_JANUARY_23_Margot_Robbie_arrives_at_the_Australian_Premiere_of_%27I%2C_Tonya%27_on_January_23%2C_2018_in_Sydney%2C_Australia_%2825980751148%29_%28cropped%29.jpg/440px-thumbnail.jpg",
  instagram_url: "https://www.instagram.com/margotrobbieofficial/?hl=en",
  price:  rand(250..50000),
  user_id: user2.id
)

Celeb.create!(
  first_name: "Kylie",
  last_name:  "Jenner",
  service:  "Socialite, Businesswoman",
  bio:  "Kylie Kristen Jenner (born August 10, 1997)[2] is an American media personality, socialite, and businesswoman. She starred in the E! reality television series Keeping Up with the Kardashians from 2007 to 2021 and is the founder and owner of cosmetic company Kylie Cosmetics. She is the third-most-followed person on Instagram.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Kylie_Jenner_in_2021.jpg/440px-Kylie_Jenner_in_2021.jpg",
  instagram_url: "https://www.instagram.com/kyliejenner/?hl=en",
  price:  rand(250..50000),
  user_id: user2.id
)

user3 = User.new(
  first_name: Faker::Name.first_name,
  last_name:  Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456,
  bio: Faker::TvShows::Community.quotes
)
user3.save!

Celeb.create!(
  first_name: "Cristiano",
  last_name:  "Ronaldo",
  service:  "Football player, Fashion entrepreneur",
  bio:  "Cristiano Ronaldo dos Santos Aveiro(born 5 February 1985) is a Portuguese professional footballer who plays as a forward for Premier League club Manchester United and captains the Portugal national team. Widely regarded as one of the greatest players of all time, Ronaldo has won five Ballon d'Or awards[note 3] and four European Golden Shoes, the most by a European player. He has won 32 trophies in his career, including seven league titles, five UEFA Champions Leagues, and the UEFA European Championship. Ronaldo holds the records for most appearances (183), goals (140), and assists (42) in the Champions League, goals in the European Championship (14), international goals (117), and international appearances by a European (191). He is one of the few players to have made over 1,100 professional career appearances, and has scored over 800 official senior career goals for club and country.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/440px-Cristiano_Ronaldo_2018.jpg",
  instagram_url: "https://www.instagram.com/cristiano/?hl=en",
  price:  rand(250..50000),
  user_id: user3.id
)

Celeb.create!(
  first_name: "Macaulay",
  last_name:  "Culkin",
  service:  "Actor",
  bio:  "Macaulay Macaulay Culkin Culkin (born Macaulay Carson Culkin; August 26, 1980)[1] is an American actor. Often regarded as one of the most successful child actors of the 1990s,[2] he was placed 2nd on VH1's list of the '100 Greatest Kid-Stars'. Culkin rose to prominence as a child actor starring as Kevin McCallister in the first two films of the Home Alone film series (1990 and 1992), for which he was nominated for the Golden Globe Award for Best Actor – Motion Picture Musical or Comedy. He also starred in the films My Girl (1991), The Good Son (1993), The Nutcracker (1993), Getting Even with Dad (1994), The Pagemaster (1994), and Richie Rich (1994).",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Macaulay_Culkin_1991_B.jpg/440px-Macaulay_Culkin_1991_B.jpg",
  instagram_url: "https://www.instagram.com/culkamania/?hl=en",
  price:  rand(250..5000),
  user_id: user3.id
)

Celeb.create!(
  first_name: "Samuel",
  last_name:  "Jackson",
  service:  "Actor, Producer",
  bio:  "Samuel Leroy Jackson (born December 21, 1948) is an American actor and producer who holds both American and Gabonese citizenship. One of the most widely recognized actors of his generation, the films in which he has appeared have collectively grossed over $27 billion worldwide, making him the second highest-grossing actor of all time.[a] The Academy of Motion Picture Arts and Sciences gave him an Academy Honorary Award in 2022 as 'A cultural icon whose dynamic work has resonated across genres and generations and audiences worldwide'",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/SamuelLJackson.jpg/440px-SamuelLJackson.jpg",
  instagram_url: "https://www.instagram.com/samuelljackson/?hl=en",
  price:  rand(250..50000),
  user_id: user3.id
)

Celeb.create!(
  first_name: "Kanye",
  last_name:  "West",
  service:  "Record producer, Songwriter, Singer",
  bio:  "Ye[a] (born June 8, 1977) is an American rapper, songwriter, record producer, and fashion designer. He is widely regarded as one of the most influential hip hop artists and producers and as one of the greatest musicians of his generation.[5][6][7] In 2022, West was dropped by his record and fashion labels after making a series of antisemitic remarks.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Kanye_West_at_the_Met_Gala_in_2019_2.png/440px-Kanye_West_at_the_Met_Gala_in_2019_2.png",
  instagram_url: "https://www.instagram.com/kanyewest/?hl=en",
  price:  rand(250..50000),
  user_id: user3.id
)

Celeb.create!(
  first_name: "Percy",
  last_name:  "Pendragon",
  service:  "Singer",
  bio:  "Worked as a night auditor messing around in Unity. Than I suddenly became an adult, and I hit a glass ceiling salary limit with what I was doing. After Le Wagon, I want to have the skills and job to support my current family, and be able to save enough to start my own!",
  photo_url:  "https://avatars.githubusercontent.com/u/112077354?v=4",
  instagram_url: "https://www.instagram.com/playboy/",
  price:  rand(250..50000),
  user_id: user3.id
)

user4 = User.new(
  first_name: Faker::Name.first_name,
  last_name:  Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456,
  bio: Faker::TvShows::Community.quotes
)
user4.save!

Celeb.create!(
  first_name: "Ariana",
  last_name:  "Grande",
  service:  "Actor, Singer, Songwriter",
  bio:  "Ariana Grande-Butera (born June 26, 1993) is an American singer, songwriter, and actress. Her four-octave vocal range has received critical acclaim, and her personal life has been the subject of widespread media attention. She has received numerous accolades throughout her career, including two Grammy Awards, one Brit Award, one Bambi Award, two Billboard Music Awards, three American Music Awards, nine MTV Video Music Awards, and 27 Guinness World Records.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Ariana_Grande_Grammys_Red_Carpet_2020.png/440px-Ariana_Grande_Grammys_Red_Carpet_2020.png",
  instagram_url: "https://www.instagram.com/arianagrande/?hl=en",
  price:  rand(250..50000),
  user_id: user4.id
)

Celeb.create!(
  first_name: "Leonardo",
  last_name:  "DiCaprio",
  service:  "Actor, Film producer, Television producer",
  bio:  "Leonardo Wilhelm DiCaprio (born November 11, 1974) is an American actor and film producer. Known for his work as a leading man in biopics and period films, he is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award, and three Golden Globe Awards. As of 2019, his films have grossed over $7.2 billion worldwide, and he has been placed eight times in annual rankings of the world's highest-paid actors.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/2/25/Leonardo_DiCaprio_2014.jpg",
  instagram_url: "https://www.instagram.com/leonardodicaprio/?hl=en",
  price:  rand(250..50000),
  user_id: user4.id
)

Celeb.create!(
  first_name: "Brad",
  last_name:  "Pitt",
  service:  "Actor, Film producer, Voice actor",
  bio:  "William Bradley Pitt (born December 18, 1963) is an American actor and film producer. He is the recipient of various accolades, including two Academy Awards, a British Academy Film Award, two Golden Globe Awards, and a Primetime Emmy Award. As a public figure, Pitt has been cited as one of the most powerful and influential people in the American entertainment industry.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Brad_Pitt_2019_by_Glenn_Francis.jpg/440px-Brad_Pitt_2019_by_Glenn_Francis.jpg",
  instagram_url: "https://www.instagram.com/bradpittofflcial/?hl=en",
  price:  rand(250..50000),
  user_id: user4.id
)

Celeb.create!(
  first_name: "Selena",
  last_name:  "Gomez",
  service:  "Singer, Actor, Fashion designer",
  bio:  "Selena Marie Gomez (born July 22, 1992) is an American singer, actress and film producer. Gomez began her acting career on the children's television series Barney & Friends (2002–2004). As a teenager, she rose to prominence for starring as Alex Russo on the Disney Channel television series Wizards of Waverly Place (2007–2012). Alongside her television career, Gomez appeared in the films Another Cinderella Story (2008), Princess Protection Program (2009), Wizards of Waverly Place: The Movie (2009), Ramona and Beezus (2010), Monte Carlo (2011), Spring Breakers (2012), Neighbors 2: Sorority Rising (2016), The Dead Don't Die (2019), and A Rainy Day in New York (2019). She also voiced the character Mavis in the Hotel Transylvania film franchise (2012–2022).",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Selena_Gomez_at_White_House.jpg/440px-Selena_Gomez_at_White_House.jpg",
  instagram_url: "https://www.instagram.com/selenagomez/?hl=en",
  price:  rand(250..50000),
  user_id: user4.id
)

Celeb.create!(
  first_name: "Tyra",
  last_name:  "Banks",
  service:  "Actor, Businessperson, Television producer",
  bio:  "Tyra Lynne Banks (born December 4, 1973), also known as BanX, is an American television personality, model, producer, writer, and actress. Born in Inglewood, California, she began her career as a model at the age of 15, and was the first African-American woman to be featured on the covers of GQ and the Sports Illustrated Swimsuit Issue, on which she appeared three times. She was a Victoria's Secret Angel from 1997 to 2005. By the early 2000s, Banks was one of the world's top-earning models.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Tyra_Banks_2020.jpg/440px-Tyra_Banks_2020.jpg",
  instagram_url: "https://www.instagram.com/tyrabanks/?hl=en",
  price:  rand(250..5000),
  user_id: user4.id
)

Celeb.create!(
  first_name: "Christopher",
  last_name:  "Nolan",
  service:  "Director, Screenwriter, Film producer",
  bio:  "Christopher Nolan (born 30 July 1970) is a British-American film director, producer, and screenwriter. His films have grossed more than US$5.7 billion worldwide and have garnered 11 Academy Awards from 36 nominations. Having received many awards and honours throughout his career for his works; in 2015, Time named him as one of the 100 most influential people in the world. In 2019, he was appointed Commander of the Order of the British Empire for his services to film.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Christopher_Nolan_Cannes_2018.jpg/440px-Christopher_Nolan_Cannes_2018.jpg",
  instagram_url: "https://www.instagram.com/christophernolann/?hl=en",
  price:  rand(250..50000),
  user_id: user4.id
)

Celeb.create!(
  first_name: "Charli",
  last_name:  "D'Amelio",
  service:  "Tiktoker",
  bio:  "Charli Grace D'Amelio (born May 1, 2004) is an American social media personality. She was a competitive dancer for over 10 years before starting her social media career in 2019, when she started posting dance videos on the video-sharing platform TikTok. She quickly amassed a large following and subsequently became the most-followed creator on the platform in March 2020 until she was surpassed by Khaby Lame in July 2022.",
  photo_url:  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Charli_D%27Amelio_3.jpg/440px-Charli_D%27Amelio_3.jpg",
  instagram_url: "https://www.instagram.com/charlidamelio/?hl=en",
  price:  rand(250..500),
  user_id: user4.id
)

Celeb.create!(
  first_name: "Drake",
  last_name:  "Canyoudosumfame",
  service:  "Singer, composer, and actor",
  bio:  "Drake CanYouDoSumFaMe is a Canadian rapper, singer, and actor. An influential figure in contemporary popular music, Drake has been credited for popularizing singing and R&B sensibilities in hip hop.",
  photo_url:  "https://i.pinimg.com/550x/f3/bb/a2/f3bba2f30820a5f02756f15e10704bb4.jpg",
  instagram_url: "https://www.instagram.com/champagnepapi/?hl=en",
  price:  rand(250..50000),
  user_id: user4.id
)
