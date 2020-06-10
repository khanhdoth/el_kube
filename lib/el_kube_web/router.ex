defmodule ElKubeWeb.Router do
  use ElKubeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElKubeWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElKubeWeb do
  #   pipe_through :api
  # end
end

# Ôm lòng đêm, nhìn vầng trăng mới về nhớ chân giang hô
# Ôi phù du từng tuổi xuân đã già, một ngày kia đến bờ đời người như gió qua
# không còn ai đường về ôi quá dài những đêm xa người
# Chén rượu cay một đời tôi uống hoài trả lại từng tin vui cho nhân gian chờ đợij
# Về ngồi trong những ngày nhìn từng hôm nắng ngời nhìn từng khi mưa bay, có những ai xa đời quay về lại
# Về lại nơi cuối trời nhìn mây trôi.....

# Thôi về đi đường trần đâu có gì, tóc xanh mấy mùa
# Có nhiều khi, từ vực khuya bước về, bàn chân ai rất nhẹ, tựa hồn những năm xưa....
# 

