defmodule Thesis.Submissions.Job do
  use Ecto.Schema
  import Ecto.Changeset

  import Honeydew.EctoPollQueue.Schema

  alias Thesis.Submissions.Submission

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "jobs" do
    field(:image, :string)
    field(:cmd, :string)
    field(:finished, :boolean, default: false)
    belongs_to(:submission, Submission)

    timestamps()

    honeydew_fields(:run_jobs)
  end

  @required_fields [:image, :cmd]

  def changeset(%__MODULE__{} = struct, params \\ %{}) do
    struct
    |> cast(params, @required_fields)
  end
end
