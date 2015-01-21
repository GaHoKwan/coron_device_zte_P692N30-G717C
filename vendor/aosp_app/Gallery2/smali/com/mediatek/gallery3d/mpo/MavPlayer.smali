.class public Lcom/mediatek/gallery3d/mpo/MavPlayer;
.super Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
.source "MavPlayer.java"

# interfaces
.implements Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;
.implements Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;


# static fields
.field private static final MAV_THUMBNAIL_SIZE:I = 0x100

.field private static hasAddToGyroListener:Z

.field private static mAllMavPlayer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/gallery3d/mpo/MavPlayer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastIndex:I

.field private static mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;


# instance fields
.field private TAG:Ljava/lang/String;

.field private angle:[F

.field private mContent:Lcom/android/gallery3d/ui/Texture;

.field private mCount:I

.field private mFirstTime:Z

.field private mMavBitmap:[Landroid/graphics/Bitmap;

.field public mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

.field private mOrientation:I

.field private mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

.field private mValue:F

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const v0, 0xffff

    sput v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mLastIndex:I

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->hasAddToGyroListener:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;-><init>()V

    .line 35
    const-string v0, "Gallery2/MavPlayer"

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mOrientation:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mValue:F

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->timestamp:J

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mFirstTime:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mContent:Lcom/android/gallery3d/ui/Texture;

    return-void

    .line 43
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private refresh(I)V
    .locals 6
    .parameter "lastIndex"

    .prologue
    .line 275
    sget-object v4, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    monitor-enter v4

    .line 276
    :try_start_0
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v3, :cond_0

    .line 277
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->animationFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->initAnimation(II)V

    .line 287
    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 289
    .local v1, time:J
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v3, :cond_1

    .line 290
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    .line 292
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 293
    iget-object v3, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request render consumed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 280
    .end local v1           #time:J
    :cond_2
    :try_start_1
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->getAnimationTagetIndex()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 281
    .local v0, distance:I
    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 282
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->initAnimation(II)V

    goto :goto_0

    .line 287
    .end local v0           #distance:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private requester(Lcom/mediatek/gallery3d/mpo/MavPlayer;I)Z
    .locals 4
    .parameter "player"
    .parameter "index"

    .prologue
    .line 192
    if-ltz p2, :cond_0

    iget v1, p1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    if-ge p2, v1, :cond_0

    iget-object v1, p1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

    aget-object v0, v1, p2

    .line 195
    .local v0, tile:Lcom/android/gallery3d/ui/BitmapTexture;
    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastIndex==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mLastIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object v0, p1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mContent:Lcom/android/gallery3d/ui/Texture;

    .line 198
    const/4 v1, 0x1

    .line 203
    .end local v0           #tile:Lcom/android/gallery3d/ui/BitmapTexture;
    :goto_0
    return v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    const-string v2, "  requester!!!!!!"

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTexture(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 76
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v2, p1

    .line 77
    .local v1, mBitmap:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    if-ge p1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v0, bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;
    if-eqz v0, :cond_1

    .line 80
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

    aput-object v0, v2, p1

    .line 85
    .end local v0           #bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v0       #bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    const-string v3, "bitmapTexture ====== null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public drawMavFrame(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, requestrender:Z
    sget-object v4, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    monitor-enter v4

    .line 300
    :try_start_0
    sget-object v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/mpo/MavPlayer;

    .line 301
    .local v1, player:Lcom/mediatek/gallery3d/mpo/MavPlayer;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/gallery3d/mpo/MavPlayer;->requester(Lcom/mediatek/gallery3d/mpo/MavPlayer;I)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 303
    .end local v1           #player:Lcom/mediatek/gallery3d/mpo/MavPlayer;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->requestRender()V

    .line 307
    :cond_1
    return-void

    .line 303
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCalculateAngle(Landroid/hardware/SensorEvent;)F
    .locals 13
    .parameter "event"

    .prologue
    .line 213
    const v4, 0x3d4ccccd

    .line 218
    .local v4, xSmallRotateTH:F
    const/4 v3, 0x0

    .line 219
    .local v3, valueToUse:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 220
    .local v2, newRotation:I
    iget v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mOrientation:I

    if-eq v5, v2, :cond_0

    .line 222
    iput v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mOrientation:I

    .line 223
    const/4 v5, 0x0

    iput v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mValue:F

    .line 224
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 225
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 226
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 227
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mFirstTime:Z

    .line 229
    :cond_0
    iget v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 245
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 247
    :goto_0
    const/4 v5, 0x0

    add-float/2addr v5, v3

    iput v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mValue:F

    .line 248
    iget-wide v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->timestamp:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mValue:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 249
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v7, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->timestamp:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const v6, 0x3089705f

    mul-float v0, v5, v6

    .line 251
    .local v0, dT:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    float-to-double v7, v7

    iget v9, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mValue:F

    mul-float/2addr v9, v0

    const/high16 v10, 0x4334

    mul-float/2addr v9, v10

    float-to-double v9, v9

    const-wide v11, 0x400921fb54442d18L

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    .line 252
    iget-boolean v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mFirstTime:Z

    if-eqz v5, :cond_2

    .line 253
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x4148

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 254
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x4148

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 255
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mFirstTime:Z

    .line 265
    .end local v0           #dT:F
    :cond_1
    :goto_1
    iget-wide v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->timestamp:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    if-eqz v5, :cond_4

    .line 266
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float v1, v5, v6

    .line 270
    .local v1, mAngle:F
    :goto_2
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->timestamp:J

    .line 271
    return v1

    .line 231
    .end local v1           #mAngle:F
    :pswitch_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 232
    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 236
    goto/16 :goto_0

    .line 239
    :pswitch_2
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    neg-float v3, v5

    .line 240
    goto/16 :goto_0

    .line 242
    :pswitch_3
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    neg-float v3, v5

    .line 243
    goto/16 :goto_0

    .line 256
    .restart local v0       #dT:F
    :cond_2
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 257
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 258
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x41c8

    add-float/2addr v7, v8

    aput v7, v5, v6

    goto :goto_1

    .line 259
    :cond_3
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 260
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 261
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->angle:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    const/high16 v8, 0x41c8

    sub-float/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_1

    .line 268
    .end local v0           #dT:F
    :cond_4
    const/high16 v1, -0x4080

    .restart local v1       #mAngle:F
    goto :goto_2

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onGyroPositionChanged(F)V
    .locals 3
    .parameter "angle"

    .prologue
    .line 180
    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    if-eqz v1, :cond_1

    .line 181
    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x41c8

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 182
    .local v0, index:I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    if-ge v0, v1, :cond_1

    .line 183
    sget v1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mLastIndex:I

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    sget v1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mLastIndex:I

    if-eq v1, v0, :cond_1

    .line 184
    :cond_0
    sput v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mLastIndex:I

    .line 185
    sget v1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mLastIndex:I

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/mpo/MavPlayer;->refresh(I)V

    .line 189
    .end local v0           #index:I
    :cond_1
    return-void
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v2, 0x100

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 89
    new-instance v5, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v5}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    iput-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    .line 90
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iput-boolean v3, v5, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoTotalCount:Z

    .line 91
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iput-boolean v3, v5, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoFrames:Z

    .line 92
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iput-boolean v3, v5, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 93
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iput v7, v5, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    .line 94
    iget-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-static {v7}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    if-le v6, v2, :cond_0

    :goto_0
    iput v2, v5, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 96
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mPath:Ljava/lang/String;

    const-string v6, "image/mpo"

    invoke-static {v8, v2, v5, v6, v8}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    .line 97
    .local v1, mDataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    .line 99
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMavBitmap[i].getWidth===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v6, v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    array-length v2, v2

    iput v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    .line 101
    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    new-array v2, v2, [Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mCount:I

    if-ge v0, v2, :cond_2

    .line 103
    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/mpo/MavPlayer;->addTexture(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0           #i:I
    .end local v1           #mDataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_0
    invoke-static {v7}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    goto :goto_0

    .line 106
    .restart local v1       #mDataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    const-string v3, "mBitmap============ null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 109
    :goto_2
    return v2

    .restart local v0       #i:I
    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v4, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v4

    .line 117
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 118
    iget-object v4, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v4, v0

    .line 119
    .local v2, mBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

    aget-object v3, v4, v0

    .line 123
    .local v3, mTexture:Lcom/android/gallery3d/ui/BitmapTexture;
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    .line 117
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v2           #mBitmap:Landroid/graphics/Bitmap;
    .end local v3           #mTexture:Lcom/android/gallery3d/ui/BitmapTexture;
    :cond_2
    iput-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mContent:Lcom/android/gallery3d/ui/Texture;

    .line 128
    iput-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavBitmap:[Landroid/graphics/Bitmap;

    .line 130
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_3
    iput-object v5, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavcontent:[Lcom/android/gallery3d/ui/BitmapTexture;

    .line 131
    return-void
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;II)Z
    .locals 8
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mContent:Lcom/android/gallery3d/ui/Texture;

    .line 137
    .local v0, content:Lcom/android/gallery3d/ui/Texture;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 138
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 139
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    move p2, p3

    .line 140
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_1

    move v1, v3

    .line 141
    .local v1, rotation:I
    :goto_0
    if-eqz v1, :cond_0

    .line 142
    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-interface {p1, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 143
    int-to-float v4, v1

    invoke-interface {p1, v4, v6, v6, v7}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 144
    neg-int v4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, p3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-interface {p1, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 146
    :cond_0
    int-to-float v4, p2

    invoke-interface {v0}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p3

    invoke-interface {v0}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 149
    .local v2, scale:F
    invoke-interface {p1, v2, v2, v7}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 150
    invoke-interface {v0, p1, v3, v3}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 151
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 152
    const/4 v3, 0x1

    .line 155
    .end local v1           #rotation:I
    .end local v2           #scale:F
    :goto_1
    return v3

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    goto :goto_0

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->TAG:Ljava/lang/String;

    const-string v5, "content or canvas is null"

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 162
    sget-object v1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    monitor-enter v1

    .line 163
    :try_start_0
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 166
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setActive(Z)V

    .line 167
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setOnDrawMavFrameListener(Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;)V

    .line 168
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    .line 169
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    sget-boolean v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->hasAddToGyroListener:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V

    .line 174
    sput-boolean v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->hasAddToGyroListener:Z

    .line 176
    :cond_1
    return v3

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    sget-boolean v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->hasAddToGyroListener:Z

    if-eqz v0, :cond_0

    .line 61
    sput-boolean v3, Lcom/mediatek/gallery3d/mpo/MavPlayer;->hasAddToGyroListener:Z

    .line 62
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->removeGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V

    .line 64
    :cond_0
    sget-object v1, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mAllMavPlayer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setActive(Z)V

    .line 68
    sget-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 71
    :cond_1
    monitor-exit v1

    .line 72
    return v3

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
