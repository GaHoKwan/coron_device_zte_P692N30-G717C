.class public Lcom/android/mms/ui/MmsPlayerActivityItemData;
.super Ljava/lang/Object;
.source "MmsPlayerActivityItemData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPlayerActivityItemData"

.field private static sThumbDefaultImage:Landroid/graphics/Bitmap;

.field private static sThumbDefaultVideo:Landroid/graphics/Bitmap;


# instance fields
.field private mAudioName:Ljava/lang/String;

.field private mAudioType:Ljava/lang/String;

.field private mAudioUri:Landroid/net/Uri;

.field private mImageOrVideoHeight:I

.field private mImageOrVideoLeft:I

.field private mImageOrVideoTop:I

.field private mImageOrVideoWidth:I

.field private mImageType:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mText:Ljava/lang/String;

.field private mTextHeight:I

.field private mTextLeft:I

.field private mTextTop:I

.field private mTextWidth:I

.field private mVideoThumbnail:Landroid/graphics/Bitmap;

.field private mVideoType:Ljava/lang/String;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "imageUri"
    .parameter "videoUri"
    .parameter "audioName"
    .parameter "text"
    .parameter "imageOrVideoLeft"
    .parameter "imageOrVideoTop"
    .parameter "imageOrVideoWidth"
    .parameter "imageOrVideoHeight"
    .parameter "textLeft"
    .parameter "textTop"
    .parameter "textWidth"
    .parameter "textHeight"
    .parameter "imageType"
    .parameter "videoType"
    .parameter "audioUri"
    .parameter "audioType"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoLeft:I

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoTop:I

    .line 94
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoWidth:I

    .line 95
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoHeight:I

    .line 96
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextLeft:I

    .line 97
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextTop:I

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextWidth:I

    .line 99
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextHeight:I

    .line 106
    iput-object p2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageUri:Landroid/net/Uri;

    .line 107
    iput-object p3, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mVideoUri:Landroid/net/Uri;

    .line 108
    iput-object p4, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mAudioName:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mText:Ljava/lang/String;

    .line 110
    iput p6, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoLeft:I

    .line 111
    iput p7, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoTop:I

    .line 112
    iput p8, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoWidth:I

    .line 113
    iput p9, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoHeight:I

    .line 114
    iput p10, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextLeft:I

    .line 115
    move/from16 v0, p11

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextTop:I

    .line 116
    move/from16 v0, p12

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextWidth:I

    .line 117
    move/from16 v0, p13

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextHeight:I

    .line 118
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageType:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mVideoType:Ljava/lang/String;

    .line 120
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mAudioUri:Landroid/net/Uri;

    .line 121
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mAudioType:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 124
    .local v1, density:F
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getDesiredThumbnailWidth(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getDesiredThumbnailHeight(F)I

    move-result v4

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getThumbnailFromVideoUri(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mVideoThumbnail:Landroid/graphics/Bitmap;

    .line 126
    return-void
.end method

.method private getDesiredThumbnailHeight(F)I
    .locals 1
    .parameter "density"

    .prologue
    .line 169
    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private getDesiredThumbnailWidth(F)I
    .locals 1
    .parameter "density"

    .prologue
    .line 165
    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbnailFromImageUri(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "imageUri"
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v4

    .line 176
    :cond_1
    const/4 v2, 0x0

    .line 177
    .local v2, input:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 180
    .local v3, raw:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 181
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 183
    if-eqz v2, :cond_2

    .line 184
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    :cond_2
    :goto_1
    if-nez v3, :cond_5

    .line 197
    sget-object v5, Lcom/android/mms/ui/MmsPlayerActivityItemData;->sThumbDefaultImage:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 198
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200dd

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/android/mms/ui/MmsPlayerActivityItemData;->sThumbDefaultImage:Landroid/graphics/Bitmap;

    .line 200
    :cond_3
    sget-object v4, Lcom/android/mms/ui/MmsPlayerActivityItemData;->sThumbDefaultImage:Landroid/graphics/Bitmap;

    .local v4, thumb:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 183
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    .line 184
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_4
    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "Mms/MmsPlayerActivityItemData"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 189
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/IOException;
    const-string v5, "Mms/MmsPlayerActivityItemData"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 192
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 193
    throw v1

    .line 202
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :cond_5
    move-object v4, v3

    .line 203
    .restart local v4       #thumb:Landroid/graphics/Bitmap;
    if-eq v4, v3, :cond_0

    .line 204
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private getThumbnailFromVideoUri(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "VideoUri"
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 211
    const/4 v2, 0x0

    .line 239
    :cond_0
    :goto_0
    return-object v2

    .line 213
    :cond_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 214
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v0, 0x0

    .line 217
    .local v0, raw:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v1, p2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 218
    const-wide/16 v3, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :goto_1
    if-eqz v0, :cond_2

    .line 229
    const/4 v3, 0x1

    invoke-static {v0, p3, p4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    .local v2, thumb:Landroid/graphics/Bitmap;
    if-eq v2, v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 220
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    :catch_0
    move-exception v3

    goto :goto_1

    .line 234
    :cond_2
    sget-object v3, Lcom/android/mms/ui/MmsPlayerActivityItemData;->sThumbDefaultVideo:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 235
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200de

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/MmsPlayerActivityItemData;->sThumbDefaultVideo:Landroid/graphics/Bitmap;

    .line 237
    :cond_3
    sget-object v2, Lcom/android/mms/ui/MmsPlayerActivityItemData;->sThumbDefaultVideo:Landroid/graphics/Bitmap;

    .restart local v2       #thumb:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 224
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public getAudioName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mAudioName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mAudioType:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getImageOrVideoHeight()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoHeight:I

    return v0
.end method

.method public getImageOrVideoLeft()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoLeft:I

    return v0
.end method

.method public getImageOrVideoTop()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoTop:I

    return v0
.end method

.method public getImageOrVideoWidth()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageOrVideoWidth:I

    return v0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextHeight:I

    return v0
.end method

.method public getTextLeft()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextLeft:I

    return v0
.end method

.method public getTextTop()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextTop:I

    return v0
.end method

.method public getTextWidth()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mTextWidth:I

    return v0
.end method

.method public getVideoThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mVideoThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVideoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mVideoType:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItemData;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method
