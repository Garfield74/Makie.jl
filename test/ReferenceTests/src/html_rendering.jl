"""
Embedds all produced media in one big html file
"""
function generate_preview(path=joinpath(@__DIR__, "preview.html"); media_root=basedir("recorded"))
    open(path, "w") do io
        for file in readdir(media_root)
            media = joinpath(media_root, file)
            println(io, "<h1> $file </h1>")
            if isdir(media)
                medias = joinpath.(media, readdir(media))
                embed_media(io, medias)
            else
                embed_media(io, media)
            end
        end
    end
end

function generate_test_summary(path, recorded_root, refimages_root, scores)
    open(path, "w") do io
        scores_sorted = sort!(collect(scores), by=last, rev=true)
        for (filename, score) in scores_sorted
            media_ref = joinpath(refimages_root, filename)
            media_recorded = joinpath(recorded_root, filename)
            println(io, "<h1> $filename : $(round(score, digits=4)) [reference] - [recorded] </h1>")
            println(io, """
            <div style="display: flex">
                <div>
                    $(embed_media(media_ref))
                </div>
                <div>
                    $(embed_media(media_recorded))
                </div>
            </div>
            """)
        end
    end
end

function tourl(path)
    if Sys.iswindows()
        # There might be a nicer way?
        # Anyways, this seems to be needed on windows
        if !startswith(path, "http")
            path = "file:///" * replace(path, "\\" => "/")
        end
    end
    return repr(path)
end

"""
    embed_image(path::AbstractString)
Returns the html to embed an image
"""
function embed_image(path::AbstractString, alt = "")
    if splitext(path)[2] == "pdf"
        return """
            <iframe src=$(tourl(path))></iframe>
        """
    end
    """
    <img src=$(tourl(path)) alt=$(repr(alt))>
    """
end

"""
    embed_video(path::AbstractString)

Generates a html formatted string for embedding video into Documenter Markdown files
(since `Documenter.jl` doesn't support directly embedding mp4's using ![]() syntax).
"""
function embed_video(path::AbstractString, alt = "")
    """
    <video controls autoplay loop muted>
      <source src=$(tourl(path)) type="video/mp4">
      Your browser does not support mp4. Please use a modern browser like Chrome or Firefox.
    </video>
    """
end

"""
Embeds the most common media types as html
"""
function embed_media(path::String, alt = "")
    file, ext = splitext(path)
    if ext in (".png", ".jpg", ".jpeg", ".JPEG", ".JPG", ".gif", ".pdf", ".svg")
        return embed_image(path, alt)
    elseif ext == ".mp4"
        return embed_video(path, alt)
    else
        error("Unknown media extension: $ext with path: $path")
    end
end

embed_media(io::IO, path) = println(io, embed_media(path))

"""
Embeds a vector of media files as HTML
"""
function embed_media(io::IO, paths::AbstractVector{<: AbstractString}, caption = "")
    for path in paths
        println(io, """
        <div style="display:inline-block">
            <p style="display:inline-block; text-align: center">
                $(embed_media(path, caption))
            </p>
        </div>
        """)
    end
end
