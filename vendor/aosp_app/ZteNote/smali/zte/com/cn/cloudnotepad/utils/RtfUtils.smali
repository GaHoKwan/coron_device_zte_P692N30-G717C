.class public Lzte/com/cn/cloudnotepad/utils/RtfUtils;
.super Ljava/lang/Object;
.source "RtfUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRtf(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "rtfName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/tutego/jrtf/RtfPara;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, paragraphs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/tutego/jrtf/RtfPara;>;"
    invoke-static {}, Lcom/tutego/jrtf/Rtf;->rtf()Lcom/tutego/jrtf/Rtf;

    move-result-object v0

    .line 66
    .local v0, mRtf:Lcom/tutego/jrtf/Rtf;
    invoke-virtual {v0, p0}, Lcom/tutego/jrtf/Rtf;->section(Ljava/util/Collection;)Lcom/tutego/jrtf/Rtf;

    .line 67
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tutego/jrtf/Rtf;->out(Ljava/lang/Appendable;)V

    .line 68
    return-void
.end method

.method public static makeRftPara(Landroid/graphics/Bitmap;)Lcom/tutego/jrtf/RtfPara;
    .locals 11
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x28

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/temp/rtf_temp.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 27
    .local v7, picName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {v7}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 31
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 32
    .local v6, outputStream:Ljava/io/FileOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 33
    const/4 v0, 0x1

    new-array v8, v0, [Lcom/tutego/jrtf/RtfText;

    const/4 v9, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tutego/jrtf/RtfText;->picture(Ljava/io/InputStream;)Lcom/tutego/jrtf/RtfPicture;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    sget-object v5, Lcom/tutego/jrtf/RtfUnit;->POINT:Lcom/tutego/jrtf/RtfUnit;

    invoke-virtual/range {v0 .. v5}, Lcom/tutego/jrtf/RtfPicture;->size(DDLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfPicture;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v10, v10}, Lcom/tutego/jrtf/RtfPicture;->scale(II)Lcom/tutego/jrtf/RtfPicture;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/tutego/jrtf/RtfPicture$PictureType;->AUTOMATIC:Lcom/tutego/jrtf/RtfPicture$PictureType;

    invoke-virtual {v0, v1}, Lcom/tutego/jrtf/RtfPicture;->type(Lcom/tutego/jrtf/RtfPicture$PictureType;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v8}, Lcom/tutego/jrtf/RtfTextPara;->p([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    return-object v0
.end method

.method public static makeRftPara(Ljava/lang/String;Ljava/lang/String;)Lcom/tutego/jrtf/RtfPara;
    .locals 9
    .parameter "string"
    .parameter "pictureFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 42
    if-nez p0, :cond_1

    .line 43
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 46
    :cond_1
    if-nez p0, :cond_3

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 50
    :cond_2
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 53
    new-array v7, v1, [Lcom/tutego/jrtf/RtfText;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tutego/jrtf/RtfText;->picture(Ljava/io/InputStream;)Lcom/tutego/jrtf/RtfPicture;

    move-result-object v0

    .line 54
    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v1, v1

    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v3, v3

    sget-object v5, Lcom/tutego/jrtf/RtfUnit;->POINT:Lcom/tutego/jrtf/RtfUnit;

    invoke-virtual/range {v0 .. v5}, Lcom/tutego/jrtf/RtfPicture;->size(DDLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfPicture;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/tutego/jrtf/RtfPicture$PictureType;->AUTOMATIC:Lcom/tutego/jrtf/RtfPicture$PictureType;

    invoke-virtual {v0, v1}, Lcom/tutego/jrtf/RtfPicture;->type(Lcom/tutego/jrtf/RtfPicture$PictureType;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v7}, Lcom/tutego/jrtf/RtfTextPara;->p([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    goto :goto_0

    .line 58
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v8

    invoke-static {v0}, Lcom/tutego/jrtf/RtfTextPara;->p([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    goto :goto_0
.end method
