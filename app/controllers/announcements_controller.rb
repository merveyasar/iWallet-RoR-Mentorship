class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: %i[ edit update destroy ]


  def index
    @announcements = Announcement.active.ordered
    @announcement = Announcement.new


    set_counters
  end

  def create
    @announcement = Announcement.new(announcement_params)

    if @announcement.save
      redirect_to announcements_path, notice: "İlan başarıyla asıldı!"
    else
      @announcements = Announcement.active.ordered
      error_messages = @announcement.errors.map(&:message)

      flash.now[:alert] = error_messages.join("<br>").html_safe
      render :index, status: :unprocessable_entity
    end
  end


  def destroy
    if @announcement.destroy
      redirect_to announcements_path, notice: "İlan başarıyla silindi!"
    else
      redirect_to announcements_path, alert: "İlan silinirken bir hata oluştu!"
    end
  end


  def edit
    @announcements = Announcement.active.ordered
    set_counters
    render :index
  end

  def update
    if @announcement.update(announcement_params)
      redirect_to root_path, notice: "İlan güncellendi!"
    else
      @announcements = Announcement.active.ordered
      error_messages = @announcement.errors.map(&:message)

      flash.now[:alert] = error_messages.join("<br>").html_safe
      render :index, status: :unprocessable_entity
    end
  end


  private

  def announcement_params
    params.require(:announcement).permit(:title, :content, :importance, :expires_at)
  end

  def set_announcement
    @announcement = Announcement.find(params[:id])
  end

  def set_counters
    @announcements = Announcement.active.ordered

    @counters = {
      low: @announcements.where(importance: :low).count,
      medium: @announcements.where(importance: :medium).count,
      high: @announcements.where(importance: :high).count,
      total: @announcements.count,
      soon_expiring_count: @announcements.where("expires_at IS NOT NULL AND expires_at <= ?", 3.days.from_now).count,
      added_today_count: @announcements.where("created_at >= ?", Time.current.beginning_of_day).count
    }
  end
end
