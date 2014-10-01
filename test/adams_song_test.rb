require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/adams_song.rb'

class TestStringAdamsSong <  Minitest::Test

  def test_knows_cant_wait
    assert_equal true, "I can't wait till I get home to pass the time in my room alone".adams_song?
  end

  def test_knows_a_fuzzy_cant
    assert_equal true, "I cant wait till I get home to pass the time in my room alone".adams_song?
  end

  def test_accepts_couldnt
    assert_equal true, "I couldnt wait till I get home to pass the time in my room alone".adams_song?
  end

  def test_knows_about_until
    assert_equal true, "I cant wait until I get home to pass the time in my room alone".adams_song?
  end

  def test_knows_about_got
    assert_equal true, "I can't wait till I got home to pass the time in my room alone".adams_song?
  end

  def test_knows_omissions_are_cool_sometimes
    assert_equal true, "can't wait till I get home to pass the time in my room alone".adams_song?
  end

  def test_dgafs_about_punctuations
    assert_equal true, "I can't wait, till I get home/ to pass the time: in my room alone".adams_song?
  end

  def test_knows_what_is_not_it
    assert_equal false, "I dont want to go to school".adams_song?
  end

  def test_accepts_things_with_hashtags
    assert_equal true, "#watlol I can't wait till I get home to pass the time in my room alone".adams_song?
  end

  def test_accepts_things_with_urls
    assert_equal true, "I can't wait till I get home to pass the time in my room alone http://google.com".adams_song?
  end

  def test_accepts_things_with_twitterish_urls
    assert_equal true, "I can't wait till I get home to pass the time in my room alone tmblr.co/g00gL3".adams_song?
  end

  def test_knows_laughed_loudest
    assert_equal true, "i never thought id die alone i laughed the loudest whod have known".adams_song?
  end

  def test_knows_be_unknown
    assert_equal true, "i never thought id die alone another six months ill be unknown".adams_song?
  end

  def test_knows_tomorrow
    assert_equal true, "i never conquered rarely came tomorrow holds such better days".adams_song?
  end

  def test_knows_sixteen
    assert_equal true, "i never conquered rarely came 16 just held such better days".adams_song?
  end

  def test_knows_we_couldnt
    assert_equal true, "Days when i still felt alive we couldnt wait to get outside".adams_song?
  end

  def test_knows_i_couldnt
    assert_equal true, "Days when i can still feel alive when i cant wait to get outside".adams_song?
  end

  def test_knows_traced_cord
    assert_equal true, "i traced the cord back to the wall no wonder it was never plugged in at all".adams_song?
  end

  def test_knows_took_time
    assert_equal true, "i took my time i hurried up the choice was mine i didnt think enough".adams_song?
  end

  def test_knows_too_depressed
    assert_equal true, "im too depressed to go on youll be sorry when im gone".adams_song?
  end

  def test_knows_all_my_thing
    assert_equal true, "Give all my things to all my friends youll never step foot in my room again".adams_song?
  end

  def test_knows_apple_juice
    assert_equal true, "Remember the time that i spilled the cup Of apple juice in the hall Please tell mom this is not her fault".adams_song?
  end
end