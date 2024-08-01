frds = ['Alice', 'Bob', 'Charlie', 'David', 'Eve']
invite_frds = []
for friend in frds
  if friend != 'David'
    invite_frds.push(friend)
  end
end
puts invite_frds