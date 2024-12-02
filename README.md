

Problem Description: 
As an administrative faculty member of a university, I need to be able to input a class schedule for a semester and get out the full final exam schedule for that semester.

Solution Approach: 
We approached this solution by using Prolog facts to represent the courses and their schedules, then by using the reasoning that students cannot be in courses that have conflicting schedules,
we deduced that any courses that do have conflicting schedules can share a final exam date/time on finals week. Using these rules, we solved the problem of final exam scheduling for a University.

Sample Query:
assertz(course(CMSC-5753, 'Intelligent Systems', [tue], '6-9:30')).
assertz(course(CMSC-5754, 'AI', [tue], '6-9:30')).

schedule_all_exams([CMSC-5753, CMSC-5754]).

list_all_final_exams.  % This will list the evaluated times for all of the final exams that were asserted as facts into dataset.

More Robust Example:
Steps to run code in SWI-Prolog:

cd([directory_where_file_is_downloaded]).

[finals_schedule].

schedule_all_exams([cs101, cs102, cs103, cs104, cs105, cs106, cs107, cs108, cs109, cs110, cs111, cs112, cs113, cs114, cs115, cs116, cs117, cs118, cs119, cs120,
math101, math102, math103, math104, math105, math106, math107, math108, math109, math110, 
math111, math112, math113, math114, math115, math116, math117, math118, math119, math120, 
phys101, phys102, phys103, phys104, phys105, phys106, phys107, phys108, phys109, phys110, 
phys111, phys112, phys113, phys114, phys115, phys116, phys117, phys118, phys119, phys120,
biol101, biol102, biol103, biol104, biol105, biol106, biol107, biol108, biol109, biol110, 
biol111, biol112, biol113, biol114, biol115, biol116, biol117, biol118, biol119, biol120]).

list_all_final_exams.



Link to ChatGPT prompts used: https://chatgpt.com/share/674785ea-27b0-8001-9ad7-669e69b7dd1d
