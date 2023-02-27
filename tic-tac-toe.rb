class Player
    attr_reader :name
    def initialize(name)
        @name = name
    end
end
class Game
    def initialize(p1, p2)
        @p1 = p1
        @p2 = p2
    end
    def round
        puts "game between #{@p1} and #{@p2}:"
        puts"
             7 | 8 | 9  
            ---|---|---
             4 | 5 | 6 
            ---|---|---
             1 | 2 | 3 "

        a,b,c,d,e,f,g,h,i = " "," "," "," "," "," "," "," "," "
        turn = @p1
        sym = "x"
        game_over = false
    while ( a==" "||b==" "||c==" "||d==" "||e==" "||f==" "||g==" "||h==" "||i==" " ) && game_over != true do
   # 10.times do        
        puts "#{turn} make your move:"
        number = gets.chomp.to_i
        
        case number
        when 7
            a = sym
        when 8
            b = sym
        when 9
            c = sym
        when 4
            d = sym
        when 5
            e = sym
        when 6
            f = sym
        when 1
            g = sym
        when 2
            h = sym
        when 3
            i = sym
        else
            puts "wrong input"
            number = gets.chomp.to_i
        end
        puts"
             #{a} | #{b} | #{c} 
            ---|---|---
             #{d} | #{e} | #{f} 
            ---|---|---
             #{g} | #{h} | #{i} "
        if (a==b&&a==c&&a!=" ")||(d==e&&d==f&&d!=" ")||(g==h&&g==i&&g!=" ")||(a==d&&a==g&&a!=" ")||(b==h&&h==e&&b!=" ")||(c==f&&c==i&&c!=" ")||(a==e&&a==i&&a!=" ")||(c==e&&c==g&&c!=" ")
            puts "#{turn} is win"
            game_over = true
        elsif  turn == @p1
            turn = @p2
            sym = "o"
        else
            turn = @p1
            sym = "x"
        end
    end
    end
end

puts "Enter player 1 name:"
player1 = Player.new(gets.chomp)
puts "Enter player 2 name:"
player2 = Player.new(gets.chomp)

game = Game.new(player1.name, player2.name)
game.round