.class public Lcom/android/gallery3d/ui/ResourceTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "ResourceTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/ResourceTexture"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 71
    invoke-static {}, Lcom/android/gallery3d/ui/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 41
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 43
    const/4 v7, 0x1

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 44
    const/4 v3, 0x0

    .line 46
    .local v3, mBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-static {v7, v8, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v4, v3

    .line 65
    .end local v3           #mBitmap:Landroid/graphics/Bitmap;
    .local v4, mBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 47
    .end local v4           #mBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #mBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/16 v5, 0x8

    .line 52
    .local v5, maxTryNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v7, 0x8

    if-ge v2, v7, :cond_0

    .line 54
    :try_start_1
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    const-string v7, "Gallery2/ResourceTexture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmap:try for sample size::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-static {v7, v8, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 62
    :goto_2
    if-eqz v3, :cond_1

    :cond_0
    move-object v4, v3

    .line 65
    .end local v3           #mBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #mBitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 58
    .end local v4           #mBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #mBitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 59
    .local v1, e1:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v7, "Gallery2/ResourceTexture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getBitmap :out of memory when decoding:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    const/4 v3, 0x0

    goto :goto_2

    .line 52
    .end local v1           #e1:Ljava/lang/OutOfMemoryError;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #i:I
    .end local v5           #maxTryNum:I
    :catchall_0
    move-exception v7

    move-object v4, v3

    .end local v3           #mBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #mBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method
