# MySQL のindex バイト数制限(767)
# 191 x 4 = 764
# 255 x 3 = 765
# utf8mb4 でしょ
module ActiveRecord
  module ConnectionAdapters
    class AbstractMysqlAdapter
      NATIVE_DATABASE_TYPES[:string] = { name: "varchar", limit: 191 }
    end
  end
end
