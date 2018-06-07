# frozen_string_literal: true

# Copyright 2018 Tristan Robert

# This file is part of ForemanProxmox.

# ForemanProxmox is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# ForemanProxmox is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with ForemanProxmox. If not, see <http://www.gnu.org/licenses/>.

module FogExtensions
  module Proxmox
    class KeyPair
      attr_accessor :id
      attr_accessor :name
      attr_accessor :range

      def persisted?
        !id.nil? && id != ''
      end

      def initialize(attr)
        self.id = attr[:id]
        self.name = attr[:name]
        self.range = attr[:range]
      end
    end
  end
end
