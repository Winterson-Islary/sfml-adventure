#include <SFML/Graphics.hpp>

int main()
{
    sf::RenderWindow window(sf::VideoMode(800, 600), "SHAPES");
    while (window.isOpen())
    {
        sf::Vector2u size = window.getSize();
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }
        window.clear(sf::Color::White);
        sf::CircleShape shape(50.f);
        shape.setFillColor(sf::Color(190, 60, 130));
        window.draw(shape);
        window.display();
    }
    return 0;
}