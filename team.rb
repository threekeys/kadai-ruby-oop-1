class Team
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  def calc_win_rate()
    win.to_f/(win.to_f+lose.to_f)
  end
  
  def show_team_result()
      puts "#{self.name}の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は"+self.calc_win_rate().to_s+"です。"
  end 
end

yomiuri = Team.new("Giants", 67, 45, 8)
hanshin = Team.new("Tigers", 60, 53, 7)
chunichi = Team.new("Dragons",  60, 55, 5)
yokohama = Team.new("BayStars",  56, 58, 6)
hiroshima = Team.new("Carp",  52, 56, 12)
yakuruto = Team.new("Swallows",  41, 69, 10)

puts "2020年のセリーグ各球団の勝敗情報"
yomiuri.show_team_result
hanshin.show_team_result
chunichi.show_team_result
yokohama.show_team_result
hiroshima.show_team_result
yakuruto.show_team_result
