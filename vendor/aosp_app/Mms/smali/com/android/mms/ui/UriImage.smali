.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final JPEGCONTENTTYPE:Ljava/lang/String; = "image/jpeg"

.field private static final LOCAL_LOGV:Z = true

.field private static final NUMBER_OF_RESIZE_ATTEMPTS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mms/image"

.field private static final sImageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsResize:Z


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mContextTemp:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/UriImage;->sImageArray:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/UriImage;->sIsResize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 107
    :cond_1
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UriImage init : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 115
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 118
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 121
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UriImage uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 111
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private buildSrcFromPath()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 169
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mContextTemp:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getExternalCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, mTempFile:Ljava/io/File;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 186
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageModel got mSrc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method private decodeBoundsInfo()V
    .locals 6

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 276
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 277
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 278
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 279
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 280
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    if-eqz v1, :cond_0

    .line 287
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 294
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    if-eqz v1, :cond_0

    .line 287
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 288
    :catch_1
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 285
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 287
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 285
    :cond_1
    :goto_2
    throw v3

    .line 288
    :catch_2
    move-exception v0

    .line 290
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 288
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v0

    .line 290
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    goto :goto_1
.end method

.method public static getExifRotation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, degrees:I
    packed-switch p0, :pswitch_data_0

    .line 633
    :goto_0
    :pswitch_0
    return v0

    .line 619
    :pswitch_1
    const/4 v0, 0x0

    .line 620
    goto :goto_0

    .line 622
    :pswitch_2
    const/16 v0, 0x5a

    .line 623
    goto :goto_0

    .line 625
    :pswitch_3
    const/16 v0, 0xb4

    .line 626
    goto :goto_0

    .line 628
    :pswitch_4
    const/16 v0, 0x10e

    .line 629
    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getImageArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lcom/android/mms/ui/UriImage;->sImageArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getImageRotationDegree(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 671
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return v4

    .line 674
    :cond_1
    const/4 v2, 0x0

    .line 676
    .local v2, inputForRotate:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 677
    if-eqz v2, :cond_3

    .line 678
    const/4 v3, 0x0

    .line 679
    .local v3, orientation:I
    new-instance v1, Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;

    invoke-direct {v1, v2}, Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 680
    .local v1, exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    if-eqz v1, :cond_3

    .line 681
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 682
    invoke-static {v3}, Lcom/android/mms/ui/UriImage;->getExifRotation(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 690
    if-eqz v2, :cond_0

    .line 692
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/io/IOException;
    const-string v5, "Mms/image"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .end local v1           #exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    .end local v3           #orientation:I
    :goto_1
    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 686
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 687
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "Mms/image"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 690
    if-eqz v2, :cond_0

    .line 692
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 693
    :catch_2
    move-exception v0

    .line 694
    const-string v5, "Mms/image"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 690
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 692
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 690
    :cond_2
    :goto_2
    throw v4

    .line 693
    :catch_3
    move-exception v0

    .line 694
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/image"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 690
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    if-eqz v2, :cond_0

    .line 692
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 693
    :catch_4
    move-exception v0

    .line 694
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/image"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static getIsResize()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/mms/ui/UriImage;->sIsResize:Z

    return v0
.end method

.method public static getResizedImageData(IIIIILandroid/net/Uri;Landroid/content/Context;)[B
    .locals 39
    .parameter "width"
    .parameter "height"
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 364
    move/from16 v31, p0

    .line 365
    .local v31, outWidth:I
    move/from16 v30, p1

    .line 368
    .local v30, outHeight:I
    const/16 v35, 0x1

    .line 369
    .local v35, scaleFactor:I
    :goto_0
    div-int v2, v31, v35

    move/from16 v0, p2

    if-gt v2, v0, :cond_0

    div-int v2, v30, v35

    move/from16 v0, p3

    if-le v2, v0, :cond_1

    .line 370
    :cond_0
    mul-int/lit8 v35, v35, 0x2

    goto :goto_0

    .line 374
    :cond_1
    const/16 v38, 0x1

    .line 375
    .local v38, tempScaleFactor:I
    :goto_1
    div-int v2, v31, v38

    move/from16 v0, p3

    if-gt v2, v0, :cond_2

    div-int v2, v30, v38

    move/from16 v0, p2

    if-le v2, v0, :cond_3

    .line 376
    :cond_2
    mul-int/lit8 v38, v38, 0x2

    goto :goto_1

    .line 379
    :cond_3
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_4

    .line 380
    move/from16 v35, v38

    .line 383
    :cond_4
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 384
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData: wlimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hlimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sizeLimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", initialScaleFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_5
    const/16 v20, 0x0

    .line 392
    .local v20, input:Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 393
    .local v21, inputForRotate:Ljava/io/InputStream;
    const/16 v28, 0x0

    .line 395
    .local v28, os:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x1

    .line 396
    .local v9, attempts:I
    const/16 v34, 0x1

    .line 397
    .local v34, resultTooBig:Z
    const/16 v23, 0x0

    .local v23, isMustResize:Z
    move-object/from16 v29, v28

    .line 399
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .local v29, os:Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_0
    new-instance v26, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 400
    .local v26, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v35

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 401
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 404
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v21

    .line 405
    const/16 v27, 0x0

    .line 406
    .local v27, orientation:I
    const/4 v13, 0x0

    .line 409
    .local v13, degree:I
    if-eqz v21, :cond_a

    .line 410
    :try_start_1
    new-instance v15, Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 411
    .local v15, exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    if-eqz v15, :cond_a

    .line 412
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v27

    .line 413
    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/UriImage;->getExifRotation(I)I

    move-result v13

    .line 416
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 418
    .local v19, imageUri:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/ui/UriImage;->setIsResize(Z)V

    .line 420
    const-string v16, ""

    .line 421
    .local v16, filePath:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_7

    .line 422
    const/4 v11, 0x0

    .line 424
    .local v11, c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p6

    move-object/from16 v4, p5

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 426
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 427
    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 431
    :cond_6
    if-eqz v11, :cond_7

    .line 432
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 437
    .end local v11           #c:Landroid/database/Cursor;
    :cond_7
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 438
    .local v22, isAdd:Ljava/lang/Boolean;
    sget-object v2, Lcom/android/mms/ui/UriImage;->sImageArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/ImageData;

    .line 439
    .local v18, imageData:Lcom/android/mms/ui/ImageData;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/mms/ui/ImageData;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/mms/ui/ImageData;->mImageUri:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/mms/ui/ImageData;->mDegree:I

    if-ne v2, v13, :cond_11

    .line 442
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 454
    .end local v18           #imageData:Lcom/android/mms/ui/ImageData;
    :cond_9
    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 455
    sget-object v2, Lcom/android/mms/ui/UriImage;->sImageArray:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/ImageData;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1, v13}, Lcom/android/mms/ui/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 463
    .end local v15           #exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #imageUri:Ljava/lang/String;
    .end local v22           #isAdd:Ljava/lang/Boolean;
    :cond_a
    if-eqz v21, :cond_b

    .line 465
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    .line 472
    :cond_b
    :goto_4
    :try_start_5
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image rotation is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " degree"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    .line 473
    const/16 v32, 0x5f

    .line 475
    .local v32, quality:I
    const/4 v2, 0x0

    :try_start_6
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v10

    .line 477
    .local v10, b:Landroid/graphics/Bitmap;
    if-nez v10, :cond_16

    .line 478
    const/4 v2, 0x0

    .line 594
    if-eqz v20, :cond_c

    .line 596
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 601
    :cond_c
    :goto_5
    if-eqz v29, :cond_d

    .line 603
    :try_start_8
    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10

    :cond_d
    :goto_6
    move-object/from16 v28, v29

    .line 591
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v13           #degree:I
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v27           #orientation:I
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .end local v32           #quality:I
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :cond_e
    :goto_7
    return-object v2

    .line 431
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v13       #degree:I
    .restart local v15       #exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #imageUri:Ljava/lang/String;
    .restart local v26       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v27       #orientation:I
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_f

    .line 432
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_f
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 460
    .end local v11           #c:Landroid/database/Cursor;
    .end local v15           #exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #imageUri:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 461
    .local v14, e:Ljava/io/IOException;
    :try_start_a
    const-string v2, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 463
    if-eqz v21, :cond_b

    .line 465
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 466
    :catch_1
    move-exception v14

    .line 467
    :try_start_c
    const-string v2, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    .line 586
    .end local v13           #degree:I
    .end local v14           #e:Ljava/io/IOException;
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v27           #orientation:I
    :catch_2
    move-exception v14

    move-object/from16 v28, v29

    .line 587
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .local v14, e:Ljava/io/FileNotFoundException;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :goto_8
    :try_start_d
    const-string v2, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 588
    const/4 v2, 0x0

    .line 594
    if-eqz v20, :cond_10

    .line 596
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 601
    .end local v14           #e:Ljava/io/FileNotFoundException;
    :cond_10
    :goto_9
    if-eqz v28, :cond_e

    .line 603
    :try_start_f
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_7

    .line 604
    :catch_3
    move-exception v14

    .line 605
    .local v14, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-static {v3, v4, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 446
    .end local v14           #e:Ljava/io/IOException;
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #degree:I
    .restart local v15       #exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v18       #imageData:Lcom/android/mms/ui/ImageData;
    .restart local v19       #imageUri:Ljava/lang/String;
    .restart local v22       #isAdd:Ljava/lang/Boolean;
    .restart local v26       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v27       #orientation:I
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :cond_11
    :try_start_10
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/mms/ui/ImageData;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/mms/ui/ImageData;->mImageUri:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/mms/ui/ImageData;->mImageUri:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/mms/ui/ImageData;->mDegree:I

    if-eq v2, v13, :cond_8

    .line 449
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/ThumbnailManager;->clearBackingStore()V

    .line 450
    sget-object v2, Lcom/android/mms/ui/UriImage;->sImageArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_3

    .line 463
    .end local v15           #exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #imageData:Lcom/android/mms/ui/ImageData;
    .end local v19           #imageUri:Ljava/lang/String;
    .end local v22           #isAdd:Ljava/lang/Boolean;
    :catchall_1
    move-exception v2

    if-eqz v21, :cond_14

    .line 465
    :try_start_11
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_4

    .line 463
    :cond_14
    :goto_b
    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_4

    .line 589
    .end local v13           #degree:I
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v27           #orientation:I
    :catch_4
    move-exception v14

    move-object/from16 v28, v29

    .line 590
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .local v14, e:Ljava/lang/OutOfMemoryError;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :goto_c
    :try_start_13
    const-string v2, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 591
    const/4 v2, 0x0

    .line 594
    if-eqz v20, :cond_15

    .line 596
    :try_start_14
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 601
    .end local v14           #e:Ljava/lang/OutOfMemoryError;
    :cond_15
    :goto_d
    if-eqz v28, :cond_e

    .line 603
    :try_start_15
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    goto/16 :goto_7

    .line 604
    :catch_5
    move-exception v14

    .line 605
    .local v14, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 481
    .end local v14           #e:Ljava/io/IOException;
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #b:Landroid/graphics/Bitmap;
    .restart local v13       #degree:I
    .restart local v26       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v27       #orientation:I
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v32       #quality:I
    :cond_16
    :try_start_16
    invoke-static {v10, v13}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 483
    const/16 v25, 0x1

    .line 484
    .local v25, needReduce:Z
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_17

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_17

    .line 485
    const/16 v25, 0x0

    .line 487
    :cond_17
    if-eqz v25, :cond_18

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_18

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_18

    .line 488
    const/16 v25, 0x0

    .line 490
    :cond_18
    if-nez v25, :cond_19

    if-eqz v23, :cond_1f

    .line 491
    :cond_19
    if-eqz v23, :cond_1a

    .line 492
    const/16 v23, 0x0

    .line 493
    const/16 v35, 0x2

    .line 497
    :cond_1a
    div-int v37, v31, v35

    .line 498
    .local v37, scaledWidth:I
    div-int v36, v30, v35

    .line 500
    .local v36, scaledHeight:I
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 501
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_1b
    div-int v2, v31, v35

    div-int v3, v30, v35

    const/4 v4, 0x0

    invoke-static {v10, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 510
    if-nez v10, :cond_1f

    .line 511
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 512
    const-string v2, "Mms/image"

    const-string v3, "Bitmap.createScaledBitmap returned NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_2

    .line 514
    :cond_1c
    const/4 v2, 0x0

    .line 594
    if-eqz v20, :cond_1d

    .line 596
    :try_start_17
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11

    .line 601
    :cond_1d
    :goto_e
    if-eqz v29, :cond_1e

    .line 603
    :try_start_18
    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    :cond_1e
    :goto_f
    move-object/from16 v28, v29

    .line 514
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .line 524
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .end local v36           #scaledHeight:I
    .end local v37           #scaledWidth:I
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :cond_1f
    :try_start_19
    new-instance v28, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_2

    .line 526
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_1a
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v10, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 527
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_8

    move-result v24

    .line 532
    .local v24, jpgFileSize:I
    const/4 v12, 0x0

    .local v12, count:I
    move-object/from16 v29, v28

    .line 534
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :goto_10
    move/from16 v0, v24

    move/from16 v1, p4

    if-le v0, v1, :cond_22

    const/16 v2, 0x8

    if-ge v12, v2, :cond_22

    .line 536
    mul-int v2, v32, p4

    :try_start_1b
    div-int v33, v2, v24

    .line 537
    .local v33, reducedQuality:I
    const/16 v2, 0xa

    move/from16 v0, v33

    if-lt v0, v2, :cond_21

    .line 538
    move/from16 v32, v33

    .line 541
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 542
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_20
    new-instance v28, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_2

    .line 546
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_1c
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v10, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 551
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_8

    move-result v24

    .line 552
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v29, v28

    .line 553
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_10

    .line 548
    :cond_21
    :try_start_1d
    const-string v2, "Mms/image"

    const-string v3, "reducedQuality < MessageUtils.MINIMUM_IMAGE_COMPRESSION_QUALITY"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v33           #reducedQuality:I
    :cond_22
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_2

    move-object/from16 v28, v29

    .line 561
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v12           #count:I
    .end local v24           #jpgFileSize:I
    .end local v25           #needReduce:Z
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :goto_11
    :try_start_1e
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 562
    const-string v3, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v28, :cond_29

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " width="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int v4, v31, v35

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " height="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int v4, v30, v35

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " scaleFactor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " quality="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_23
    mul-int/lit8 v35, v35, 0x2

    .line 572
    add-int/lit8 v9, v9, 0x1

    .line 573
    if-eqz v28, :cond_24

    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    move/from16 v0, p4

    if-le v2, v0, :cond_2a

    :cond_24
    const/16 v34, 0x1

    .line 574
    :goto_13
    const/4 v2, 0x3

    if-ne v9, v2, :cond_25

    if-eqz v34, :cond_25

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-ge v2, v0, :cond_25

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-ge v2, v0, :cond_25

    .line 576
    const/16 v23, 0x1

    .line 578
    :cond_25
    if-eqz v34, :cond_26

    const/4 v2, 0x4

    if-lt v9, v2, :cond_2e

    .line 580
    :cond_26
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v34, :cond_27

    .line 581
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData returning NULL because the result is too big:  requested max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_14

    .line 585
    :cond_27
    if-eqz v34, :cond_2b

    const/4 v2, 0x0

    .line 594
    :goto_14
    if-eqz v20, :cond_28

    .line 596
    :try_start_1f
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e

    .line 601
    :cond_28
    :goto_15
    if-eqz v28, :cond_e

    .line 603
    :try_start_20
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_6

    goto/16 :goto_7

    .line 604
    :catch_6
    move-exception v14

    .line 605
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 556
    .end local v14           #e:Ljava/io/IOException;
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v14

    move-object/from16 v28, v29

    .line 557
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .local v14, e:Ljava/lang/OutOfMemoryError;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :goto_16
    :try_start_21
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 586
    .end local v14           #e:Ljava/lang/OutOfMemoryError;
    :catch_8
    move-exception v14

    goto/16 :goto_8

    .line 562
    :cond_29
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    goto/16 :goto_12

    .line 573
    :cond_2a
    const/16 v34, 0x0

    goto/16 :goto_13

    .line 585
    :cond_2b
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_21} :catch_14

    move-result-object v2

    goto :goto_14

    .line 594
    .end local v13           #degree:I
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v27           #orientation:I
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .end local v32           #quality:I
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v28, v29

    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :goto_17
    if-eqz v20, :cond_2c

    .line 596
    :try_start_22
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_9

    .line 601
    :cond_2c
    :goto_18
    if-eqz v28, :cond_2d

    .line 603
    :try_start_23
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_a

    .line 594
    :cond_2d
    :goto_19
    throw v2

    .line 597
    :catch_9
    move-exception v14

    .line 598
    .local v14, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 604
    .end local v14           #e:Ljava/io/IOException;
    :catch_a
    move-exception v14

    .line 605
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 597
    .local v14, e:Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v14

    .line 598
    .local v14, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 597
    .local v14, e:Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v14

    .line 598
    .local v14, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 466
    .end local v14           #e:Ljava/io/IOException;
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #degree:I
    .restart local v26       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v27       #orientation:I
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v14

    .line 467
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_24
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_24} :catch_4

    goto/16 :goto_b

    .line 597
    .end local v14           #e:Ljava/io/IOException;
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v32       #quality:I
    :catch_e
    move-exception v14

    .line 598
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 597
    .end local v14           #e:Ljava/io/IOException;
    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #b:Landroid/graphics/Bitmap;
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v14

    .line 598
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 604
    .end local v14           #e:Ljava/io/IOException;
    :catch_10
    move-exception v14

    .line 605
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 597
    .end local v14           #e:Ljava/io/IOException;
    .restart local v25       #needReduce:Z
    .restart local v36       #scaledHeight:I
    .restart local v37       #scaledWidth:I
    :catch_11
    move-exception v14

    .line 598
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 604
    .end local v14           #e:Ljava/io/IOException;
    :catch_12
    move-exception v14

    .line 605
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 466
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v14           #e:Ljava/io/IOException;
    .end local v25           #needReduce:Z
    .end local v32           #quality:I
    .end local v36           #scaledHeight:I
    .end local v37           #scaledWidth:I
    :catch_13
    move-exception v14

    .line 467
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_25
    const-string v2, "Mms/image"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_25} :catch_4

    goto/16 :goto_4

    .line 594
    .end local v13           #degree:I
    .end local v14           #e:Ljava/io/IOException;
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v27           #orientation:I
    .end local v29           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v28       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v2

    goto/16 :goto_17

    .line 589
    .restart local v13       #degree:I
    .restart local v26       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v27       #orientation:I
    .restart local v32       #quality:I
    :catch_14
    move-exception v14

    goto/16 :goto_c

    .line 556
    .restart local v10       #b:Landroid/graphics/Bitmap;
    .restart local v25       #needReduce:Z
    :catch_15
    move-exception v14

    goto/16 :goto_16

    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v25           #needReduce:Z
    :cond_2e
    move-object/from16 v29, v28

    .end local v28           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v29       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 190
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContextTemp:Landroid/content/Context;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 193
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 196
    .local v7, c:Landroid/database/Cursor;
    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 197
    if-nez v7, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returns null result."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returns 0 or multiple rows."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :catch_0
    move-exception v8

    .line 266
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v0, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFromContentUri couldn\'t load image uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 270
    return-void

    .line 209
    :cond_3
    :try_start_2
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, filePath:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 215
    :cond_4
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 255
    :cond_5
    :goto_1
    iput-object v10, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 256
    const-string v0, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageModel got file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContentType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->buildSrcFromPath()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 268
    .end local v10           #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 222
    :cond_6
    :try_start_3
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    .line 226
    .restart local v10       #filePath:Ljava/lang/String;
    :try_start_4
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 241
    :goto_2
    :try_start_5
    const-string v0, "_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 242
    .local v11, nameIndex:I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_5

    .line 243
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 228
    .end local v11           #nameIndex:I
    :catch_1
    move-exception v8

    .line 232
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 233
    :catch_2
    move-exception v9

    .line 234
    .local v9, ex:Ljava/lang/IllegalArgumentException;
    :try_start_7
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 235
    const-string v0, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFromContentUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resolver.getType => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 251
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .end local v9           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v11       #nameIndex:I
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContextTemp:Landroid/content/Context;

    .line 129
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 130
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 132
    .local v3, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, extension:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 138
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 145
    .end local v0           #dotPos:I
    :cond_0
    const-string v4, "Mms/image"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageModel got file path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 149
    const-string v4, "application/octet-stream"

    iput-object v4, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 150
    if-eqz v2, :cond_1

    const-string v4, "dcf"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    new-instance v1, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 153
    const-string v4, "Mms/image"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageModel got drm content, mContentType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v1           #drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    :cond_1
    const-string v4, "Mms/image"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageModel got mContentType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->buildSrcFromPath()V

    .line 162
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 640
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 641
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 642
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 645
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 646
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 648
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 649
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    move-object p0, v7

    .line 657
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 652
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 654
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "Mms/image"

    const-string v1, "We have no memory to rotate."

    invoke-static {v0, v1, v8}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setIsResize(Z)V
    .locals 0
    .parameter "isResize"

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/mms/ui/UriImage;->sIsResize:Z

    .line 100
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 9
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 331
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 333
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    iget v1, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    iget-object v5, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/UriImage;->getResizedImageData(IIIIILandroid/net/Uri;Landroid/content/Context;)[B

    move-result-object v7

    .line 335
    .local v7, data:[B
    if-nez v7, :cond_1

    .line 337
    const-string v0, "Mms/image"

    const-string v1, "Resize image failed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v8, 0x0

    .line 349
    .end local v8           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    :goto_0
    return-object v8

    .line 341
    .restart local v8       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 342
    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    goto :goto_0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 665
    return-void
.end method
