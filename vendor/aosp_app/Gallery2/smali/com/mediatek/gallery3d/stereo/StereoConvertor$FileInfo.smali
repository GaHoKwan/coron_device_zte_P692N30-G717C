.class Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
.super Ljava/lang/Object;
.source "StereoConvertor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/stereo/StereoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    if-nez p1, :cond_0

    .line 287
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "FileInfo:got null file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileInfo:got file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-object p1, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public equalByName(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 296
    :cond_0
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "FileInfo: equalByName: invalid params"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 328
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "FileInfo: getName: null mFile!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 320
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "FileInfo: getPath: null mFile!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 304
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "FileInfo: lastModified: null mFile!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-wide/16 v0, 0x0

    .line 307
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0
.end method

.method public setLastModified(J)Z
    .locals 2
    .parameter "time"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 312
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "FileInfo: setLastModified: null mFile!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    goto :goto_0
.end method
