class Agencia < ActiveRecord::Base
	enum zona: [:centro, :uraba, :costa, :choco]
end
