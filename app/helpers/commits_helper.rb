module CommitsHelper
  def commit_excerpt(commit, mark: false)
    sanitize(
      excerpt(
        highlight(commit.message, commit.q.split(' ')),
        '</mark>',
        radius: 100
      ),
      tags: mark ? %w(mark) : nil
    )
  end
end
