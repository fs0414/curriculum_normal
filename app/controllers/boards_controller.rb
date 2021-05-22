class BoardsController < ApplicationController
  def index
    @boards = Board.all.includes(:user).order(created_at: :desc)
  end

  def new
    @board = Board.new
  end

  def create
    @board = current_user.boards.build(board_params)
    if @board.save
      redirect_to boards_path, success: t('defaults.message.created', item: Board.model_name.human)
    else
<<<<<<< HEAD
      flash.now['danger'] = t('defaults.message.not_created', item: Board.model_name.human)
=======
      flash.now[:danger] = t('defaults.message.not_created', item: Board.model_name.human)
>>>>>>> master
      render :new
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(:title, :body)
  end
end
