update addresses set address = $2, city = $3, state = $4, zip = $5
where studentid = $1
returning address, city, state, zip;