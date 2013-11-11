HTMLwithSyntaxHighlighting.class_eval do
  def preprocess(text)
    out = text.gsub(/bnc#(\d+)/, '<a href="https://bugzilla.novell.com/show_bug.cgi?id=\1">bnc#\1</a>')
    out.gsub!(/fate#(\d+)/, '<a href="https://features.opensuse.org/\1">fate#\1</a>')
    out.gsub!(/sr#(\d+)/, '<a href="https://build.opensuse.org/request/show/\1">sr#\1</a>')
    # The \2 part is for preventing the whole thing to look like a email address
    # when a dot is following the expression (like "here@wc." which Redmine
    # would try to turn into a mailto link).
    out.gsub!(/(\w+)@iw([^\w]|$)/, '<a href="https://wiki.innerweb.novell.com/index.php?title=\1">\1@iw</a>\2')
    out.gsub(/(\w+)@c([^\w]|$)/, '<a href="https://connect.opensuse.org/pg/profile/\1">\1@c</a>\2')
  end
end
