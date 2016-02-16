class OpenCommand < Command
  # @param application {Application}
  #
  def initialize(application)
    self.application = application
  end

  def execute
    name = ask_user
    unless name.nil? || name.empty?
      document = Document.new(name)
      application.add(document)
      document.open
    end
  end

  attr_accessor :application
  private(:application=, :application)

  private

  def ask_user
    puts 'Give me the name of the document you want to open :'
    gets.chomp
  end
end