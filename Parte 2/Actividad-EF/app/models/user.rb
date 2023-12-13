class User < ActiveRecord::Base
    validates :username, :presence => true
    validate :username_format

    def username_format
        if @user.username.nil? || !@user.username.match(/^[a-z]/) || @user.username.length > 10
            errors.add(:@user.username, "El nombre de usuario debe comenzar con una letra y tener como máximo 10 caracteres de largo")
        end
    end
end
