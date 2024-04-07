//
//  TopRatedMoviesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 3/3/24.
//

import Foundation
import XCTest

final class TopRatedMoviesMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
        {
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg",
                    "genre_ids": [
                        18,
                        80
                    ],
                    "id": 278,
                    "original_language": "en",
                    "original_title": "The Shawshank Redemption",
                    "overview": "Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
                    "popularity": 143.009,
                    "poster_path": "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
                    "release_date": "1994-09-23",
                    "title": "The Shawshank Redemption",
                    "video": false,
                    "vote_average": 8.704,
                    "vote_count": 25936
                },
                {
                    "adult": false,
                    "backdrop_path": "/tmU7GeKVybMWFButWEGl2M4GeiP.jpg",
                    "genre_ids": [
                        18,
                        80
                    ],
                    "id": 238,
                    "original_language": "en",
                    "original_title": "The Godfather",
                    "overview": "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.",
                    "popularity": 110.08,
                    "poster_path": "/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
                    "release_date": "1972-03-14",
                    "title": "The Godfather",
                    "video": false,
                    "vote_average": 8.695,
                    "vote_count": 19666
                },
                {
                    "adult": false,
                    "backdrop_path": "/kGzFbGhp99zva6oZODW5atUtnqi.jpg",
                    "genre_ids": [
                        18,
                        80
                    ],
                    "id": 240,
                    "original_language": "en",
                    "original_title": "The Godfather Part II",
                    "overview": "In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.",
                    "popularity": 81.692,
                    "poster_path": "/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
                    "release_date": "1974-12-20",
                    "title": "The Godfather Part II",
                    "video": false,
                    "vote_average": 8.576,
                    "vote_count": 11880
                },
                {
                    "adult": false,
                    "backdrop_path": "/zb6fM1CX41D9rF9hdgclu0peUmy.jpg",
                    "genre_ids": [
                        18,
                        36,
                        10752
                    ],
                    "id": 424,
                    "original_language": "en",
                    "original_title": "Schindler's List",
                    "overview": "The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.",
                    "popularity": 93.104,
                    "poster_path": "/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg",
                    "release_date": "1993-12-15",
                    "title": "Schindler's List",
                    "video": false,
                    "vote_average": 8.567,
                    "vote_count": 15271
                },
                {
                    "adult": false,
                    "backdrop_path": "/qqHQsStV6exghCM7zbObuYBiYxw.jpg",
                    "genre_ids": [
                        18
                    ],
                    "id": 389,
                    "original_language": "en",
                    "original_title": "12 Angry Men",
                    "overview": "The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, and each other.",
                    "popularity": 50.176,
                    "poster_path": "/ow3wq89wM8qd5X7hWKxiRfsFf9C.jpg",
                    "release_date": "1957-04-10",
                    "title": "12 Angry Men",
                    "video": false,
                    "vote_average": 8.542,
                    "vote_count": 8164
                },
                {
                    "adult": false,
                    "backdrop_path": "/mSDsSDwaP3E7dEfUPWy4J0djt4O.jpg",
                    "genre_ids": [
                        16,
                        10751,
                        14
                    ],
                    "id": 129,
                    "original_language": "ja",
                    "original_title": "千と千尋の神隠し",
                    "overview": "A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.",
                    "popularity": 113.635,
                    "poster_path": "/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg",
                    "release_date": "2001-07-20",
                    "title": "Spirited Away",
                    "video": false,
                    "vote_average": 8.539,
                    "vote_count": 15765
                },
                {
                    "adult": false,
                    "backdrop_path": "/90ez6ArvpO8bvpyIngBuwXOqJm5.jpg",
                    "genre_ids": [
                        35,
                        18,
                        10749
                    ],
                    "id": 19404,
                    "original_language": "hi",
                    "original_title": "दिलवाले दुल्हनिया ले जायेंगे",
                    "overview": "Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.",
                    "popularity": 44.169,
                    "poster_path": "/lfRkUr7DYdHldAqi3PwdQGBRBPM.jpg",
                    "release_date": "1995-10-20",
                    "title": "Dilwale Dulhania Le Jayenge",
                    "video": false,
                    "vote_average": 8.535,
                    "vote_count": 4363
                },
                {
                    "adult": false,
                    "backdrop_path": "/dqK9Hag1054tghRQSqLSfrkvQnA.jpg",
                    "genre_ids": [
                        18,
                        28,
                        80,
                        53
                    ],
                    "id": 155,
                    "original_language": "en",
                    "original_title": "The Dark Knight",
                    "overview": "Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.",
                    "popularity": 114.749,
                    "poster_path": "/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
                    "release_date": "2008-07-16",
                    "title": "The Dark Knight",
                    "video": false,
                    "vote_average": 8.515,
                    "vote_count": 31722
                },
                {
                    "adult": false,
                    "backdrop_path": "/TU9NIjwzjoKPwQHoHshkFcQUCG.jpg",
                    "genre_ids": [
                        35,
                        53,
                        18
                    ],
                    "id": 496243,
                    "original_language": "ko",
                    "original_title": "기생충",
                    "overview": "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.",
                    "popularity": 101.775,
                    "poster_path": "/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg",
                    "release_date": "2019-05-30",
                    "title": "Parasite",
                    "video": false,
                    "vote_average": 8.51,
                    "vote_count": 17369
                },
                {
                    "adult": false,
                    "backdrop_path": "/vxJ08SvwomfKbpboCWynC3uqUg4.jpg",
                    "genre_ids": [
                        14,
                        18,
                        80
                    ],
                    "id": 497,
                    "original_language": "en",
                    "original_title": "The Green Mile",
                    "overview": "A supernatural tale set on death row in a Southern prison, where gentle giant John Coffey possesses the mysterious power to heal people's ailments. When the cell block's head guard, Paul Edgecomb, recognizes Coffey's miraculous gift, he tries desperately to help stave off the condemned man's execution.",
                    "popularity": 100.982,
                    "poster_path": "/8VG8fDNiy50H4FedGwdSVUPoaJe.jpg",
                    "release_date": "1999-12-10",
                    "title": "The Green Mile",
                    "video": false,
                    "vote_average": 8.507,
                    "vote_count": 16678
                },
                {
                    "adult": false,
                    "backdrop_path": "/dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg",
                    "genre_ids": [
                        16,
                        10749,
                        18
                    ],
                    "id": 372058,
                    "original_language": "ja",
                    "original_title": "君の名は。",
                    "overview": "High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.",
                    "popularity": 83.959,
                    "poster_path": "/q719jXXEzOoYaps6babgKnONONX.jpg",
                    "release_date": "2016-08-26",
                    "title": "Your Name.",
                    "video": false,
                    "vote_average": 8.497,
                    "vote_count": 10880
                },
                {
                    "adult": false,
                    "backdrop_path": "/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg",
                    "genre_ids": [
                        53,
                        80
                    ],
                    "id": 680,
                    "original_language": "en",
                    "original_title": "Pulp Fiction",
                    "overview": "A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.",
                    "popularity": 141.724,
                    "poster_path": "/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg",
                    "release_date": "1994-09-10",
                    "title": "Pulp Fiction",
                    "video": false,
                    "vote_average": 8.489,
                    "vote_count": 26898
                },
                {
                    "adult": false,
                    "backdrop_path": "/2u7zbn8EudG6kLlBzUYqP8RyFU4.jpg",
                    "genre_ids": [
                        12,
                        14,
                        28
                    ],
                    "id": 122,
                    "original_language": "en",
                    "original_title": "The Lord of the Rings: The Return of the King",
                    "overview": "Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm.",
                    "popularity": 107.658,
                    "poster_path": "/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg",
                    "release_date": "2003-12-01",
                    "title": "The Lord of the Rings: The Return of the King",
                    "video": false,
                    "vote_average": 8.479,
                    "vote_count": 23236
                },
                {
                    "adult": false,
                    "backdrop_path": "/qdIMHd4sEfJSckfVJfKQvisL02a.jpg",
                    "genre_ids": [
                        35,
                        18,
                        10749
                    ],
                    "id": 13,
                    "original_language": "en",
                    "original_title": "Forrest Gump",
                    "overview": "A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do. But despite all he has achieved, his one true love eludes him.",
                    "popularity": 127.515,
                    "poster_path": "/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg",
                    "release_date": "1994-06-23",
                    "title": "Forrest Gump",
                    "video": false,
                    "vote_average": 8.476,
                    "vote_count": 26420
                },
                {
                    "adult": false,
                    "backdrop_path": "/Adrip2Jqzw56KeuV2nAxucKMNXA.jpg",
                    "genre_ids": [
                        37
                    ],
                    "id": 429,
                    "original_language": "it",
                    "original_title": "Il buono, il brutto, il cattivo",
                    "overview": "While the Civil War rages on between the Union and the Confederacy, three men – a quiet loner, a ruthless hitman, and a Mexican bandit – comb the American Southwest in search of a strongbox containing $200,000 in stolen gold.",
                    "popularity": 88.0,
                    "poster_path": "/bX2xnavhMYjWDoZp1VM6VnU1xwe.jpg",
                    "release_date": "1966-12-22",
                    "title": "The Good, the Bad and the Ugly",
                    "video": false,
                    "vote_average": 8.468,
                    "vote_count": 8183
                },
                {
                    "adult": false,
                    "backdrop_path": "/sw7mordbZxgITU877yTpZCud90M.jpg",
                    "genre_ids": [
                        18,
                        80
                    ],
                    "id": 769,
                    "original_language": "en",
                    "original_title": "GoodFellas",
                    "overview": "The true story of Henry Hill, a half-Irish, half-Sicilian Brooklyn kid who is adopted by neighbourhood gangsters at an early age and climbs the ranks of a Mafia family under the guidance of Jimmy Conway.",
                    "popularity": 80.459,
                    "poster_path": "/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg",
                    "release_date": "1990-09-12",
                    "title": "GoodFellas",
                    "video": false,
                    "vote_average": 8.466,
                    "vote_count": 12289
                },
                {
                    "adult": false,
                    "backdrop_path": "/dlC0ed9Ugh3FzydnkBtV5lRXUu4.jpg",
                    "genre_ids": [
                        16,
                        18,
                        10752
                    ],
                    "id": 12477,
                    "original_language": "ja",
                    "original_title": "火垂るの墓",
                    "overview": "In the final months of World War II, 14-year-old Seita and his sister Setsuko are orphaned when their mother is killed during an air raid in Kobe, Japan. After a falling out with their aunt, they move into an abandoned bomb shelter. With no surviving relatives and their emergency rations depleted, Seita and Setsuko struggle to survive.",
                    "popularity": 0.6,
                    "poster_path": "/k9tv1rXZbOhH7eiCk378x61kNQ1.jpg",
                    "release_date": "1988-04-16",
                    "title": "Grave of the Fireflies",
                    "video": false,
                    "vote_average": 8.463,
                    "vote_count": 5192
                },
                {
                    "adult": false,
                    "backdrop_path": "/qvZ91FwMq6O47VViAr8vZNQz3WI.jpg",
                    "genre_ids": [
                        28,
                        18
                    ],
                    "id": 346,
                    "original_language": "ja",
                    "original_title": "七人の侍",
                    "overview": "A samurai answers a village's request for protection after he falls on hard times. The town needs protection from bandits, so the samurai gathers six others to help him teach the people how to defend themselves, and the villagers provide the soldiers with food.",
                    "popularity": 51.059,
                    "poster_path": "/8OKmBV5BUFzmozIC3pPWKHy17kx.jpg",
                    "release_date": "1954-04-26",
                    "title": "Seven Samurai",
                    "video": false,
                    "vote_average": 8.455,
                    "vote_count": 3455
                },
                {
                    "adult": false,
                    "backdrop_path": "/zoVeIgKzGJzpdG6Gwnr7iOYfIMU.jpg",
                    "genre_ids": [
                        18,
                        10749
                    ],
                    "id": 11216,
                    "original_language": "it",
                    "original_title": "Nuovo Cinema Paradiso",
                    "overview": "A filmmaker recalls his childhood, when he fell in love with the movies at his village's theater and formed a deep friendship with the theater's projectionist.",
                    "popularity": 49.522,
                    "poster_path": "/8SRUfRUi6x4O68n0VCbDNRa6iGL.jpg",
                    "release_date": "1988-11-17",
                    "title": "Cinema Paradiso",
                    "video": false,
                    "vote_average": 8.453,
                    "vote_count": 4169
                },
                {
                    "adult": false,
                    "backdrop_path": "/gavyCu1UaTaTNPsVaGXT6pe5u24.jpg",
                    "genre_ids": [
                        35,
                        18
                    ],
                    "id": 637,
                    "original_language": "it",
                    "original_title": "La vita è bella",
                    "overview": "A touching story of an Italian book seller of Jewish ancestry who lives in his own little fairy tale. His creative and happy life would come to an abrupt halt when his entire family is deported to a concentration camp during World War II. While locked up he tries to convince his son that the whole thing is just a game.",
                    "popularity": 48.282,
                    "poster_path": "/74hLDKjD5aGYOotO6esUVaeISa2.jpg",
                    "release_date": "1997-12-20",
                    "title": "Life Is Beautiful",
                    "video": false,
                    "vote_average": 8.452,
                    "vote_count": 12663
                }
            ],
            "total_pages": 465,
            "total_results": 9288
        }
        """.utf8)
    }
}
