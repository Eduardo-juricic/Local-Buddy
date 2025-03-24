class Trip < ApplicationRecord
  has_one_attached :photo
  require "open-uri"

  after_save if: -> { saved_change_to_name? } do
    set_content
    set_photo
  end

  private

  def set_content
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Provide a detailed travel guide including restaurants, cafes, tourist attractions, and everything interesting for a tourist in this place: #{name}. Make sure to include the address of each location mentioned, and there's no need to start with phrases like 'Sure!' or 'Here it is...'. Just provide the travel guide."}]
    })
    new_content = chatgpt_response["choices"][0]["message"]["content"]

    update!(content: new_content)
    return new_content
  end

  def set_photo
    client = OpenAI::Client.new
    response = client.images.generate(parameters: {
      prompt: "Me retorne uma imagem do principal ponto turistico da cidade: #{name}", size: "1024x1024"
    })

    url = response["data"][0]["url"]
    file =  URI.parse(url).open

    photo.purge if photo.attached?
    photo.attach(io: file, filename: "ai_generated_image.jpg", content_type: "image/png")
    return photo
  end
end
