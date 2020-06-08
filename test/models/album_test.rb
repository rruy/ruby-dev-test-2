require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    player_1 = players(:shakira)
    player_2 = players(:madona)
    album = Album.new(name: 'Peligro')
    album.players << [player_1, player_2]
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end
end
