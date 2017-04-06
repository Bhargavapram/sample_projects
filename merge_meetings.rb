module Interview
	class MergeMeeting
		def initialize(meeting_times)
			@sorted_meetings = meeting_times.sort {|a,b| a[0] <=> b[0] }
			@merged_meetings = []
		end

		def merge
			merge_meeting = @sorted_meetings[0]
    
	    @sorted_meetings.each.with_index do |meeting, i|
	      if meeting[0] <= merge_meeting[1]
	        merge_meeting[1] = merge_meeting[1] > meeting[1] ? merge_meeting[1] : meeting[1]
	      else 
	        #if we can't merge it stick it in the merged meetings
	        # no other meetings will merge b/c we sorted
	        @merged_meetings.push(merge_meeting)
	        merge_meeting = meeting
	      end
	  	end
    
    	@merged_meetings.push(merge_meeting)
		end
	end
end

meetings = [[0,1],[3,5],[4,8],[10,12],[9,10]]
p Interview::MergeMeeting.new(meetings).merge