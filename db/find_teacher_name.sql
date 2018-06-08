select address from addresses
where studentid = (
    select studentid from students
    where lastname = $1
)
returning *;