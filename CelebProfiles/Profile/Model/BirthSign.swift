//
//  BirthSign.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 23/03/2025.
//

enum BirthSign: String, Codable {
    case aries
    case taurus
    case gemini
    case cancer
    case leo
    case virgo
    case libra
    case scorpio
    case sagittarius
    case capricorn
    case aquarius
    case pisces

    init(from decoder: Decoder) throws {
        guard
            let value = try? decoder.singleValueContainer().decode(String.self)
        else {
            self = .aries
            return
        }
        self = BirthSign(rawValue: value) ?? .aries
    }
    
    var name: String {
        switch self {
        case .aries:
            return "♈ Aries"
        case .taurus:
            return "♉ Taurus"
        case .gemini:
            return "♊ Gemini"
        case .cancer:
            return "♋ Cancer"
        case .leo:
            return "♌ Leo"
        case .virgo:
            return "♍ Virgo"
        case .libra:
            return "♎ Libra"
        case .scorpio:
            return "♏ Scorpio"
        case .sagittarius:
            return "♐ Sagittarius"
        case .capricorn:
            return "♑ Capricorn"
        case .aquarius:
            return "♒ Aquarius"
        case .pisces:
            return "♓ Pisces"
        }
    }

    var title: String {
        switch self {
        case .aries:
            return "♈ Aries (March 21 - April 19)"
        case .taurus:
            return "♉ Taurus (April 20 - May 20)"
        case .gemini:
            return "♊ Gemini (May 21 - June 20)"
        case .cancer:
            return "♋ Cancer (June 21 - July 22)"
        case .leo:
            return "♌ Leo (July 23 - August 22)"
        case .virgo:
            return "♍ Virgo (August 23 - September 22)"
        case .libra:
            return "♎ Libra (September 23 - October 22)"
        case .scorpio:
            return "♏ Scorpio (October 23 - November 21)"
        case .sagittarius:
            return "♐ Sagittarius (November 22 - December 21)"
        case .capricorn:
            return "♑ Capricorn (December 22 - January 19)"
        case .aquarius:
            return "♒ Aquarius (January 20 - February 18)"
        case .pisces:
            return "♓ Pisces (February 19 - March 20)"
        }
    }

    var description: String {
        switch self {
        case .aries:
            return "Element: Fire | Ruling Planet: Mars | Modality: Cardinal"
        case .taurus:
            return "Element: Earth | Ruling Planet: Venus | Modality: Fixed"
        case .gemini:
            return "Element: Air | Ruling Planet: Mercury | Modality: Mutable"
        case .cancer:
            return "Element: Water | Ruling Planet: Moon | Modality: Cardinal"
        case .leo:
            return "Element: Fire | Ruling Planet: Sun | Modality: Fixed"
        case .virgo:
            return "Element: Earth | Ruling Planet: Mercury | Modality: Mutable"
        case .libra:
            return "Element: Air | Ruling Planet: Venus | Modality: Cardinal"
        case .scorpio:
            return
                "Element: Water | Ruling Planet: Pluto & Mars | Modality: Fixed"
        case .sagittarius:
            return "Element: Fire | Ruling Planet: Jupiter | Modality: Mutable"
        case .capricorn:
            return "Element: Earth | Ruling Planet: Saturn | Modality: Cardinal"
        case .aquarius:
            return "Element: Air | Ruling Planet: Uranus | Modality: Fixed"
        case .pisces:
            return "Element: Water | Ruling Planet: Neptune | Modality: Mutable"
        }
    }

    var positiveTraits: String {
        switch self {
        case .aries:
            return """
                - Confident & Courageous – Aries dives headfirst into challenges.
                
                - Energetic & Enthusiastic – Always ready for action.
                
                - Independent & Strong-willed – Likes to do things their way.
                
                - Passionate & Determined – Gives 100% to their goals.
                
                - Honest & Direct – Speaks their mind without hesitation.
                """
        case .taurus:
            return """
                - Reliable & Loyal – A rock-solid friend and partner.
                
                - Patient & Practical – Takes a steady approach to life.
                
                - Hardworking & Determined – Will work tirelessly to achieve success.
                
                - Loves Comfort & Beauty – Enjoys good food, luxury, and stability.
                
                - Grounded & Strong-willed – Stands firm in their beliefs.
                """
        case .gemini:
            return """
                - Smart & Witty – A natural conversationalist.
                
                - Curious & Adaptable – Loves learning and new experiences.
                
                - Energetic & Playful – Brings excitement everywhere.
                
                - Charming & Social – Makes friends easily.
                
                - Versatile & Multi-Talented – Can excel at many things.
                """
        case .cancer:
            return """
                - Nurturing & Caring – Deeply protective of loved ones.
                
                - Intuitive & Emotionally Deep – Feels everything intensely.
                
                - Loyal & Devoted – Always there for family and friends.
                
                - Creative & Imaginative – Artistic and expressive.
                
                - Strong Homebody Vibes – Loves comfort and security.
                """
        case .leo:
            return """
                - Confident & Charismatic – Natural-born leader.
                
                - Generous & Warm-hearted – Loves making people happy.
                
                - Passionate & Creative – Loves expressing themselves.
                
                - Loyal & Protective – Fiercely devoted to loved ones.
                
                - Energetic & Fun-loving – Always the life of the party.
                """
        case .virgo:
            return """
                - Detail-oriented & Analytical – Great problem solver.
                
                - Hardworking & Reliable – Perfectionist and dedicated.
                
                - Organized & Practical – Loves structure.
                
                - Caring & Helpful – Always willing to assist others.
                
                - Modest & Humble – Doesn’t seek the spotlight.
                """
        case .libra:
            return """
                - Charming & Diplomatic – Knows how to smooth over conflicts.
                
                - Social & Friendly – Loves being around people.
                
                - Fair & Just – Strives for balance and fairness.
                
                - Romantic & Idealistic – Believes in true love.
                
                - Graceful & Stylish – Has an eye for beauty and aesthetics.
                """
        case .scorpio:
            return """
                - Intense & Passionate – All or nothing in everything.
                
                - Loyal & Protective – Fiercely devoted to loved ones.
                
                - Mysterious & Magnetic – Has an intriguing aura.
                
                - Determined & Strong-willed – Never gives up on their goals.
                
                - Deeply Emotional & Intuitive – Senses things others miss.
                """
        case .sagittarius:
            return """
                - Adventurous & Free-spirited – Loves to explore and travel.
                
                - Optimistic & Enthusiastic – Always sees the bright side.
                
                - Honest & Direct – Speaks their mind without hesitation.
                
                - Independent & Open-minded – Values freedom above all.
                
                - Funny & Charismatic – Has a great sense of humor.
                """
        case .capricorn:
            return """
                - Ambitious & Hardworking – Always striving for success.
                
                - Disciplined & Responsible – Takes obligations seriously.
                
                - Patient & Strategic – Thinks long-term.
                
                - Loyal & Dependable – A rock for loved ones.
                
                - Practical & Wise – Makes well-thought-out decisions.
                """
        case .aquarius:
            return """
                - Innovative & Visionary – Always thinking ahead.
                
                - Independent & Free-spirited – Values individuality.
                
                - Intellectual & Analytical – Loves deep conversations.
                
                - Humanitarian & Open-minded – Cares about social issues.
                
                - Quirky & Unique – Always stands out.
                """
        case .pisces:
            return """
                - Empathetic & Compassionate – Deeply feels for others.
                
                - Creative & Imaginative – Has a rich inner world.
                
                - Spiritual & Intuitive – Picks up on vibes easily.
                
                - Romantic & Dreamy – Loves fantasy and escapism.
                
                - Gentle & Kind-hearted – Always willing to help others.
                """
        }
    }

    var negativeTraits: String {
        switch self {
        case .aries:
            return """
                - Impulsive & Impatient – Acts before thinking, gets bored easily.
                
                - Short-tempered & Stubborn – Quick to anger and dislikes being told what to do.
                
                - Competitive & Domineering – Loves winning and can be aggressive.
                
                - Restless & Easily Bored – Constantly seeking excitement.
                """
        case .taurus:
            return """
                - Stubborn & Resistant to Change – Prefers routines and dislikes sudden shifts.
                
                - Possessive & Materialistic – Can be overly attached to people and things.
                
                - Slow to Act – Takes time to make decisions.
                
                - Indulgent & Lazy at Times – Loves relaxation and can procrastinate.
                """
        case .gemini:
            return """
                - Indecisive & Fickle – Struggles to stick to one thing.
                
                - Restless & Easily Distracted – Gets bored quickly.
                
                - Gossipy & Superficial – Loves socializing but can be nosy.
                
                - Emotionally Detached – Avoids deep emotions.
                """
        case .cancer:
            return """
                - Moody & Sensitive – Can take things personally.
                
                - Overly Cautious & Fearful – Worries about the worst-case scenario.
                
                - Clingy & Possessive – Finds it hard to let go.
                
                - Holds Grudges – Doesn’t forget easily.
                """
        case .leo:
            return """
                - Prideful & Stubborn – Struggles with criticism.
                
                - Attention-seeking – Loves being in the spotlight.
                
                - Dramatic & Impulsive – Can exaggerate situations.
                
                - Possessive & Jealous – Wants full loyalty in return.
                """
        case .virgo:
            return """
                - Overcritical & Picky – Holds high standards.
                
                - Anxious & Worrisome – Overthinks everything.
                
                - Reserved & Shy – Can be hard to get close to.
                
                - Workaholic & Overly Serious – Struggles to relax.
                """
        case .libra:
            return """
                - Indecisive & People-pleasing – Struggles to make decisions.
                
                - Avoids Confrontation – Prefers peace over difficult conversations.
                
                - Superficial & Materialistic – Can focus too much on appearances.
                
                - Overly Dependent – Struggles to be alone.
                """
        case .scorpio:
            return """
                - Jealous & Possessive – Can struggle with trust.
                
                - Secretive & Guarded – Takes time to open up.
                
                - Vengeful & Holds Grudges – Doesn’t forgive easily.
                
                - Obsessive & Controlling – Wants full control over situations.
                """
        case .sagittarius:
            return """
                - Impulsive & Reckless – Acts before thinking.
                
                - Blunt & Tactless – Can be too honest.
                
                - Commitment-phobic – Prefers freedom over stability.
                
                - Restless & Easily Bored – Always chasing the next big thing.
                """
        case .capricorn:
            return """
                - Workaholic & Serious – Struggles to relax.
                
                - Stubborn & Traditional – Resistant to change.
                
                - Emotionally Reserved – Takes time to open up.
                
                - Pessimistic & Overly Cautious – Can focus too much on what could go wrong.
                """
        case .aquarius:
            return """
                - Detached & Aloof – Struggles with emotional expression.
                
                - Rebellious & Unpredictable – Dislikes authority and rules.
                
                - Stubborn & Opinionated – Can be rigid in beliefs.
                
                - Emotionally Distant – Can seem cold at times.
                """
        case .pisces:
            return """
                - Overly Sensitive & Emotional – Takes things to heart.
                
                - Escapist & Avoidant – Can retreat into daydreams.
                
                - Indecisive & Easily Swayed – Struggles with decision-making.
                
                - Can Be Overly Trusting – Sometimes too naïve.
                """
        }
    }

    var relationshipTraits: String {
        switch self {
        case .aries:
            return """
                Love: Passionate and intense but needs a partner who matches their energy.
                
                Friendship: Loyal, fun, and loves spontaneous adventures.
                
                Career: Thrives in leadership roles, entrepreneurship, sports, or sales.
                """
        case .taurus:
            return """
                Love: Loyal and sensual but needs security.
                
                Friendship: A dependable and supportive friend.
                
                Career: Thrives in finance, real estate, art, or anything involving stability.
                """
        case .gemini:
            return """
                Love: Playful, flirtatious, and needs intellectual stimulation.
                
                Friendship: Fun, social, and always up for an adventure.
                
                Career: Great in media, marketing, writing, or public relations.
                """
        case .cancer:
            return """
                Love: Deeply affectionate and seeks emotional security.
                
                Friendship: Protective, nurturing, and always supportive.
                
                Career: Thrives in caregiving, counseling, or creative fields.
                """
        case .leo:
            return """
                Love: Passionate and loves grand romantic gestures.
                
                Friendship: Fun, loyal, and always uplifting.
                
                Career: Thrives in entertainment, leadership, and creative industries.
                """
        case .virgo:
            return """
                Love: Loyal, thoughtful, and practical in love.
                
                Friendship: Dependable and always gives great advice.
                
                Career: Thrives in healthcare, research, or anything requiring precision.
                """
        case .libra:
            return """
                Love: Romantic and affectionate but needs harmony.
                
                Friendship: Fun-loving, supportive, and great at giving advice.
                
                Career: Thrives in law, design, diplomacy, or customer relations.
                """
        case .scorpio:
            return """
                Love: Passionate, intense, and deeply loyal.
                
                Friendship: Protective, deep, and selective with friendships.
                
                Career: Thrives in psychology, detective work, business, or research.
                """
        case .sagittarius:
            return """
                Love: Fun-loving and spontaneous but needs space.
                
                Friendship: Exciting, adventurous, and always up for fun.
                
                Career: Thrives in travel, teaching, media, or philosophy.
                """
        case .capricorn:
            return """
                Love: Loyal and committed but takes time to trust.
                
                Friendship: Reliable, wise, and always supportive.
                
                Career: Thrives in business, finance, law, or management.
                """
        case .aquarius:
            return """
                Love: Needs intellectual stimulation and freedom.
                
                Friendship: Fun, unconventional, and always interesting.
                
                Career: Thrives in science, technology, activism, or innovation.
                """
        case .pisces:
            return """
                Love: Deeply romantic and emotional, needs a soulful connection.
                
                Friendship: Caring, intuitive, and always there to listen.
                
                Career: Thrives in the arts, music, healing, or psychology.
                """
        }
    }
}
