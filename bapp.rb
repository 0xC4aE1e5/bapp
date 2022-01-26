# require json module and that's it
require "json"
# load the file in the first argument
json = File.read(ARGV[0])
# parse the json
data = JSON.parse(json)
# if lang value is python, install python
if data["lang"] == "python"
    if !File.file?("#{Dir.home}/.bapp_python_installed")
        if Gem.win_platform?
            system "winget install Python.Python.3"
        else
            system "sudo apt-get install python3 python-is-python3 || sudo yum install python || sudo pacman -S python"
        end
    end
    File.write("#{Dir.home}/.bapp_python_installed", "true")
    # put the code into tmp
    File.write("tmp", data["code"])
    # run the code
    system "python tmp"
    # delete the file
    File.delete("tmp")
end
# if lang value is ruby, install ruby
if data["lang"] == "ruby"
    # put the code into tmp
    File.write("tmp", data["code"])
    # run the code
    system "ruby tmp"
    # delete the file
    File.delete("tmp")
end
# if lang value is javascript, install node
if data["lang"] == "javascript"
    if !File.file?("#{Dir.home}/.bapp_js_installed")
        if Gem.win_platform?
            system "winget install OpenJS.NodeJS"
        else
            system "sudo apt-get install nodejs || sudo yum install nodejs || sudo pacman -S nodejs"
        end
    end
    File.write("#{Dir.home}/.bapp_js_installed", "true")
    # put the code into tmp
    File.write("tmp", data["code"])
    # run the code
    system "node tmp"
    # delete the file
    File.delete("tmp")
end