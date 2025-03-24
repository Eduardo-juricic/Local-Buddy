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
      messages: [{ role: "user", content: "Me forneça um guia turístico detalhado incluindo restaurantes, cafeterias, pontos turísticos e tudo que haja de interessante para um turista para este lugar: #{name}. Não esqueça de me dar o endereço dos lugares que vc mencionar, e nao precisa responder com: calro! ou aqui esta... etc. Apenas me de o guia turistico"}]
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
