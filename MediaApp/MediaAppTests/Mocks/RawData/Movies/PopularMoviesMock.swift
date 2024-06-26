//
//  PopularMoviesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 3/3/24.
//

import Foundation
import XCTest

final class PopularMoviesMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
        {
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/sR0SpCrXamlIkYMdfz83sFn5JS6.jpg",
                    "genre_ids": [
                        28,
                        878,
                        12,
                        14
                    ],
                    "id": 823464,
                    "original_language": "en",
                    "original_title": "Godzilla x Kong: The New Empire",
                    "overview": "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
                    "popularity": 3404.57,
                    "poster_path": "/4Hbf0Gw5PD2GC7PmiwjEwf0ROCU.jpg",
                    "release_date": "2024-03-27",
                    "title": "Godzilla x Kong: The New Empire",
                    "video": false,
                    "vote_average": 6.711,
                    "vote_count": 432
                },
                {
                    "adult": false,
                    "backdrop_path": "/1XDDXPXGiI8id7MrUxK36ke7gkX.jpg",
                    "genre_ids": [
                        28,
                        12,
                        16,
                        35,
                        10751
                    ],
                    "id": 1011985,
                    "original_language": "en",
                    "original_title": "Kung Fu Panda 4",
                    "overview": "Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.",
                    "popularity": 2101.694,
                    "poster_path": "/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg",
                    "release_date": "2024-03-02",
                    "title": "Kung Fu Panda 4",
                    "video": false,
                    "vote_average": 6.753,
                    "vote_count": 605
                },
                {
                    "adult": false,
                    "backdrop_path": "/oe7mWkvYhK4PLRNAVSvonzyUXNy.jpg",
                    "genre_ids": [
                        28,
                        53
                    ],
                    "id": 359410,
                    "original_language": "en",
                    "original_title": "Road House",
                    "overview": "Ex-UFC fighter Dalton takes a job as a bouncer at a Florida Keys roadhouse, only to discover that this paradise is not all it seems.",
                    "popularity": 1808.763,
                    "poster_path": "/bXi6IQiQDHD00JFio5ZSZOeRSBh.jpg",
                    "release_date": "2024-03-08",
                    "title": "Road House",
                    "video": false,
                    "vote_average": 7.13,
                    "vote_count": 1207
                },
                {
                    "adult": false,
                    "backdrop_path": "/9c0lHTXRqDBxeOToVzRu0GArSne.jpg",
                    "genre_ids": [
                        878,
                        28
                    ],
                    "id": 935271,
                    "original_language": "en",
                    "original_title": "After the Pandemic",
                    "overview": "Set in a post-apocalyptic world where a global airborne pandemic has wiped out 90% of the Earth's population and only the young and immune have endured as scavengers. For Ellie and Quinn, the daily challenges to stay alive are compounded when they become hunted by the merciless Stalkers.",
                    "popularity": 1244.584,
                    "poster_path": "/p1LbrdJ53dGfEhRopG71akfzOVu.jpg",
                    "release_date": "2022-03-01",
                    "title": "After the Pandemic",
                    "video": false,
                    "vote_average": 5.567,
                    "vote_count": 15
                },
                {
                    "adult": false,
                    "backdrop_path": "/pwGmXVKUgKN13psUjlhC9zBcq1o.jpg",
                    "genre_ids": [
                        28,
                        14
                    ],
                    "id": 634492,
                    "original_language": "en",
                    "original_title": "Madame Web",
                    "overview": "Forced to confront revelations about her past, paramedic Cassandra Webb forges a relationship with three young women destined for powerful futures...if they can all survive a deadly present.",
                    "popularity": 1146.356,
                    "poster_path": "/rULWuutDcN5NvtiZi4FRPzRYWSh.jpg",
                    "release_date": "2024-02-14",
                    "title": "Madame Web",
                    "video": false,
                    "vote_average": 5.657,
                    "vote_count": 976
                },
                {
                    "adult": false,
                    "backdrop_path": "/2KGxQFV9Wp1MshPBf8BuqWUgVAz.jpg",
                    "genre_ids": [
                        16,
                        28,
                        12,
                        35,
                        10751
                    ],
                    "id": 940551,
                    "original_language": "en",
                    "original_title": "Migration",
                    "overview": "After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.",
                    "popularity": 875.175,
                    "poster_path": "/ldfCF9RhR40mppkzmftxapaHeTo.jpg",
                    "release_date": "2023-12-06",
                    "title": "Migration",
                    "video": false,
                    "vote_average": 7.533,
                    "vote_count": 1081
                },
                {
                    "adult": false,
                    "backdrop_path": "/2C3CdVzINUm5Cm1lrbT2uiRstwX.jpg",
                    "genre_ids": [
                        28,
                        14,
                        10752
                    ],
                    "id": 856289,
                    "original_language": "zh",
                    "original_title": "封神第一部：朝歌风云",
                    "overview": "Based on the most well-known classical fantasy novel of China, Fengshenyanyi, the trilogy is a magnificent eastern high fantasy epic that recreates the prolonged mythical wars between humans, immortals and monsters, which happened more than three thousand years ago.",
                    "popularity": 887.604,
                    "poster_path": "/ccJpK0rqzhQeP7Mrs2uKqObFY4L.jpg",
                    "release_date": "2023-07-20",
                    "title": "Creation of the Gods I: Kingdom of Storms",
                    "video": false,
                    "vote_average": 6.846,
                    "vote_count": 178
                },
                {
                    "adult": false,
                    "backdrop_path": "/deLWkOLZmBNkm8p16igfapQyqeq.jpg",
                    "genre_ids": [
                        14,
                        28,
                        12
                    ],
                    "id": 763215,
                    "original_language": "en",
                    "original_title": "Damsel",
                    "overview": "A young woman's marriage to a charming prince turns into a fierce fight for survival when she's offered up as a sacrifice to a fire-breathing dragon.",
                    "popularity": 851.212,
                    "poster_path": "/AgHbB9DCE9aE57zkHjSmseszh6e.jpg",
                    "release_date": "2024-03-07",
                    "title": "Damsel",
                    "video": false,
                    "vote_average": 7.141,
                    "vote_count": 1445
                },
                {
                    "adult": false,
                    "backdrop_path": "/rKmp0vm6PNaFA0g1bzM70eyWJ6I.jpg",
                    "genre_ids": [
                        28
                    ],
                    "id": 873972,
                    "original_language": "en",
                    "original_title": "Hunters",
                    "overview": "As John T. Wrecker continues his task of protecting a group of refugees from a virus, the threat of something new and even more dangerous grows ever closer in the form of monstrous mutants.",
                    "popularity": 749.054,
                    "poster_path": "/3UKlVa1CBeQkRksHV5OfFTO52qd.jpg",
                    "release_date": "2021-09-13",
                    "title": "Hunters",
                    "video": false,
                    "vote_average": 5.3,
                    "vote_count": 7
                },
                {
                    "adult": false,
                    "backdrop_path": "/xOMo8BRK7PfcJv9JCnx7s5hj0PX.jpg",
                    "genre_ids": [
                        878,
                        12
                    ],
                    "id": 693134,
                    "original_language": "en",
                    "original_title": "Dune: Part Two",
                    "overview": "Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.",
                    "popularity": 704.576,
                    "poster_path": "/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg",
                    "release_date": "2024-02-27",
                    "title": "Dune: Part Two",
                    "video": false,
                    "vote_average": 8.4,
                    "vote_count": 2429
                },
                {
                    "adult": false,
                    "backdrop_path": "/7ZP8HtgOIDaBs12krXgUIygqEsy.jpg",
                    "genre_ids": [
                        878,
                        28,
                        14,
                        12
                    ],
                    "id": 601796,
                    "original_language": "ko",
                    "original_title": "외계+인 1부",
                    "overview": "Gurus in the late Goryeo dynasty try to obtain a fabled, holy sword, and humans in 2022 hunt down an alien prisoner that is locked in a human's body. The two parties cross paths when a time-traveling portal opens up.",
                    "popularity": 672.259,
                    "poster_path": "/8QVDXDiOGHRcAD4oM6MXjE0osSj.jpg",
                    "release_date": "2022-07-20",
                    "title": "Alienoid",
                    "video": false,
                    "vote_average": 7.067,
                    "vote_count": 247
                },
                {
                    "adult": false,
                    "backdrop_path": "/4woSOUD0equAYzvwhWBHIJDCM88.jpg",
                    "genre_ids": [
                        28,
                        27,
                        53
                    ],
                    "id": 1096197,
                    "original_language": "en",
                    "original_title": "No Way Up",
                    "overview": "Characters from different backgrounds are thrown together when the plane they're travelling on crashes into the Pacific Ocean. A nightmare fight for survival ensues with the air supply running out and dangers creeping in from all sides.",
                    "popularity": 580.398,
                    "poster_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
                    "release_date": "2024-01-18",
                    "title": "No Way Up",
                    "video": false,
                    "vote_average": 6.285,
                    "vote_count": 331
                },
                {
                    "adult": false,
                    "backdrop_path": "/jBPG5F5WW2qv5diBzxUr52sPMef.jpg",
                    "genre_ids": [
                        28,
                        53
                    ],
                    "id": 984324,
                    "original_language": "fr",
                    "original_title": "Le salaire de la peur",
                    "overview": "When an explosion at an oil well threatens hundreds of lives, a crack team is called upon to make a deadly desert crossing with nitroglycerine in tow.",
                    "popularity": 530.764,
                    "poster_path": "/jFK2ZLQUzo9pea0jfMCHDfvWsx7.jpg",
                    "release_date": "2024-03-28",
                    "title": "The Wages of Fear",
                    "video": false,
                    "vote_average": 5.832,
                    "vote_count": 91
                },
                {
                    "adult": false,
                    "backdrop_path": "/oFAukXiMPrwLpbulGmB5suEZlrm.jpg",
                    "genre_ids": [
                        28,
                        12,
                        878,
                        14,
                        18
                    ],
                    "id": 624091,
                    "original_language": "id",
                    "original_title": "Sri Asih",
                    "overview": "Alana discover the truth about her origin: she’s not an ordinary human being. She may be the gift for humanity and become its protector as Sri Asih. Or a destruction, if she can’t control her anger.",
                    "popularity": 477.421,
                    "poster_path": "/wShcJSKMFg1Dy1yq7kEZuay6pLS.jpg",
                    "release_date": "2022-11-17",
                    "title": "Sri Asih",
                    "video": false,
                    "vote_average": 6.243,
                    "vote_count": 72
                },
                {
                    "adult": false,
                    "backdrop_path": "/qSc5JzPvSm6KxVv54nrn7SNXFtk.jpg",
                    "genre_ids": [
                        16,
                        10402,
                        35
                    ],
                    "id": 1192209,
                    "original_language": "pt",
                    "original_title": "Arca de Noé",
                    "overview": "A pair of mice attempt to board Noah's Ark: Vini, a charismatic poet with terrible stage fright, and Tito, a talented and charming guitarist. When the rains come, only one male and one female of each species is allowed on Noah's Ark. With the help of an ingenious cockroach and fate's good luck, Vini and Tito sneak their way onto the Ark and together avert a showdown among the ships carnivores and plant eaters. All the while, the animals perform a series of classic songs inspired by world renowned poet, Vinicius de Moraes. Can these talented stowaways use music to break the tension and help these cooped up creatures survive the 40 days and 40 nights together?",
                    "popularity": 448.99,
                    "poster_path": "/j1Rjw6a62UwrbTNT0I3JzZnnCmr.jpg",
                    "release_date": "2024-01-05",
                    "title": "Noah's Ark",
                    "video": false,
                    "vote_average": 7.058,
                    "vote_count": 26
                },
                {
                    "adult": false,
                    "backdrop_path": "/inJjDhCjfhh3RtrJWBmmDqeuSYC.jpg",
                    "genre_ids": [
                        28,
                        878,
                        53
                    ],
                    "id": 399566,
                    "original_language": "en",
                    "original_title": "Godzilla vs. Kong",
                    "overview": "In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.",
                    "popularity": 495.987,
                    "poster_path": "/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg",
                    "release_date": "2021-03-24",
                    "title": "Godzilla vs. Kong",
                    "video": false,
                    "vote_average": 7.625,
                    "vote_count": 9530
                },
                {
                    "adult": false,
                    "backdrop_path": "/bWIIWhnaoWx3FTVXv6GkYDv3djL.jpg",
                    "genre_ids": [
                        878,
                        27,
                        28
                    ],
                    "id": 940721,
                    "original_language": "ja",
                    "original_title": "ゴジラ-1.0",
                    "overview": "Postwar Japan is at its lowest point when a new crisis emerges in the form of a giant monster, baptized in the horrific power of the atomic bomb.",
                    "popularity": 488.487,
                    "poster_path": "/hkxxMIGaiCTmrEArK7J56JTKUlB.jpg",
                    "release_date": "2023-11-03",
                    "title": "Godzilla Minus One",
                    "video": false,
                    "vote_average": 7.859,
                    "vote_count": 468
                },
                {
                    "adult": false,
                    "backdrop_path": "/mIBG74mhGEJnBubhYLkCtvplcNr.jpg",
                    "genre_ids": [
                        27
                    ],
                    "id": 437342,
                    "original_language": "en",
                    "original_title": "The First Omen",
                    "overview": "When a young American woman is sent to Rome to begin a life of service to the church, she encounters a darkness that causes her to question her own faith and uncovers a terrifying conspiracy that hopes to bring about the birth of evil incarnate.",
                    "popularity": 476.842,
                    "poster_path": "/hil2ResSCwP95JweZVJsZ5CbZdc.jpg",
                    "release_date": "2024-04-03",
                    "title": "The First Omen",
                    "video": false,
                    "vote_average": 7.3,
                    "vote_count": 17
                },
                {
                    "adult": false,
                    "backdrop_path": "/nb3xI8XI3w4pMVZ38VijbsyBqP4.jpg",
                    "genre_ids": [
                        18,
                        36
                    ],
                    "id": 872585,
                    "original_language": "en",
                    "original_title": "Oppenheimer",
                    "overview": "The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.",
                    "popularity": 443.134,
                    "poster_path": "/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
                    "release_date": "2023-07-19",
                    "title": "Oppenheimer",
                    "video": false,
                    "vote_average": 8.112,
                    "vote_count": 7534
                },
                {
                    "adult": false,
                    "backdrop_path": "/oBIQDKcqNxKckjugtmzpIIOgoc4.jpg",
                    "genre_ids": [
                        28,
                        53,
                        10752
                    ],
                    "id": 969492,
                    "original_language": "en",
                    "original_title": "Land of Bad",
                    "overview": "When a Delta Force special ops mission goes terribly wrong, Air Force drone pilot Reaper has 48 hours to remedy what has devolved into a wild rescue operation. With no weapons and no communication other than the drone above, the ground mission suddenly becomes a full-scale battle when the team is discovered by the enemy.",
                    "popularity": 463.268,
                    "poster_path": "/h3jYanWMEJq6JJsCopy1h7cT2Hs.jpg",
                    "release_date": "2024-01-25",
                    "title": "Land of Bad",
                    "video": false,
                    "vote_average": 7.113,
                    "vote_count": 479
                }
            ],
            "total_pages": 43436,
            "total_results": 868703
        }
        """.utf8)
    }
}
