require 'block-is-hash'
require 'map-rec'

require_relative 'compiler'



def nginx_conf &block
  repeats = %i(server load_module fastcgi_param set if_)

  hash = block_is_hash repeats, &block

  Compiler.new(replace_elems repeats).compile replace_elems(hash)
end


def replace_elems object
  map = { if_: :if, return_: :return }
  map_rec object do |x|
    if map.keys.include? x
      map[x]
    else
      x
    end
  end
end
