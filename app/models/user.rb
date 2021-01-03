class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]
  
         validates :first_name, :last_name, :phone_number, presence: true
  

         STATE = ['Alabama','Alaska','Arizona','Arkansas',
                  'California','Colorado','Connecticut',
                  'Delaware','District of Columbia',
                  'Florida',
                  'Georgia',
                  'Hawaii',
                  'Idaho','Illinois','Indiana','Iowa',
                  'Kansas','Kentucky',
                  'Louisiana',
                  'Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana',
                  'Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota',
                  'Ohio','Oklahoma','Oregon',
                  'Pennsylvania',
                  'Rhode Island',
                  'South Carolina','South Dakota',
                  'Tennessee','Texas',
                  'Utah',
                  'Vermont','Virgin Island','Virginia',
                  'Washington','West Virginia','Wisconsin','Wyoming'
                ]
        def name
          name = "#{first_name} #{last_name}"
        end

        def self.from_omniauth(auth)
          where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.email = auth.info.email
            user.password = Devise.friendly_token[0,20]
            user.first_name = auth.info.name
          end
        end

end
