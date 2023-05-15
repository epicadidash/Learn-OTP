defmodule Mastery.Core.Template do
  defstruct ~w[name category instructions raw compiled generators checker]a
  end
defmodule Mastery.Core.Question do
  defstruct ~w[asked substitutions template]a
end
defmodule Mastery.Core.Response do
  defstruct ~w[quiz_title template_name to email answer correct timestamp]a
 end
 defmodule Mastery.Core.Quiz do
  defstruct title: nil,
  mastery: 3,
  templates: %{ },
  used: [ ],
  current_question: nil,
  last_response: nil,
  record: %{ },
  mastered: [ ]
  end
