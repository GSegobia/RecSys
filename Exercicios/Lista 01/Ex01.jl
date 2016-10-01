using PyPlot

file_directory = "../../Listas/ml-100k/u.data"

columns_number = 4

f = open(file_directory)

file_content = readdlm(f)

close(f)

file_content = sortrows(file_content, by = x->(x[1]))

println(hist(file_content[:, 1], convert(Int64, file_content[end, 1])))

# occurrences_user = []
# occurrences_times = []
# count = 0
#
# curr_number = 0
# prev_number = file_content[1,1]
#
# for i = 1:size(file_content)[1]
#     curr_number = file_content[i, 1]
#
#     if  curr_number == prev_number
#         count = count + 1
#     else
#         occurrences_user = append!(occurrences_user, [prev_number])
#         occurrences_times = append!(occurrences_times, [count])
#         count = 1
#     end
#
#     prev_number = curr_number
# end
#
# ccurrences_user = append!(occurrences_user, [prev_number])
# occurrences_times = append!(occurrences_times, [count])
#
# occurrences = append!(occurrences_user, occurrences_times)
# occurrences = reshape(occurrences, convert(Int64, length(occurrences)/2), 2)
#
# occurrences = sortrows(occurrences, by = x->(x[2]))
#
# plot(1:size(occurrences,1),occurrences[:,2])
# show()
