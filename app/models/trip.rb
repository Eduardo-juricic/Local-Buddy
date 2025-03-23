class Trip < ApplicationRecord
  def self.generate_content(location)
    normalized_location = location.strip.downcase.gsub(/\s+/, "_")
    Rails.cache.fetch("trip_content/#{normalized_location}", expires_in: 12.hours) do
      client = OpenAI::Client.new
      chatgpt_response = client.chat(parameters: {
        model: "gpt-4o-mini",
        messages: [{ role: "user", content: "Me forneça um guia turístico detalhado incluindo restaurantes, cafeterias, pontos turísticos e tudo que haja de interessante para um turista para este lugar: #{location}. Não esqueça de me dar o endereço dos lugares que vc mencionar, e nao precisa responder com: calro! ou aqui esta... etc. Apenas me de o guia turistico" }]
      })
      chatgpt_response["choices"][0]["message"]["content"]
    end
  end
end
