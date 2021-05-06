

/* Home Work Assignment #1 : Variables and Constants

    Playground code for Favorite Song

 */

import UIKit

var title : String = "Careless Whisper"
var artist : String = "George Michael"
var album : String = "Careless Whisper"

var songWriters : (String, String) = ("George Michael","Andrew Ridgeley") // Songwriters defined as Tuple

var genre = "Pop"                                                         // Let compiler assign the datatype for variable genre
var yearReleased : Int                                                    // yearReleased split into variable declaration and assignment
yearReleased = 1984
                                                       
let durationInMins : Float = 5.03                                         // Song duration defined as constant

var appearedInMovie : String? = nil                                       // Optional String variable

var grammyAwardWinner : Bool  = false

                                                                          // var lyrics below is a multi line string
var lyrics : String = """

            Time can never mend
            The careless whisper of a good friend
            To the heart and mind
            If your answer's kind
            There's no comfort in the truth
            Pain is all you'll find
            I should have known better, yeah
            I feel so unsure
            As I take your hand and lead you to the dance floor
            As the music dies
            Something in your eyes
            Calls to mind a silver screen
            And all its sad goodbyes
            I'm never gonna dance again
            Guilty feet have got no rhythm
            Though it's easy to pretend
            I know you're not a fool
            I should have known better than to cheat a friend
            And waste a chance that I'd been given
            So I'm never gonna dance again
            The way I danced with you
            Time can never mend
            The careless whisper of a good friend
            To the heart and mind
            If your answer's kind
            There's no comfort in the truth
            Pain is all you'll find
            I'm never gonna dance again
            Guilty feet have got no rhythm
            Though it's easy to pretend
            I know you're not a fool
            I should have known better than to cheat a friend
            And waste a chance that I'd been given
            So I'm never gonna dance again
            The way I danced with you
            Never without your love What am I without your love?
            Tonight the music seems so loud
            I wish that we could lose this crowd
            Maybe it's better this way
            We'd hurt each other with the things we want to say
            We could have been so good together,
            We could have lived this dance forever
            But now, who's gonna dance with me?
            Please stay
            I'm never gonna dance again
            Guilty feet have got no rhythm
            Though it's easy to pretend
            I know you're not a fool
            I should have known better than to cheat a friend
            And waste a chance that I'd been given
            So I'm never gonna dance again
            The way I danced with you
            Now that you're gone
            Now that you're gone
            Now that you're gone
            What I did that was so wrong?
            So wrong that you had to leave me alone?
"""

/* Code to print to console */


print("Song Title : \(title)")
print("Artist : \(artist)")
print("Album : \(album)")
print("Song Writers : \(songWriters.0) and \(songWriters.1)")
print("Genre : \(genre)")
print("Year Released : \(yearReleased)")
print("Duration of song in mins : \(durationInMins) mins")
print("Grammy Award Winner : \(grammyAwardWinner)")
print("Appeared in movie : \(appearedInMovie as String?)")
print()
print("Song Lyrics : \(lyrics)")


// End of Assignment

