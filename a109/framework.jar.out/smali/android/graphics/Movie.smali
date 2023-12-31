.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private final mNativeMovie:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "nativeMovie"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput p1, p0, Landroid/graphics/Movie;->mNativeMovie:I

    .line 35
    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native decodeMarkedStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 87
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 88
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v0

    .line 89
    .local v0, "asset":I
    invoke-static {v0}, Landroid/graphics/Movie;->nativeDecodeAsset(I)Landroid/graphics/Movie;

    move-result-object v2

    goto :goto_0

    .line 95
    .end local v0    # "asset":I
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p0, v1

    .line 104
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_2
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 106
    invoke-static {p0}, Landroid/graphics/Movie;->decodeMarkedStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    goto :goto_0
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "moov":Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native nativeDecodeAsset(I)Landroid/graphics/Movie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native nativeDestructor(I)V
.end method


# virtual methods
.method public native closeGif()V
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method public native draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget v0, p0, Landroid/graphics/Movie;->mNativeMovie:I

    invoke-static {v0}, Landroid/graphics/Movie;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 137
    return-void

    .line 135
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native gifFrameBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public native gifFrameDuration(I)I
.end method

.method public native gifTotalFrameCount()I
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
