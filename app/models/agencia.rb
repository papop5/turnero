class Agencia < ActiveRecord::Base

	include Export

	enum zona: {centro: 'centro', uraba: 'uraba', costa: 'costa', choco: 'choco'}
end
