
return {
  settings = {
    cmd = { "sql-language-server", "up", "--method", "stdio" },
    files = {
      ["*.sql"] = {
        sql = {
          format = {
            uppercase = true,
          },
        },
      },
    },
  },
}
