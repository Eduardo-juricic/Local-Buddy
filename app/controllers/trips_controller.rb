class TripsController < ApplicationController
  def show
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: ""}]
    })
    @content = chatgpt_response["choices"][0]["message"]["content"]
  end
end
