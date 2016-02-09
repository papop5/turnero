class Agencia < ActiveRecord::Base
	enum zona: {centro: 'centro', uraba: 'uraba', costa: 'costa', choco: 'choco'}
end
