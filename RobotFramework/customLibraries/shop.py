from robot.api.deco import library, keyword

@library
class shop:

    @keyword
    def hello_world(self):
        print("hello world")