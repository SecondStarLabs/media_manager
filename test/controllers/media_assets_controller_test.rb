require 'test_helper'

class MediaAssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @media_asset = media_assets(:one)
  end

  test "should get index" do
    get media_assets_url
    assert_response :success
  end

  test "should get new" do
    get new_media_asset_url
    assert_response :success
  end

  test "should create media_asset" do
    assert_difference('MediaAsset.count') do
      post media_assets_url, params: { media_asset: { description: @media_asset.description, title: @media_asset.title } }
    end

    assert_redirected_to media_asset_url(MediaAsset.last)
  end

  test "should show media_asset" do
    get media_asset_url(@media_asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_media_asset_url(@media_asset)
    assert_response :success
  end

  test "should update media_asset" do
    patch media_asset_url(@media_asset), params: { media_asset: { description: @media_asset.description, title: @media_asset.title } }
    assert_redirected_to media_asset_url(@media_asset)
  end

  test "should destroy media_asset" do
    assert_difference('MediaAsset.count', -1) do
      delete media_asset_url(@media_asset)
    end

    assert_redirected_to media_assets_url
  end
end
