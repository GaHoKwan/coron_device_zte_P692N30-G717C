.class public Lcom/mediatek/gallery3d/drm/DrmHelper;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# static fields
.field private static final DRM_DEFAULT_TEXT_SIZE:F = 26.0f

.field public static final DRM_INCLUSION:Ljava/lang/String; = "GalleryDrmInclusion"

.field public static final DRM_MICRO_THUMB_BLACK_BG:I = 0x0

.field public static final DRM_MICRO_THUMB_DEFAULT_BG:I = -0xbbbbbc

.field public static final DRM_MICRO_THUMB_IN_DIP:F = 133.33333f

.field public static final DRM_MICRO_THUMB_PIXEL_COUNT:I = 0x9c40

.field public static DRM_SHOW_STATE_HDMI:I = 0x0

.field public static DRM_SHOW_STATE_NORMAL:I = 0x0

.field public static DRM_SHOW_STATE_SMB:I = 0x0

.field public static DRM_SHOW_STATE_WFD:I = 0x0

.field public static final INVALID_DRM_LEVEL:I = -0x1

.field public static final NO_DRM_INCLUSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/DrmHelper"

.field private static isDrmLockIconInited:Z

.field private static mDefaultDisplay:Landroid/view/Display;

.field private static mDrmGreenLockOverlay:Landroid/graphics/Bitmap;

.field private static mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

.field private static mDrmProtectText1:Lcom/android/gallery3d/ui/StringTexture;

.field private static mDrmProtectText2:Lcom/android/gallery3d/ui/StringTexture;

.field private static mDrmProtectText3:Lcom/android/gallery3d/ui/StringTexture;

.field private static mDrmRedLockOverlay:Landroid/graphics/Bitmap;

.field private static mDrmShowState:I

.field private static mHdmiProtectText:Lcom/android/gallery3d/ui/StringTexture;

.field private static final mIsDrmSupported:Z

.field private static mSmbProtectText:Lcom/android/gallery3d/ui/StringTexture;

.field private static mWfdSecurityOptionVal:I

.field public static sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

.field private static sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

.field public static sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mIsDrmSupported:Z

    .line 80
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 82
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDefaultDisplay:Landroid/view/Display;

    .line 299
    sput-boolean v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->isDrmLockIconInited:Z

    .line 300
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmRedLockOverlay:Landroid/graphics/Bitmap;

    .line 301
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmGreenLockOverlay:Landroid/graphics/Bitmap;

    .line 377
    sput v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mWfdSecurityOptionVal:I

    .line 379
    sput v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_NORMAL:I

    .line 380
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_WFD:I

    .line 381
    const/4 v0, 0x2

    sput v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_SMB:I

    .line 382
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_HDMI:I

    .line 384
    sget v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_NORMAL:I

    sput v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmShowState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRightsStatus(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "action"

    .prologue
    .line 185
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 188
    :cond_0
    if-nez p1, :cond_1

    .line 189
    const-string v0, "Gallery2/DrmHelper"

    const-string v1, "checkRightsStatus:got null file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static checkRightsStatusForTap(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "action"

    .prologue
    .line 196
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 199
    :cond_0
    if-nez p1, :cond_1

    .line 200
    const-string v0, "Gallery2/DrmHelper"

    const-string v1, "checkRightsStatusForTap:got null file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatusForTap(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "bgColor"

    .prologue
    .line 226
    if-lez p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 227
    :cond_0
    const-string v2, "Gallery2/DrmHelper"

    const-string v3, "createBitmap:invalid Bitmap argumentation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x0

    .line 237
    :goto_0
    return-object v1

    .line 232
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 233
    .local v1, canvasBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public static drawRightBottom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIF)V
    .locals 6
    .parameter "canvas"
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "scale"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p6

    float-to-int v4, v0

    .line 277
    .local v4, texWidth:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p6

    float-to-int v5, v0

    .line 278
    .local v5, texHeight:I
    add-int v0, p2, p4

    sub-int v2, v0, v4

    add-int v0, p3, p5

    sub-int v3, v0, v5

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public static drmDrawDefaultImage(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 416
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText1:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v1

    .line 417
    .local v1, textHeight:I
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v2

    mul-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 419
    .local v0, beginY:I
    sget v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmShowState:I

    sget v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_NORMAL:I

    if-ne v2, v3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, p0, v3, v0}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 422
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText1:Lcom/android/gallery3d/ui/StringTexture;

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText1:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 423
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText2:Lcom/android/gallery3d/ui/StringTexture;

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText2:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 424
    sget v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmShowState:I

    sget v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_WFD:I

    if-ne v2, v3, :cond_2

    .line 425
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText3:Lcom/android/gallery3d/ui/StringTexture;

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText3:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 426
    :cond_2
    sget v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmShowState:I

    sget v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_SMB:I

    if-ne v2, v3, :cond_3

    .line 427
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mSmbProtectText:Lcom/android/gallery3d/ui/StringTexture;

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->mSmbProtectText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 428
    :cond_3
    sget v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmShowState:I

    sget v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_HDMI:I

    if-ne v2, v3, :cond_0

    .line 429
    sget-object v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mHdmiProtectText:Lcom/android/gallery3d/ui/StringTexture;

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->mHdmiProtectText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto/16 :goto_0
.end method

.method public static drmIsNeedDrawDefault(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 435
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmShowState:I

    sget v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->DRM_SHOW_STATE_NORMAL:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static drmResourceInit()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x41d0

    .line 387
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "wifi_display_security_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mWfdSecurityOptionVal:I

    .line 389
    const-string v1, "Gallery2/DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityOptionVal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->mWfdSecurityOptionVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x7f0c025c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText1:Lcom/android/gallery3d/ui/StringTexture;

    .line 393
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x7f0c025d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText2:Lcom/android/gallery3d/ui/StringTexture;

    .line 396
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x7f0c025e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmProtectText3:Lcom/android/gallery3d/ui/StringTexture;

    .line 399
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x7f0c025f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mSmbProtectText:Lcom/android/gallery3d/ui/StringTexture;

    .line 402
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x7f0c0260

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mHdmiProtectText:Lcom/android/gallery3d/ui/StringTexture;

    .line 405
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    sget-object v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v3, 0x7f02009e

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    .line 407
    const-string v1, "Gallery2/DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Icon H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmProtectIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method public static drmSetShowState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 411
    sput p0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmShowState:I

    .line 412
    const-string v0, "Gallery2/DrmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drm set show state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method public static ensureBitmapMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 285
    if-nez p0, :cond_1

    move-object p0, v2

    .line 296
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 286
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, temp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 293
    .local v1, tempCanvas:Landroid/graphics/Canvas;
    const v3, -0xbbbbbc

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 294
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 295
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 296
    goto :goto_0
.end method

.method public static forceDecodeDrmUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "cr"
    .parameter "drmUri"
    .parameter "options"
    .parameter "consume"

    .prologue
    const/4 v1, 0x0

    .line 167
    sget-boolean v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->mIsDrmSupported:Z

    if-nez v2, :cond_1

    .line 168
    const-string v2, "Gallery2/DrmHelper"

    const-string v3, "Decode Drm image when Drm is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    if-nez p2, :cond_2

    .line 173
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 176
    .restart local p2
    :cond_2
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    .line 180
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 181
    .local v0, tempDcfDecoder:Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static forceDecryptFile(Ljava/lang/String;Z)[B
    .locals 3
    .parameter "pathName"
    .parameter "consume"

    .prologue
    .line 357
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 359
    :goto_0
    return-object v1

    .line 358
    :cond_1
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 359
    .local v0, dcfDecoder:Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getDrmInclusionFromData(Landroid/os/Bundle;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, drmInclusion:I
    if-nez p0, :cond_0

    move v1, v0

    .line 119
    .end local v0           #drmInclusion:I
    .local v1, drmInclusion:I
    :goto_0
    return v1

    .line 108
    .end local v1           #drmInclusion:I
    .restart local v0       #drmInclusion:I
    :cond_0
    const-string v3, "android.intent.extra.drm_level"

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 109
    .local v2, drmLevel:I
    if-eq v2, v4, :cond_1

    .line 110
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 111
    or-int/lit8 v0, v0, 0x2

    :cond_1
    :goto_1
    move v1, v0

    .line 119
    .end local v0           #drmInclusion:I
    .restart local v1       #drmInclusion:I
    goto :goto_0

    .line 112
    .end local v1           #drmInclusion:I
    .restart local v0       #drmInclusion:I
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 113
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 114
    :cond_3
    const/4 v3, 0x4

    if-ne v3, v2, :cond_1

    .line 115
    or-int/lit8 v0, v0, 0x1e

    goto :goto_1
.end method

.method public static getDrmManagerClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 1
    .parameter "context"

    .prologue
    .line 206
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 209
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    return-object v0
.end method

.method public static getDrmMicroThumbDim(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    .line 94
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDefaultDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDefaultDisplay:Landroid/view/Display;

    .line 97
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v0, metrics:Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    const v1, 0x43055555

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getDrmWhereClause(I)Ljava/lang/String;
    .locals 4
    .parameter "drmInclusion"

    .prologue
    .line 123
    and-int/lit8 p0, p0, 0x1e

    .line 124
    const/16 v2, 0x1e

    if-ne v2, p0, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const-string v0, "is_drm=0 OR is_drm IS NULL"

    .line 129
    .local v0, noDrmClause:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, whereClause:Ljava/lang/String;
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    .line 136
    if-nez v1, :cond_6

    const-string v1, "drm_method=1"

    .line 141
    :cond_2
    :goto_1
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_3

    .line 142
    if-nez v1, :cond_7

    const-string v1, "drm_method=2"

    .line 147
    :cond_3
    :goto_2
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_4

    .line 148
    if-nez v1, :cond_8

    const-string v1, "drm_method=4"

    .line 153
    :cond_4
    :goto_3
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_5

    .line 154
    if-nez v1, :cond_9

    const-string v1, "drm_method=8"

    .line 159
    :cond_5
    :goto_4
    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_drm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v0, v1

    .line 162
    goto :goto_0

    .line 136
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 142
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 148
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 154
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_a
    move-object v1, v0

    .line 159
    goto/16 :goto_5
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 363
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 366
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-virtual {v0, p1}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOverlay(I)Lcom/android/gallery3d/ui/Texture;
    .locals 3
    .parameter "subType"

    .prologue
    .line 241
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_1

    .line 242
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x2020043

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

    .line 246
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

    .line 254
    :goto_0
    return-object v0

    .line 247
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_3

    .line 248
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;

    if-nez v0, :cond_2

    .line 249
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x2020044

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;

    .line 252
    :cond_2
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;

    goto :goto_0

    .line 254
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 314
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 315
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getWfdSecurityOption()I
    .locals 1

    .prologue
    .line 441
    sget v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mWfdSecurityOptionVal:I

    return v0
.end method

.method public static initDrmLockIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 304
    sget-boolean v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->isDrmLockIconInited:Z

    if-nez v0, :cond_0

    .line 305
    const v0, 0x2020044

    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmRedLockOverlay:Landroid/graphics/Bitmap;

    .line 307
    const v0, 0x2020043

    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmGreenLockOverlay:Landroid/graphics/Bitmap;

    .line 309
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->isDrmLockIconInited:Z

    .line 311
    :cond_0
    return-void
.end method

.method public static isTimeIntervalMedia(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .parameter "context"
    .parameter "path"
    .parameter "action"

    .prologue
    const/4 v2, -0x1

    .line 321
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v1, :cond_0

    .line 322
    new-instance v1, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v1, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 324
    :cond_0
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 325
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    const-string v1, "license_start_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_1

    const-string v1, "license_expiry_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v2, v1, :cond_2

    .line 328
    :cond_1
    const/4 v1, 0x1

    .line 330
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static permitShowThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 258
    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "subType"

    .prologue
    .line 263
    const/high16 v6, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V

    .line 264
    return-void
.end method

.method public static renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "subType"
    .parameter "scale"

    .prologue
    .line 268
    invoke-static {p5}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getOverlay(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v1

    .line 269
    .local v1, overlay:Lcom/android/gallery3d/ui/Texture;
    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    .line 270
    invoke-static/range {v0 .. v6}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drawRightBottom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIF)V

    goto :goto_0
.end method

.method public static showDrmMicroThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 85
    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showProtectInfo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 213
    const-string v1, "Gallery2/DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showProtectInfo(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmManagerClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    .line 217
    .local v0, drmManagerClient:Lcom/mediatek/drm/OmaDrmClient;
    if-eqz v0, :cond_2

    .line 218
    invoke-static {p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    goto :goto_0

    .line 220
    :cond_2
    const-string v1, "Gallery2/DrmHelper"

    const-string v2, "showProtectInfo:get drm manager client failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static supportConsume(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 348
    if-nez p0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaItem;->isDrmMethod(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 350
    goto :goto_0
.end method
