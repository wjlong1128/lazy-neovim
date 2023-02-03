local s1, comment = pcall(require, "Comment")
if s1 then
  comment.setup()
end

local s2, alternate = pcall(require, "alternate-toggler")
if s2 then
  alternate.setup({
    alternates = {
      ["=="] = "!=",
    },
  })
end

local s3, pairs = pcall(require, "nvim-autopairs")
if s3 then
  pairs.setup({})
end
