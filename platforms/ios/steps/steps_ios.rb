require_all 'platforms/ios'

class StepsIOS
  def login
    extend Login
  end

  def cameras
    extend Cameras
  end
end
