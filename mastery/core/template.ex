defmodule Mastery.Core.Template do
  defstruct ~w[name category instructions raw compiled generators checker]a
  def new(fields) do
  raw = Keyword.fetch!(fields, :raw)
  struct!(
  __MODULE__,
  Keyword.put(fields, :compiled, EEx.compile_string(raw))
  )
  end
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
