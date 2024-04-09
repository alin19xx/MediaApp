//
//  AiringTodaySeriesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation
import XCTest

final class AiringTodaySeriesMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
        {
          "page": 1,
          "results": [
            {
              "adult": false,
              "backdrop_path": "/butPVWgcbtAjL9Z7jU7Xj1KA8KD.jpg",
              "genre_ids": [
                10767,
                35
              ],
              "id": 22980,
              "origin_country": [
                "US"
              ],
              "original_language": "en",
              "original_name": "Watch What Happens Live with Andy Cohen",
              "overview": "Bravo network executive Andy Cohen discusses pop culture topics with celebrities and reality show personalities.",
              "popularity": 6154.844,
              "poster_path": "/onSD9UXfJwrMXWhq7UY7hGF2S1h.jpg",
              "first_air_date": "2009-07-16",
              "name": "Watch What Happens Live with Andy Cohen",
              "vote_average": 5.105,
              "vote_count": 43
            },
            {
              "adult": false,
              "backdrop_path": "/h0y3OzHzG4yNvn8u3Za6ByH8lrQ.jpg",
              "genre_ids": [
                18,
                10766
              ],
              "id": 45789,
              "origin_country": [
                "DE"
              ],
              "original_language": "de",
              "original_name": "Sturm der Liebe",
              "overview": "These are the stories of relationships taking place in the fictional five-star hotel Fürstenhof, located in Feldkirchen-Westerham near Rosenheim with the plot revolving around members of the family room area, the hotel owners, and employees.",
              "popularity": 4467.207,
              "poster_path": "/9oZjOh3Va3FsiLGouhSogFsBX9G.jpg",
              "first_air_date": "2005-09-26",
              "name": "Sturm der Liebe",
              "vote_average": 6.472,
              "vote_count": 18
            },
            {
              "adult": false,
              "backdrop_path": "/nHS1U0yaaWV0rbcL0MHzZxW2gCZ.jpg",
              "genre_ids": [
                10764
              ],
              "id": 101604,
              "origin_country": [
                "AE"
              ],
              "original_language": "ar",
              "original_name": "قلبي اطمأن",
              "overview": "A program that gives you the chance to live a social experience with a young man called \"Ghaith\". Who is roaming countries to meet people in distress and pain; to look for an opportunity to make a difference in their lives.",
              "popularity": 3221.646,
              "poster_path": "/3iNT3rKs8q7qDr1fWxfznimZ7JV.jpg",
              "first_air_date": "2018-05-17",
              "name": "My Heart Relieved",
              "vote_average": 5.967,
              "vote_count": 15
            },
            {
              "adult": false,
              "backdrop_path": "/u98PeujOJCXCowph9mxRzo9Nw1s.jpg",
              "genre_ids": [
                35
              ],
              "id": 4546,
              "origin_country": [
                "US"
              ],
              "original_language": "en",
              "original_name": "Curb Your Enthusiasm",
              "overview": "The off-kilter, unscripted comic vision of Larry David, who plays himself in a parallel universe in which he can't seem to do anything right, and, by his standards, neither can anyone else.",
              "popularity": 3019.976,
              "poster_path": "/mZqWmSq1M61Jlre3furVDSXvdrN.jpg",
              "first_air_date": "2000-10-15",
              "name": "Curb Your Enthusiasm",
              "vote_average": 8.037,
              "vote_count": 679
            },
            {
              "adult": false,
              "backdrop_path": "/wZsD7yIXU4f7IORXEv2lb5MKao0.jpg",
              "genre_ids": [
                35,
                10751,
                18
              ],
              "id": 52698,
              "origin_country": [
                "EG"
              ],
              "original_language": "ar",
              "original_name": "الكبير أوي",
              "overview": "Al Kabeer seeks to find love again after his wife was gone, unaware that what he is looking for is closer than he imagines.",
              "popularity": 2881.438,
              "poster_path": "/oj4XM6wpGRIcx3QoQx1PF1fx5E5.jpg",
              "first_air_date": "2010-08-11",
              "name": "El Kebeer Awi",
              "vote_average": 6.8,
              "vote_count": 44
            },
            {
              "adult": false,
              "backdrop_path": "/mUid3rbVigsDB3dgUUC04fYPrDB.jpg",
              "genre_ids": [
                10764
              ],
              "id": 137228,
              "origin_country": [
                "US"
              ],
              "original_language": "es",
              "original_name": "La Casa de los Famosos",
              "overview": "",
              "popularity": 2504.629,
              "poster_path": "/fxCgd9KZt06CxMDVztPEuV8F3b9.jpg",
              "first_air_date": "2021-08-24",
              "name": "La Casa de los Famosos",
              "vote_average": 5.667,
              "vote_count": 6
            },
            {
              "adult": false,
              "backdrop_path": "/w0GA9tmKfRgxXj2zPUp0qzDuYjC.jpg",
              "genre_ids": [
                10767,
                35,
                10763
              ],
              "id": 60694,
              "origin_country": [
                "US"
              ],
              "original_language": "en",
              "original_name": "Last Week Tonight with John Oliver",
              "overview": "A half-hour satirical look at the week in news, politics and current events.",
              "popularity": 2371.128,
              "poster_path": "/b12eM3FXNjN7yM7XYTIdmeQRud9.jpg",
              "first_air_date": "2014-04-27",
              "name": "Last Week Tonight with John Oliver",
              "vote_average": 7.9,
              "vote_count": 627
            },
            {
              "adult": false,
              "backdrop_path": "/poct8TOF9rxsPHhgdgaq38uT2cS.jpg",
              "genre_ids": [
                18
              ],
              "id": 238078,
              "origin_country": [
                "EG"
              ],
              "original_language": "ar",
              "original_name": "كوبرا",
              "overview": "The owner of a car repair shop faces many obstacles in his life and is exposed to strange situations that put him in a struggle between good and evil.",
              "popularity": 2279.911,
              "poster_path": "/v4Ras5RbtLpsVAkBxwF3NDYAcY6.jpg",
              "first_air_date": "2024-03-27",
              "name": "Cobra",
              "vote_average": 0,
              "vote_count": 0
            },
            {
              "adult": false,
              "backdrop_path": "/ka6crbC2o8yaBwSuGA39n5PVMC5.jpg",
              "genre_ids": [
                18
              ],
              "id": 240441,
              "origin_country": [
                "CN"
              ],
              "original_language": "zh",
              "original_name": "追风者",
              "overview": "Set in 1928, it tells the story of Wei Ruo Lai and his determination to courageously pursue his strong aspirations in serving his country. He regarded Shen Tu Nan, a senior adviser, as his mentor when he was a low-level employee at a financial institution. Through the excellence of his memory and data analysis ability, Wei Ruo Lai has been favored by Shen Tu Nan. However, his line of work made him witness the blatant corruption and darkness in the financial field unleashed by the Kuomintang with his own eyes.",
              "popularity": 2247.281,
              "poster_path": "/dEfojxMIcvNIi7pIRskUMb27exV.jpg",
              "first_air_date": "2024-03-21",
              "name": "War of Faith",
              "vote_average": 9,
              "vote_count": 1
            },
            {
              "adult": false,
              "backdrop_path": "/s92ZvqE4gWOrZq60AKvhgZZxDY4.jpg",
              "genre_ids": [
                10764
              ],
              "id": 240909,
              "origin_country": [
                "CO"
              ],
              "original_language": "es",
              "original_name": "La Casa de los Famosos Colombia",
              "overview": "",
              "popularity": 2233.517,
              "poster_path": "/tZxusxFBfkxkFk7xgf0jAg1Xl3b.jpg",
              "first_air_date": "2024-02-11",
              "name": "La Casa de los Famosos Colombia",
              "vote_average": 5.727,
              "vote_count": 11
            },
            {
              "adult": false,
              "backdrop_path": "/bot2SpsSu6PrqEeahccMbk2HIXM.jpg",
              "genre_ids": [],
              "id": 244291,
              "origin_country": [
                "IN"
              ],
              "original_language": "hi",
              "original_name": "Aankh Micholi",
              "overview": "Undercover cop Rukmini gets married into a traditional family as the 'Aadarsh Bahu. Oscillating dual lives, how long will she be able to maintain her cover?",
              "popularity": 2110.172,
              "poster_path": "/r76hWdtecuohPeK0nGiwyOW3jjh.jpg",
              "first_air_date": "2024-01-22",
              "name": "Aankh Micholi",
              "vote_average": 1,
              "vote_count": 1
            },
            {
              "adult": false,
              "backdrop_path": "/kRdujm449heLBsNL1F3m8Gvs3Yg.jpg",
              "genre_ids": [
                18
              ],
              "id": 242458,
              "origin_country": [
                "SY"
              ],
              "original_language": "ar",
              "original_name": "تاج",
              "overview": "During the French mandate of Syria, ex-boxing champion Taj is accused of collaborating with the colonizer. Disgraced, he wages a ruthless war to clear his name.",
              "popularity": 2098.145,
              "poster_path": "/u4fVU82Z00grG2PqTZnrYX17MUc.jpg",
              "first_air_date": "2024-03-11",
              "name": "Taj",
              "vote_average": 10,
              "vote_count": 1
            },
            {
              "adult": false,
              "backdrop_path": null,
              "genre_ids": [
                18
              ],
              "id": 236738,
              "origin_country": [
                "MY"
              ],
              "original_language": "ms",
              "original_name": "Nyawa Berganti Cinta",
              "overview": "Narrating the conflict faced by an organ transplant specialist when he himself had to face the challenge of professionalism between prioritizing patients on the waiting list or prioritizing his own wife's life in a kidney transplant to continue living.\n\n Izhar is a doctor who is committed to his career to the point of neglecting his wife, Aishah who is suffering from cancer.",
              "popularity": 2053.412,
              "poster_path": "/8ETKxEaPlwzqOof4OsYUBFvaoHv.jpg",
              "first_air_date": "2024-03-12",
              "name": "Nyawa Berganti Cinta",
              "vote_average": 6,
              "vote_count": 1
            },
            {
              "adult": false,
              "backdrop_path": "/Ar41Y0xwQugN0WslKcislVoqtux.jpg",
              "genre_ids": [
                18
              ],
              "id": 222283,
              "origin_country": [
                "SY"
              ],
              "original_language": "ar",
              "original_name": "العربجي",
              "overview": "Abdo the charioteer's life becomes beset by a series of hurdles as he grapples with oppression and a fierce quest for love in old Damascus.",
              "popularity": 2032.141,
              "poster_path": "/2fSCXZ88SNBY7Ff2XyKDfwYdKfI.jpg",
              "first_air_date": "2023-03-23",
              "name": "The Coachman",
              "vote_average": 6.5,
              "vote_count": 2
            },
            {
              "adult": false,
              "backdrop_path": "/vDcl9CSD4mD8a8mbpBRTpNLExoG.jpg",
              "genre_ids": [
                18,
                80
              ],
              "id": 196033,
              "origin_country": [
                "SY"
              ],
              "original_language": "ar",
              "original_name": "كسر عضم",
              "overview": "",
              "popularity": 2013.799,
              "poster_path": "/uk9OQU3pQUCTiocxcTdR50LysKx.jpg",
              "first_air_date": "2022-04-02",
              "name": "Breaking Bones",
              "vote_average": 0,
              "vote_count": 0
            },
            {
              "adult": false,
              "backdrop_path": "/bsMYCdiRHQG9rsUeZrFYGacldNr.jpg",
              "genre_ids": [
                18
              ],
              "id": 244644,
              "origin_country": [
                "EG"
              ],
              "original_language": "ar",
              "original_name": "العتاولة",
              "overview": "After falling in love, Nassar, a professional thief, is determined to leave the world of crime. But he soon finds himself in the middle of a fierce war waged against him by those affected by his decision.",
              "popularity": 2009.142,
              "poster_path": "/zTWpvIpKyOR2LUchIdKDYJGfjB6.jpg",
              "first_air_date": "2024-03-11",
              "name": "The Porters",
              "vote_average": 10,
              "vote_count": 1
            },
            {
              "adult": false,
              "backdrop_path": "/lxiVSSy62EgJaCqoL4zw13MokXX.jpg",
              "genre_ids": [
                18,
                10759
              ],
              "id": 224882,
              "origin_country": [
                "EG"
              ],
              "original_language": "ar",
              "original_name": "الحشاشين",
              "overview": "The events take place in a historical context, in the 11th century, where the leader of the Assassins, Hassan al-Sabah, and his leadership of the band that was famous for carrying out bloody assassinations of prominent figures at that stage.",
              "popularity": 1996.987,
              "poster_path": "/qhnkrV58m9lLUL0BWX4MtKRqpKH.jpg",
              "first_air_date": "2024-03-11",
              "name": "The Assassins",
              "vote_average": 7.5,
              "vote_count": 6
            },
            {
              "adult": false,
              "backdrop_path": "/gajaq6JL3dK5BQvUMy0fApAA7mx.jpg",
              "genre_ids": [
                18
              ],
              "id": 122543,
              "origin_country": [
                "EG"
              ],
              "original_language": "ar",
              "original_name": "المداح",
              "overview": "Saber Al Maddah is a devout and lovable man. Al-Shaytan was able to get him because of the one whose heart was attached to her love, so he killed the closest people to her, and his life was turned upside down.",
              "popularity": 1991.803,
              "poster_path": "/i7iDMhsjlevQy85LE8pCAxJj63w.jpg",
              "first_air_date": "2021-04-13",
              "name": "Al Maddah",
              "vote_average": 4.6,
              "vote_count": 10
            },
            {
              "adult": false,
              "backdrop_path": "/lBMZ5hNn9sJ1q4GVUYshgz5SPOf.jpg",
              "genre_ids": [
                18
              ],
              "id": 244674,
              "origin_country": [
                "KW"
              ],
              "original_language": "ar",
              "original_name": "بعد غيابك عني",
              "overview": "",
              "popularity": 1973.952,
              "poster_path": "/dYur7epMutUsRtvyjImHiy5FIzj.jpg",
              "first_air_date": "2024-03-11",
              "name": "After You Left Me",
              "vote_average": 0,
              "vote_count": 0
            },
            {
              "adult": false,
              "backdrop_path": "/b9fg4Y1ohi8CrptRzlp2WJfMETD.jpg",
              "genre_ids": [
                18
              ],
              "id": 245981,
              "origin_country": [
                "SY"
              ],
              "original_language": "ar",
              "original_name": "ولاد بديعة",
              "overview": "In the tannery neighborhood on the outskirts of Damascus, the death of an influential man ignites a fierce battle between his children that begins with their greed for inheritance and does not end with the secrets they hide.",
              "popularity": 1926.332,
              "poster_path": "/o5c5bz21s0BgqOrrE3wuVDUxSGR.jpg",
              "first_air_date": "2024-03-11",
              "name": "Badeea's Children",
              "vote_average": 1,
              "vote_count": 1
            }
          ],
          "total_pages": 15,
          "total_results": 288
        }
        """.utf8)
    }
}
