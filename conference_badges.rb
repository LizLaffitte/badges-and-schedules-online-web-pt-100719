def badge_maker(name)
	"Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
	group_badge_messages = []
	attendees.each do |attendee|
		group_badge_messages << badge_maker(attendee)
	end
	group_badge_messages
end

def assign_rooms(attendees)
	room_assignments = []
	attendees.each_with_index do |attendee, index|
		room_num = (index + 1)
		room_assignments << "Hello, #{attendee}! You'll be assigned to room #{room_num}!"
	end
	room_assignments
end

def printer(attendees)
	batch_badge_creator(attendees).each {|attendee| puts attendee}
	assign_rooms(attendees).each {|attendee| puts attendee}
end
