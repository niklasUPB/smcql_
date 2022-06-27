SELECT t.take_id, m.me_id, h.home_id FROM take t JOIN  me m  ON t.take_id = m.me_id JOIN home h ON t.take_id = h.home_id

