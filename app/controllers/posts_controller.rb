class PostsController < ApplicationController
  def index
     @posts = Post.all
  end
  def new
  # Postモデルのオブジェクトを作成
  # @postはインスタンス変数で、Viewで参照可能
  @post=Post.new

  end

  def create
    # データはparamsという変数に渡されてくる
    #create は、Postモデルのクラスメソッド
    Post.create(post_params)
  end
  def show
      @post = Post.find(params[:id])
  end

  # 追加
   def edit
       @post = Post.find(params[:id])
   end

   def update
    post = Post.find(params[:id])
    # モデルの更新は、クラスメソッドのupdateメソッドで行える
    post.update(post_params)
    # リダイレクト処理
    redirect_to post
   end
   # 削除機能
    def destroy
        post = Post.find(params[:id])
        post.delete
        # 投稿一覧へリダイレクト
        redirect_to posts_path
    end
  # paramsから欲しいデータのみ抽出
      private
  def post_params
      params.require(:post).permit(:name, :title, :content)
  end

end
