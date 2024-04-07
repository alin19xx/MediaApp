//
//  UpcomingMoviesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 3/3/24.
//

import Foundation
import XCTest

final class UpcomingMoviesMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
        {
          "dates": {
            "maximum": "2024-05-01",
            "minimum": "2024-04-10"
          },
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
              "popularity": 3537.982,
              "poster_path": "/tMefBSflR6PGQLv7WvFPpKLZkyk.jpg",
              "release_date": "2024-03-27",
              "title": "Godzilla x Kong: The New Empire",
              "video": false,
              "vote_average": 6.684,
              "vote_count": 452
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
              "popularity": 2397.553,
              "poster_path": "/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg",
              "release_date": "2024-03-02",
              "title": "Kung Fu Panda 4",
              "video": false,
              "vote_average": 6.736,
              "vote_count": 612
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
              "popularity": 1295.325,
              "poster_path": "/rULWuutDcN5NvtiZi4FRPzRYWSh.jpg",
              "release_date": "2024-02-14",
              "title": "Madame Web",
              "video": false,
              "vote_average": 5.659,
              "vote_count": 982
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
              "popularity": 1041.436,
              "poster_path": "/ldfCF9RhR40mppkzmftxapaHeTo.jpg",
              "release_date": "2023-12-06",
              "title": "Migration",
              "video": false,
              "vote_average": 7.534,
              "vote_count": 1087
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
              "popularity": 986.406,
              "poster_path": "/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg",
              "release_date": "2024-02-27",
              "title": "Dune: Part Two",
              "video": false,
              "vote_average": 8.36,
              "vote_count": 2460
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
              "popularity": 641.317,
              "poster_path": "/jT6awzVlAf0ZOoXbWhIXu1y5sDu.jpg",
              "release_date": "2024-04-03",
              "title": "The First Omen",
              "video": false,
              "vote_average": 7.1,
              "vote_count": 22
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
              "popularity": 682.056,
              "poster_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
              "release_date": "2024-01-18",
              "title": "No Way Up",
              "video": false,
              "vote_average": 6.29,
              "vote_count": 333
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
              "popularity": 514.26,
              "poster_path": "/h3jYanWMEJq6JJsCopy1h7cT2Hs.jpg",
              "release_date": "2024-01-25",
              "title": "Land of Bad",
              "video": false,
              "vote_average": 7.103,
              "vote_count": 484
            },
            {
              "adult": false,
              "backdrop_path": "/TGsfNWkASegCfAn6ED1b08a9O6.jpg",
              "genre_ids": [
                27,
                9648,
                53
              ],
              "id": 1125311,
              "original_language": "en",
              "original_title": "Imaginary",
              "overview": "When Jessica moves back into her childhood home with her family, her youngest stepdaughter Alice develops an eerie attachment to a stuffed bear named Chauncey she finds in the basement. Alice starts playing games with Chauncey that begin playful and become increasingly sinister. As Alice’s behavior becomes more and more concerning, Jessica intervenes only to realize Chauncey is much more than the stuffed toy bear she believed him to be.",
              "popularity": 638.651,
              "poster_path": "/9u6HEtZJdZDjPGGJq6YEuhPnoan.jpg",
              "release_date": "2024-03-06",
              "title": "Imaginary",
              "video": false,
              "vote_average": 6.103,
              "vote_count": 150
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
              "popularity": 506.091,
              "poster_path": "/j1Rjw6a62UwrbTNT0I3JzZnnCmr.jpg",
              "release_date": "2024-01-05",
              "title": "Noah's Ark",
              "video": false,
              "vote_average": 7.1,
              "vote_count": 26
            },
            {
              "adult": false,
              "backdrop_path": "/5cCfqeUH2f5Gnu7Lh9xepY9TB6x.jpg",
              "genre_ids": [
                14,
                12,
                35
              ],
              "id": 967847,
              "original_language": "en",
              "original_title": "Ghostbusters: Frozen Empire",
              "overview": "The Spengler family returns to where it all started – the iconic New York City firehouse – to team up with the original Ghostbusters, who've developed a top-secret research lab to take busting ghosts to the next level. But when the discovery of an ancient artifact unleashes an evil force, Ghostbusters new and old must join forces to protect their home and save the world from a second Ice Age.",
              "popularity": 314.493,
              "poster_path": "/6faYaQyiBPhqAizldJKq21mIVaE.jpg",
              "release_date": "2024-03-20",
              "title": "Ghostbusters: Frozen Empire",
              "video": false,
              "vote_average": 6.679,
              "vote_count": 165
            },
            {
              "adult": false,
              "backdrop_path": "/aINel9503ompOlGKn4sIVMg09Un.jpg",
              "genre_ids": [
                9648,
                27,
                53
              ],
              "id": 838209,
              "original_language": "ko",
              "original_title": "파묘",
              "overview": "After tracing the origin of a disturbing supernatural affliction to a wealthy family's ancestral gravesite, a team of paranormal experts relocates the remains—and soon discovers what happens to those who dare to mess with the wrong grave.",
              "popularity": 240.049,
              "poster_path": "/pQYHouPsDw32FhDLr7E3jmw0WTk.jpg",
              "release_date": "2024-02-22",
              "title": "Exhuma",
              "video": false,
              "vote_average": 7.764,
              "vote_count": 36
            },
            {
              "adult": false,
              "backdrop_path": "/kSdIVZu7Cv60o9hTbKBzcTrbMX8.jpg",
              "genre_ids": [
                28,
                53
              ],
              "id": 984249,
              "original_language": "en",
              "original_title": "Ruthless",
              "overview": "A high school coach, whose teenage daughter was murdered, takes matters into his own hands by going after the men who kidnap his students for their sex trafficking operation.",
              "popularity": 247.204,
              "poster_path": "/4ndp1pnHWRuiZLNpFJvO4Kh6Tav.jpg",
              "release_date": "2023-12-14",
              "title": "Ruthless",
              "video": false,
              "vote_average": 6.6,
              "vote_count": 47
            },
            {
              "adult": false,
              "backdrop_path": "/1ZSKH5GGFlM8M32K34GMdaNS2Ew.jpg",
              "genre_ids": [
                10402,
                36,
                18
              ],
              "id": 802219,
              "original_language": "en",
              "original_title": "Bob Marley: One Love",
              "overview": "Jamaican singer-songwriter Bob Marley overcomes adversity to become the most famous reggae musician in the world.",
              "popularity": 210.168,
              "poster_path": "/mKWalirPreEdCKDJjc5TKeOP2xi.jpg",
              "release_date": "2024-02-14",
              "title": "Bob Marley: One Love",
              "video": false,
              "vote_average": 7.037,
              "vote_count": 450
            },
            {
              "adult": false,
              "backdrop_path": "/dvpzY91fvfcWSYgb0Xlan2NNLLU.jpg",
              "genre_ids": [
                28,
                53
              ],
              "id": 560016,
              "original_language": "en",
              "original_title": "Monkey Man",
              "overview": "Kid, an anonymous young man who ekes out a meager living in an underground fight club where, night after night, wearing a gorilla mask, he is beaten bloody by more popular fighters for cash. After years of suppressed rage, Kid discovers a way to infiltrate the enclave of the city’s sinister elite. As his childhood trauma boils over, his mysteriously scarred hands unleash an explosive campaign of retribution to settle the score with the men who took everything from him.",
              "popularity": 170.948,
              "poster_path": "/b4fn3VIdVTT3SX0rFMNFbl5xuvg.jpg",
              "release_date": "2024-04-03",
              "title": "Monkey Man",
              "video": false,
              "vote_average": 7.5,
              "vote_count": 28
            },
            {
              "adult": false,
              "backdrop_path": "/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg",
              "genre_ids": [
                16,
                10751,
                35,
                14
              ],
              "id": 508947,
              "original_language": "en",
              "original_title": "Turning Red",
              "overview": "Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda.",
              "popularity": 148.622,
              "poster_path": "/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg",
              "release_date": "2022-03-10",
              "title": "Turning Red",
              "video": false,
              "vote_average": 7.397,
              "vote_count": 4876
            },
            {
              "adult": false,
              "backdrop_path": "/9RWPPVB9ZPsrqALjcXKkl5rwijN.jpg",
              "genre_ids": [
                14,
                16,
                12
              ],
              "id": 4935,
              "original_language": "ja",
              "original_title": "ハウルの動く城",
              "overview": "Sophie, a young milliner, is turned into an elderly woman by a witch who enters her shop and curses her. She encounters a wizard named Howl and gets caught up in his resistance to fighting for the king.",
              "popularity": 146.264,
              "poster_path": "/6pZgH10jhpToPcf0uvyTCPFhWpI.jpg",
              "release_date": "2004-09-09",
              "title": "Howl's Moving Castle",
              "video": false,
              "vote_average": 8.41,
              "vote_count": 9338
            },
            {
              "adult": false,
              "backdrop_path": "/zVMdsmRUH2U1bZSYr8GLZkfs3mi.jpg",
              "genre_ids": [
                35,
                80
              ],
              "id": 957304,
              "original_language": "en",
              "original_title": "Drive-Away Dolls",
              "overview": "Jamie, an uninhibited free spirit bemoaning yet another breakup with a girlfriend, and her demure friend Marian desperately needs to loosen up. In search of a fresh start, the two embark on an impromptu road trip to Tallahassee, but things quickly go awry when they cross paths with a group of inept criminals along the way.",
              "popularity": 164.931,
              "poster_path": "/gavGnAMTXPkpoFgG0stwgIgKb64.jpg",
              "release_date": "2024-02-22",
              "title": "Drive-Away Dolls",
              "video": false,
              "vote_average": 5.671,
              "vote_count": 127
            },
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
              "popularity": 149.701,
              "poster_path": "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
              "release_date": "1994-09-23",
              "title": "The Shawshank Redemption",
              "video": false,
              "vote_average": 8.704,
              "vote_count": 25941
            },
            {
              "adult": false,
              "backdrop_path": "/jw4SNkaSgbrO7VJPsZUZqbBg1Ph.jpg",
              "genre_ids": [
                18,
                12
              ],
              "id": 618588,
              "original_language": "en",
              "original_title": "Arthur the King",
              "overview": "Over the course of ten days and 435 miles, an unbreakable bond is forged between pro adventure racer Michael Light and a scrappy street dog companion dubbed Arthur. As the team is pushed to their outer limits of endurance in the race, Arthur redefines what victory, loyalty and friendship truly mean.",
              "popularity": 169.72,
              "poster_path": "/q1zJFGgLIz7rR9qpEZl21wFGnPx.jpg",
              "release_date": "2024-03-15",
              "title": "Arthur the King",
              "video": false,
              "vote_average": 6.526,
              "vote_count": 19
            }
          ],
          "total_pages": 59,
          "total_results": 1163
        }
        """.utf8)
    }
}
