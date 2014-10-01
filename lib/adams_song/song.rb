require "adams_song/version"

class String

  def adams_song?
    that = self.downcase.gsub(/[^a-zA-Z\d\s]/, '')
    !!(that.match /i?\s?(cant|couldnt)\s+wait\s+(till|until)\s+i\s+(got|get)\s+home\s+to\s+pass\s+the\s+time\s+in\s+my\s+room\s+alone/) ||
    !!(that.match /i?\s?never\s+thought\s+id\s+die\s+alone\s+(i laughed the loudest|another six months)\s+(whod have known|ill be unknown)/) ||
    !!(that.match /i?\s?never\s+conquered\s+rarely\s+came\s+(tomorrow|16 just)\s+(held|holds)\s+such\s+better\s+days/) ||
    !!(that.match /days\s+when\s+i\s+(can still|still)\s+(feel|felt)\s+alive\s+(when i|we)\s+(couldnt|cant)\s+wait\s+to\s+get\s+outside/) ||
    !!(that.match /i\s+traced\s+the\s+cord\s+back\s+to\s+the\s+wall\s+no\s+wonder\s+it\s+was\s+never\s+plugged\s+in\s+at\s+all/) ||
    !!(that.match /i took my time i hurried up the choice was mine i didnt think enough/) || # i am bored now. this is boring.
    !!(that.match /im too depressed to go on youll be sorry when im gone/) ||
    !!(that.match /give all my things to all my friends youll never step foot in my room again/) ||
    !!(that.match /remember the time that i spilled the cup of apple juice in the hall please tell mom this is not her fault/)

  end

end