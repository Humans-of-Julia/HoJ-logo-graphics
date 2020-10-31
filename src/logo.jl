using Luxor

Drawing(400, 400, joinpath(dirname(@__DIR__), "images", "logo.png"))
origin()
setline(5)
sethue("white")
squircle(O, 185, 185, :fillpreserve)
sethue("black")
strokepath()

@layer begin
    translate(0, 30)
    fontface("AlegreyaSans-BoldItalic")
    fontsize(70)
    text("HUMANS", O - (0, 100), halign=:center)
    fontsize(40)
    text("OF", Point(-65, -50))
    julialogo(centered=true)
end

finish()
