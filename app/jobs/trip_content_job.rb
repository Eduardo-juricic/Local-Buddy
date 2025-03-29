class TripContentJob < ApplicationJob
  queue_as :default

  def perform(trip_id)
    trip = Trip.find_by(id: trip_id)
    return unless trip

    client = OpenAI::Client.new

    # Gera o conteúdo do roteiro
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Provide a detailed travel guide including restaurants, cafes, tourist attractions, and everything interesting for a tourist in this place: #{trip.name}. Make sure to include the address of each location mentioned, and there's no need to start with phrases like 'Sure!' or 'Here it is...'. Just provide the travel guide." }]
    })

    trip.update!(content: chatgpt_response["choices"][0]["message"]["content"])

    # Gera a imagem
    response = client.images.generate(parameters: {
      prompt: "Me retorne uma imagem do principal ponto turistico da cidade: #{trip.name}",
      size: "1024x1024"
    })

    url = response["data"][0]["url"]
    file = URI.parse(url).open

    trip.photo.purge if trip.photo.attached?
    trip.photo.attach(io: file, filename: "ai_generated_image.jpg", content_type: "image/png")
  end
end
