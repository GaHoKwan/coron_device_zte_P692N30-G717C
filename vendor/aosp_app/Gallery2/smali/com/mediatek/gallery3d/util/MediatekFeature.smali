.class public Lcom/mediatek/gallery3d/util/MediatekFeature;
.super Ljava/lang/Object;
.source "MediatekFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;,
        Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    }
.end annotation


# static fields
.field public static final ALL_DRM_MEDIA:I = 0x1e

.field public static final ALL_MPO_MEDIA:I = 0x3c0

.field private static final CURSOR_MIMETYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final CURSOR_MIMETYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field public static final EXCLUDE_DEFAULT_MEDIA:I = 0x1

.field public static final EXCLUDE_MPO_MAV:I = 0x10000

.field public static final EXTRA_ENABLE_VIDEO_LIST:Ljava/lang/String; = "mediatek.intent.extra.ENABLE_VIDEO_LIST"

.field public static final INCLUDE_CD_DRM_MEDIA:I = 0x4

.field public static final INCLUDE_FLDCF_DRM_MEDIA:I = 0x10

.field public static final INCLUDE_FL_DRM_MEDIA:I = 0x2

.field public static final INCLUDE_MPO_3D:I = 0x80

.field public static final INCLUDE_MPO_3D_PAN:I = 0x100

.field public static final INCLUDE_MPO_MAV:I = 0x40

.field public static final INCLUDE_MPO_UNKNOWN:I = 0x200

.field public static final INCLUDE_SD_DRM_MEDIA:I = 0x8

.field public static final INCLUDE_STEREO_FOLDER:I = 0x8000

.field public static final INCLUDE_STEREO_JPS:I = 0x1000

.field public static final INCLUDE_STEREO_PNS:I = 0x2000

.field public static final INCLUDE_STEREO_VIDEO:I = 0x4000

.field private static final IS_SUPPORT_THEMEMANAGER:Z = true

.field private static final JPEG_LENGTH_MAX:I = 0x2000

.field private static final MAV_VIEW_ACTION:Ljava/lang/String; = "com.mediatek.action.VIEW_MAV"

.field public static final MEMORY_THRESHOLD_MAV_L1:J = 0x6400000L

.field public static final MEMORY_THRESHOLD_MAV_L2:J = 0x3200000L

.field public static final MIMETYPE_GIF:Ljava/lang/String; = "image/gif"

.field private static final MIMETYPE_IMAGE_ALL:Ljava/lang/String; = "image/*"

.field public static final MIMETYPE_MPO:Ljava/lang/String; = "image/mpo"

.field private static final MIMETYPE_VIDEO_ALL:Ljava/lang/String; = "video/*"

.field public static final MTK_AUDIO_CHANGE_SUPPORT:Z = false

.field public static final MTK_CHANGE_PICK_CROP_FLOW:Z = true

.field public static final MTK_SUBTITLE_SUPPORT:Z = false

.field public static final STEREO_DISPLAY_INVALID_PASS:I = -0x1

.field public static final STEREO_DISPLAY_LEFT_PASS:I = 0x1

.field public static final STEREO_DISPLAY_RIGHT_PASS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gallery2/MediatekFeature"

.field private static final cpuCoreNum:I = 0x2

.field private static final customizedForMedia3D:Z = true

.field private static final customizedForMyFavorite:Z = true

.field private static final customizedForVLW:Z = true

.field private static final gifBackGroundColor:I = -0x1

.field private static mConShotsPlay:Lcom/android/gallery3d/ui/ResourceTexture; = null

.field private static mLivePhotoOverlay:Lcom/android/gallery3d/ui/ResourceTexture; = null

.field private static mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture; = null

.field private static mMotionPlay:Lcom/android/gallery3d/ui/ResourceTexture; = null

.field public static sContext:Landroid/content/Context; = null

.field public static sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions; = null

.field public static sIsImageOptionsPrepared:Z = false

.field private static final supportBluetoothPrint:Z = false

.field private static final supportConShotsImages:Z = true

#the value of this static final field might be set in the static constructor
.field private static final supportDisplay2dAs3d:Z = false

.field private static final supportDrm:Z = true

.field private static final supportGifAnimation:Z = true

.field private static final supportLivePhoto:Z = true

.field private static final supportMAV:Z = true

.field private static final supportMotionTrack:Z = true

.field private static final supportMpo:Z = true

.field private static final supportPanorama3D:Z = true

.field private static final supportPictureQualityEnhance:Z = true

.field private static final supportStereoDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->isSupport3d()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->supportStereoDisplay:Z

    .line 109
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->supportStereoDisplay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->supportDisplay2dAs3d:Z

    .line 765
    sput-boolean v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    .line 766
    sput-object v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    .line 869
    sput-object v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 871
    sput-object v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->mConShotsPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 872
    sput-object v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMotionPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 874
    sput-object v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->mLivePhotoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    return-void

    :cond_0
    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    return-void
.end method

.method public static addMtkInclusion(Landroid/net/Uri;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "path"

    .prologue
    .line 668
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 669
    :cond_0
    const-string v0, "Gallery2/MediatekFeature"

    const-string v1, "addMtkInclusion:invalid parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_1
    :goto_0
    return-object p0

    .line 672
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mtkInclusion"

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 676
    const-string v0, "Gallery2/MediatekFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMtkInclusion:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static allStereoSubType()I
    .locals 1

    .prologue
    .line 1204
    const/16 v0, 0xf0

    return v0
.end method

.method public static availableMemoryForMavPlayback(Lcom/android/gallery3d/app/AbstractGalleryActivity;)J
    .locals 7
    .parameter "mActivity"

    .prologue
    .line 1238
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object v0, v4

    check-cast v0, Landroid/app/ActivityManager;

    .line 1239
    .local v0, am:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1240
    .local v3, mi:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1241
    iget-wide v1, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1242
    .local v1, availableMemory:J
    const-string v4, "Gallery2/MediatekFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current available memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-wide v1
.end method

.method public static checkForOtherPickActions(Lcom/android/gallery3d/app/PickerActivity;Landroid/os/Bundle;Landroid/content/Intent;)Z
    .locals 8
    .parameter "activity"
    .parameter "data"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 806
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, mimeType:Ljava/lang/String;
    const-string v5, "video/*"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vnd.android.cursor.dir/video"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    move v2, v4

    .line 809
    .local v2, pickVideo:Z
    :goto_0
    const-string v5, "image/*"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "vnd.android.cursor.dir/image"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    move v1, v4

    .line 811
    .local v1, pickImage:Z
    :goto_1
    if-eqz v2, :cond_7

    .line 812
    const-string v5, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    return v3

    .end local v1           #pickImage:Z
    .end local v2           #pickVideo:Z
    :cond_5
    move v2, v3

    .line 807
    goto :goto_0

    .restart local v2       #pickVideo:Z
    :cond_6
    move v1, v3

    .line 809
    goto :goto_1

    .line 814
    .restart local v1       #pickImage:Z
    :cond_7
    if-eqz v1, :cond_2

    .line 815
    const-string v5, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static createGifDecoder(Ljava/io/FileDescriptor;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "fd"

    .prologue
    .line 1012
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1013
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/io/FileDescriptor;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public static createGifDecoder(Ljava/io/InputStream;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "is"

    .prologue
    .line 1007
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1008
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/io/InputStream;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public static createGifDecoder(Ljava/lang/String;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 1002
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1003
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/lang/String;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public static cropToFitAspectRatio(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "recycleInput"

    .prologue
    .line 721
    const-string v12, "Gallery2/MediatekFeature"

    const-string v13, "cropToRetainAspectRatio"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 723
    :cond_0
    const/16 p0, 0x0

    .line 760
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 725
    .restart local p0
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 726
    .local v11, srcWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 727
    .local v8, srcHeight:I
    int-to-float v12, v11

    int-to-float v13, v8

    div-float v9, v12, v13

    .line 728
    .local v9, srcRatio:F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v3, v12, v13

    .line 729
    .local v3, destRatio:F
    const-string v12, "Gallery2/MediatekFeature"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " srcRatio="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", destRatio="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    cmpl-float v12, v9, v3

    if-eqz v12, :cond_1

    .line 733
    move v5, v11

    .line 734
    .local v5, destWidth:I
    move v2, v8

    .line 735
    .local v2, destHeight:I
    move-object/from16 v6, p0

    .line 736
    .local v6, ret:Landroid/graphics/Bitmap;
    cmpl-float v12, v9, v3

    if-lez v12, :cond_4

    const/4 v7, 0x1

    .line 737
    .local v7, shouldCropWidth:Z
    :goto_1
    const/4 v10, 0x0

    .line 738
    .local v10, srcRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 739
    .local v4, destRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_5

    .line 741
    int-to-float v12, v8

    mul-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 742
    move v2, v8

    .line 743
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #srcRect:Landroid/graphics/Rect;
    sub-int v12, v11, v5

    div-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    add-int v14, v11, v5

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v10, v12, v13, v14, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 752
    .restart local v10       #srcRect:Landroid/graphics/Rect;
    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #destRect:Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v4, v12, v13, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 753
    .restart local v4       #destRect:Landroid/graphics/Rect;
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 754
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 755
    .local v1, c:Landroid/graphics/Canvas;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v10, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 757
    if-eqz p3, :cond_3

    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object/from16 p0, v6

    .line 760
    goto :goto_0

    .line 736
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v4           #destRect:Landroid/graphics/Rect;
    .end local v7           #shouldCropWidth:Z
    .end local v10           #srcRect:Landroid/graphics/Rect;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 747
    .restart local v4       #destRect:Landroid/graphics/Rect;
    .restart local v7       #shouldCropWidth:Z
    .restart local v10       #srcRect:Landroid/graphics/Rect;
    :cond_5
    int-to-float v12, v11

    div-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 748
    move v5, v11

    .line 749
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #srcRect:Landroid/graphics/Rect;
    const/4 v12, 0x0

    sub-int v13, v8, v2

    div-int/lit8 v13, v13, 0x2

    div-int/lit8 v14, v8, 0x2

    div-int/lit8 v15, v2, 0x2

    add-int/2addr v14, v15

    invoke-direct {v10, v12, v13, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v10       #srcRect:Landroid/graphics/Rect;
    goto :goto_2
.end method

.method public static doesMaxEqualMin(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1137
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const/4 v0, 0x1

    .line 1140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static drawWidgetImageTypeOverlay(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 837
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mime_type"

    aput-object v0, v2, v12

    const-string v0, "stereo_type"

    aput-object v0, v2, v11

    .line 843
    .local v2, columns:[Ljava/lang/String;
    const-string v9, ""

    .line 844
    .local v9, mimeType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 845
    .local v10, stereoType:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 847
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 848
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 850
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 852
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 855
    :cond_3
    if-eqz v10, :cond_5

    move v8, v11

    .line 856
    .local v8, isStereo:Z
    :goto_1
    const-string v0, "image/mpo"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v8, :cond_6

    move v7, v11

    .line 858
    .local v7, isMAV:Z
    :goto_2
    if-eqz v7, :cond_4

    .line 859
    invoke-static {p0, p2}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 862
    :cond_4
    if-eqz v8, :cond_0

    .line 863
    invoke-static {p0, p2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v7           #isMAV:Z
    .end local v8           #isStereo:Z
    :cond_5
    move v8, v12

    .line 855
    goto :goto_1

    .restart local v8       #isStereo:Z
    :cond_6
    move v7, v12

    .line 856
    goto :goto_2
.end method

.method public static enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V
    .locals 1
    .parameter "options"
    .parameter "suggestEnhance"

    .prologue
    .line 1181
    if-nez p0, :cond_0

    .line 1188
    :goto_0
    return-void

    .line 1183
    :cond_0
    if-eqz p1, :cond_1

    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    goto :goto_0

    .line 1186
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    goto :goto_0
.end method

.method public static enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V
    .locals 1
    .parameter "params"
    .parameter "suggestEnhance"

    .prologue
    .line 1192
    if-nez p0, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1194
    :cond_0
    if-eqz p1, :cond_1

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    goto :goto_0

    .line 1197
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    goto :goto_0
.end method

.method public static getAddedMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "extension"

    .prologue
    const/4 v0, 0x0

    .line 628
    if-nez p0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-object v0

    .line 629
    :cond_1
    const-string v1, "mpo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    const-string v0, "image/mpo"

    goto :goto_0

    .line 631
    :cond_2
    const-string v1, "jps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    const-string v0, "image/x-jps"

    goto :goto_0
.end method

.method public static getCpuCoreNum()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x2

    return v0
.end method

.method public static getGifBackgroundColor()I
    .locals 1

    .prologue
    .line 980
    const/4 v0, -0x1

    return v0
.end method

.method public static getImageOptions()Lcom/mediatek/gallery3d/ext/IImageOptions;
    .locals 1

    .prologue
    .line 788
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    if-nez v0, :cond_0

    .line 789
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->prepareImageOptions(Landroid/content/Context;)V

    .line 791
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/mediatek/gallery3d/ext/ImageOptions;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/ext/ImageOptions;-><init>()V

    goto :goto_0
.end method

.method public static getInclusionFromData(Landroid/os/Bundle;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 540
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmInclusionFromData(Landroid/os/Bundle;)I

    move-result v0

    invoke-static {p0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getInclusionFromData(Landroid/os/Bundle;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static getMavInclusionFromData(Landroid/os/Bundle;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 545
    invoke-static {p0}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->getInclusionFromData(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public static getMinimalScale(FFIII)F
    .locals 6
    .parameter "viewW"
    .parameter "viewH"
    .parameter "imageW"
    .parameter "imageH"
    .parameter "subType"

    .prologue
    .line 1126
    invoke-static {p4}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    const-wide v2, 0x40e3880000000000L

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1131
    .local v0, scale:D
    double-to-float v2, v0

    .line 1133
    .end local v0           #scale:D
    :goto_0
    return v2

    :cond_0
    int-to-float v2, p2

    div-float v2, p0, v2

    int-to-float v3, p3

    div-float v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0
.end method

.method public static getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 1052
    if-nez p0, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-object v1

    .line 1054
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v2

    .line 1055
    .local v2, subType:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->needMtkScreenNail(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    .line 1057
    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 1058
    .local v0, height:I
    new-instance v1, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    invoke-direct {v1, v3, v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;-><init>(II)V

    .line 1060
    .local v1, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    goto :goto_0
.end method

.method public static getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "item"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 1034
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-object v1

    .line 1036
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v2

    .line 1037
    .local v2, subType:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->needMtkScreenNail(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    .line 1040
    .local v3, width:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 1042
    .local v0, height:I
    :goto_2
    new-instance v1, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    invoke-direct {v1, p1, v3, v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;-><init>(Landroid/graphics/Bitmap;II)V

    .line 1044
    .local v1, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    goto :goto_0

    .line 1038
    .end local v0           #height:I
    .end local v1           #mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    .end local v3           #width:I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_1

    .line 1040
    .restart local v3       #width:I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_2
.end method

.method public static getOnlyStereoWhereClause(I)Ljava/lang/String;
    .locals 2
    .parameter "drmInclusion"

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, stereoInclusion:I
    or-int/lit16 v0, v0, 0x4000

    .line 619
    or-int/lit16 v0, v0, 0x80

    .line 620
    or-int/lit16 v0, v0, 0x100

    .line 621
    or-int/lit16 v0, v0, 0x1000

    .line 623
    or-int/lit8 v0, v0, 0x1

    .line 624
    or-int/lit16 v1, p0, 0x5181

    invoke-static {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getWhereClause(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOnlyStereoWhereClause(IZ)Ljava/lang/String;
    .locals 2
    .parameter "drmInclusion"
    .parameter "queryVideo"

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, stereoInclusion:I
    if-eqz p1, :cond_0

    .line 606
    or-int/lit16 v0, v0, 0x4000

    .line 613
    :goto_0
    or-int/lit8 v0, v0, 0x1

    .line 614
    or-int v1, v0, p0

    invoke-static {v1, p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 608
    :cond_0
    or-int/lit16 v0, v0, 0x80

    .line 609
    or-int/lit16 v0, v0, 0x100

    .line 610
    or-int/lit16 v0, v0, 0x1000

    goto :goto_0
.end method

.method public static getPhotoWidgetInclusion()I
    .locals 2

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, mtkInclusion:I
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    or-int/lit8 v0, v0, 0x2

    .line 644
    :cond_0
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    or-int/lit8 v0, v0, 0x40

    .line 646
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    or-int/lit16 v0, v0, 0x80

    .line 648
    or-int/lit16 v0, v0, 0x100

    .line 649
    or-int/lit16 v0, v0, 0x1000

    .line 650
    or-int/lit16 v0, v0, 0x2000

    .line 653
    or-int/lit16 v0, v0, 0x4000

    .line 663
    :cond_1
    :goto_0
    return v0

    .line 656
    :cond_2
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    or-int/lit16 v0, v0, 0x2000

    .line 660
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0
.end method

.method public static getScreenNailSubType(Lcom/android/gallery3d/ui/ScreenNail;)I
    .locals 1
    .parameter "screenNail"

    .prologue
    .line 1076
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    if-eqz v0, :cond_0

    .line 1077
    check-cast p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    .end local p0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v0

    .line 1079
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSizeForSubtype(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/PhotoView$Size;
    .locals 4
    .parameter "screenNail"

    .prologue
    const/4 v1, 0x0

    .line 1095
    if-nez p0, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-object v1

    .line 1096
    :cond_1
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v0

    .line 1097
    .local v0, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    .line 1099
    .local v2, subType:I
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 1102
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/PhotoView$Size;-><init>()V

    .line 1103
    .local v1, size:Lcom/android/gallery3d/ui/PhotoView$Size;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginWidth()I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 1104
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginHeight()I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public static getWhereClause(I)Ljava/lang/String;
    .locals 5
    .parameter "mtkInclusion"

    .prologue
    .line 551
    invoke-static {p0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getWhereClause(I)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, whereClauseStereo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 557
    .local v0, whereClauseDrm:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    const/4 v2, 0x0

    .line 563
    .local v2, whereGroup:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 564
    if-nez v2, :cond_2

    move-object v2, v0

    .line 568
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 569
    if-nez v2, :cond_3

    move-object v2, v1

    .line 572
    :cond_1
    :goto_1
    return-object v2

    .line 564
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 569
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getWhereClause(IZ)Ljava/lang/String;
    .locals 5
    .parameter "mtkInclusion"
    .parameter "queryVideo"

    .prologue
    .line 578
    invoke-static {p0, p1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, whereClauseStereo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 585
    .local v0, whereClauseDrm:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    const/4 v2, 0x0

    .line 591
    .local v2, whereGroup:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 592
    if-nez v2, :cond_2

    move-object v2, v0

    .line 596
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 597
    if-nez v2, :cond_3

    move-object v2, v1

    .line 600
    :cond_1
    :goto_1
    return-object v2

    .line 592
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 597
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static handleMavPlayback(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 935
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->playMpo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 937
    const/4 v0, 0x1

    .line 939
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCustomizedForMedia3D()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public static hasCustomizedForMyFavorite()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public static hasCustomizedForVLW()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 241
    sput-object p0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    .line 242
    return-void
.end method

.method public static insertBucketIdForPickActions(Lcom/android/gallery3d/data/MediaSet;Landroid/content/Intent;)V
    .locals 2
    .parameter "targetSet"
    .parameter "result"

    .prologue
    .line 825
    instance-of v1, p0, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v1, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, bucketId:Ljava/lang/String;
    const-string v1, "bucketId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    .end local v0           #bucketId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isBluetoothPrintSupported()Z
    .locals 1

    .prologue
    .line 182
    const-string v0, "profile_supported_bpp"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isConShotsImagesSupported()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public static isDisplay2dAs3dSupported()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->supportDisplay2dAs3d:Z

    return v0
.end method

.method public static isDrmSupported()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public static isGifAnimationSupported()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public static isGifSupported()Z
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x1

    return v0
.end method

.method public static isLivePhotoSupported()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public static isMAVSupported()Z
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public static isMotionTrackSupported()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public static isMpoSupported()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public static isOutOfLimitation(Ljava/lang/String;II)Z
    .locals 2
    .parameter "mimeType"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x2000

    .line 1216
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 1218
    :cond_0
    const/4 v0, 0x1

    .line 1220
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanorama3DSupported()Z
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x1

    return v0
.end method

.method public static isPictureQualityEnhanceSupported()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public static isStereoDisplaySupported()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->supportStereoDisplay:Z

    return v0
.end method

.method public static isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1167
    sget-boolean v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->supportStereoDisplay:Z

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return v1

    .line 1168
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    .line 1169
    .local v0, operation:I
    const/high16 v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x8

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 1171
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportedByGifDecoder(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 964
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 966
    :goto_0
    return v0

    .line 965
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 966
    const-string v0, "image/gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isThemeManagerSupported()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public static minScaleLimit(I)F
    .locals 1
    .parameter "subType"

    .prologue
    .line 1153
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    const/high16 v0, 0x3f80

    .line 1156
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method public static needMtkScreenNail(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1020
    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    const/4 v0, 0x1

    .line 1025
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static permitShowThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1030
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->permitShowThumb(I)Z

    move-result v0

    return v0
.end method

.method public static playMpo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 949
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.action.VIEW_MAV"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v1, i:Landroid/content/Intent;
    const-string v2, "image/mpo"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Gallery2/MediatekFeature"

    const-string v3, "Unable to open mpo file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static preferDisplayOriginSize(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1145
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_0

    .line 1146
    const/4 v0, 0x1

    .line 1148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static preferDisplayOriginalSize()Z
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->prepareImageOptions(Landroid/content/Context;)V

    .line 208
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IImageOptions;->shouldUseOriginalSize()Z

    move-result v0

    goto :goto_0
.end method

.method public static preferGoTopWhenBack()Z
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->prepareImageOptions(Landroid/content/Context;)V

    .line 229
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IImageOptions;->shouldReturnTopWhenBack()Z

    move-result v0

    goto :goto_0
.end method

.method public static prepareImageOptions(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 770
    if-nez p0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-nez v1, :cond_0

    .line 775
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/ext/IImageOptions;

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    .line 777
    const-string v1, "Gallery2/MediatekFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareImageOptions:sImageOptions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 780
    const-string v1, "Gallery2/MediatekFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareImageOptions:JE happened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v1, Lcom/mediatek/gallery3d/ext/ImageOptions;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/ext/ImageOptions;-><init>()V

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    goto :goto_1
.end method

.method public static renderSubTypeOverlay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 13
    .parameter "context"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "subType"

    .prologue
    .line 877
    if-nez p4, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const/4 v12, 0x1

    .line 885
    .local v12, isMav:Z
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_1
    and-int/2addr v12, v1

    .line 886
    if-eqz v12, :cond_3

    .line 887
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v1, :cond_2

    .line 888
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f0200cd

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 890
    :cond_2
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x5

    .line 894
    .local v5, side:I
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    div-int/lit8 v3, v5, 0x2

    mul-int/lit8 v2, v5, 0x3

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p3, v2

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 898
    .end local v5           #side:I
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V

    .line 901
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V

    .line 904
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    .line 905
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    .line 906
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mConShotsPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v1, :cond_4

    .line 907
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f02009a

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mConShotsPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 909
    :cond_4
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x5

    .line 910
    .restart local v5       #side:I
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mConShotsPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    div-int/lit8 v3, v5, 0x2

    mul-int/lit8 v2, v5, 0x3

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p3, v2

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 912
    .end local v5           #side:I
    :cond_5
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    .line 913
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMotionPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v1, :cond_6

    .line 914
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f020104

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMotionPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 916
    :cond_6
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x5

    .line 917
    .restart local v5       #side:I
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mMotionPlay:Lcom/android/gallery3d/ui/ResourceTexture;

    div-int/lit8 v3, v5, 0x2

    mul-int/lit8 v2, v5, 0x3

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p3, v2

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 922
    .end local v5           #side:I
    :cond_7
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    .line 923
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mLivePhotoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v1, :cond_8

    .line 924
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f0200c8

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mLivePhotoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 926
    :cond_8
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x5

    .line 927
    .restart local v5       #side:I
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->mLivePhotoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    div-int/lit8 v3, v5, 0x2

    mul-int/lit8 v2, v5, 0x3

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p3, v2

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_0

    .line 885
    .end local v5           #side:I
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public static replaceBitmapBgColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "b"
    .parameter "color"
    .parameter "recycleInput"

    .prologue
    const/4 v3, 0x0

    .line 684
    if-nez p0, :cond_0

    move-object p0, v3

    .line 715
    .end local p0
    :goto_0
    return-object p0

    .line 685
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_1

    .line 686
    const-string v3, "Gallery2/MediatekFeature"

    const-string v4, "replaceBitmapBgColor:Bitmap has no alpha, no bother"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_3

    .line 692
    :cond_2
    const-string v3, "Gallery2/MediatekFeature"

    const-string v4, "replaceBitmapBgColor:invalid Bitmap dimension"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_3
    const/4 v0, 0x0

    .line 697
    .local v0, b2:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 704
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 706
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 708
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 710
    if-eqz p2, :cond_4

    .line 711
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 712
    const/4 p0, 0x0

    :cond_4
    move-object p0, v0

    .line 715
    goto :goto_0

    .line 699
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 700
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Gallery2/MediatekFeature"

    const-string v4, "failed to create new bitmap for replacing gif background: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static replaceGifBackGround(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "filePath"

    .prologue
    .line 984
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 989
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 985
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 995
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceBitmapBgColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static showDrmMicroThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1161
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v0

    return v0
.end method

.method public static syncSubType(Lcom/android/gallery3d/ui/ScreenNail;Lcom/android/gallery3d/ui/ScreenNail;)Z
    .locals 5
    .parameter "target"
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 1111
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1112
    :cond_0
    const-string v3, "Gallery2/MediatekFeature"

    const-string v4, "syncSubType:why we got null target or source"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_1
    :goto_0
    return v2

    .line 1115
    :cond_2
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v1

    .line 1116
    .local v1, mtkTarget:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v0

    .line 1117
    .local v0, mtkSource:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    .line 1119
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static themeMainColor()I
    .locals 2

    .prologue
    .line 217
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 218
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v1

    .line 221
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    .locals 1
    .parameter "screenNail"

    .prologue
    .line 1068
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    if-eqz v0, :cond_0

    .line 1069
    check-cast p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    .line 1071
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static updateSizeForSubtype(Lcom/android/gallery3d/ui/PhotoView$Size;Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 3
    .parameter "size"
    .parameter "screenNail"

    .prologue
    .line 1084
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v0

    .line 1086
    .local v0, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v1

    .line 1088
    .local v1, subType:I
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_0

    .line 1089
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginWidth()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 1090
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginHeight()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method
