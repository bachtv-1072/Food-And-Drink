class Admin::CouponsController < Admin::BaseController
  def index
    @coupons = Coupon.all
  end
  def create
    @coupon = Coupon.new coupon_params
    respond_to do |format|
      if @coupon.save
        format.html { redirect_to admin_coupons_path }
        format.js
      else
        render "coupons/new_coupon"
        format.js
      end
    end 
  end
  def destroy
  end
  private 
  def coupon_params
    params.require(:coupon).permit :formality , :price_coupon, :content
  end
end