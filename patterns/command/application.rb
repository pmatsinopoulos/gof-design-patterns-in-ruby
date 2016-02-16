class Application
  def add(document)
    documents << document
  end

  def documents
    @documents ||= []
  end
end