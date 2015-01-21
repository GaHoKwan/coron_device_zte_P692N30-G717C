.class public Lcom/android/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;
.implements Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$MavAnimation;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GifDecoderListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final BIT_DRM_SCREEN_NAIL:I = 0x40000000

.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_GIF_ANIMATION:I = -0x80000000

.field private static final BIT_MAV_PLAYBACK:I = 0x10000000

.field private static final BIT_PANORAMA_SCREEN_NAIL:I = 0x8000000

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final BIT_SECOND_SCREEN_NAIL:I = 0x20000000

.field private static final DATA_CACHE_SIZE:I = 0x100

.field private static final FRAMDURATION:I = 0xc8

.field private static final IMAGE_CACHE_SIZE:I = 0x7

.field private static final MIN_LOAD_COUNT:I = 0x10

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final MSG_UPDATE_MAV_FRAME:I = 0x5

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Gallery2/PhotoDataAdapter"

.field public static final TYPE_LOAD_FRAME:I = 0x1

.field public static final TYPE_LOAD_TOTAL_COUNT:I

.field private static final mIsDrmSupported:Z

.field private static final mIsGifAnimationSupported:Z

.field private static final mIsMavSupported:Z

.field private static final mIsPanorama3DSupported:Z

.field private static final mIsStereoDisplaySupported:Z

.field public static sCurrentScreenNailDone:Z

.field private static sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

.field public static sPerformanceCaseRunning:Z


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field public mCSAnimVersion:J

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mConsumedItemPath:Lcom/android/gallery3d/data/Path;

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private mCurrentMpoIndex:I

.field private mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

.field private mFirstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/android/gallery3d/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsMavLoadingFinished:Z

.field private mIsMavLoadingSuccess:Z

.field private mIsMavStereoMode:Z

.field private mIsNeedUpdateUI:Z

.field private mIsOpenFromLocal:Ljava/lang/Boolean;

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field private mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

.field private mNeedFullImage:Z

.field private mNextMpoIndex:I

.field private mOldCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mOldFirstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mOldSecondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private final mPaths:[Lcom/android/gallery3d/data/Path;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private final mReDecodeToImproveImageQuality:Z

.field private mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mSecondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mSize:I

.field private mSource:Lcom/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

.field private mTimeIntervalDRM:Z

.field private final mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

.field private mWaitToast:Landroid/widget/Toast;

.field private reloadCameraItem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/high16 v13, 0x800

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 137
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifAnimationSupported()Z

    move-result v10

    sput-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsGifAnimationSupported:Z

    .line 139
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v10

    sput-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsDrmSupported:Z

    .line 141
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v10

    sput-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    .line 143
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMAVSupported()Z

    move-result v10

    sput-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    .line 146
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v10

    sput-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    .line 180
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v10, :cond_2

    move v1, v8

    .line 181
    .local v1, gifRequestCount:I
    :goto_0
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsDrmSupported:Z

    if-eqz v10, :cond_3

    move v0, v8

    .line 182
    .local v0, drmRequestCount:I
    :goto_1
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v10, :cond_4

    move v7, v8

    .line 183
    .local v7, stereoRequestCount:I
    :goto_2
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v10, :cond_5

    move v5, v8

    .line 185
    .local v5, mpoRequestCount:I
    :goto_3
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v10, :cond_6

    const/16 v6, 0xd

    .line 187
    .local v6, panoramaRequestCount:I
    :goto_4
    const/4 v3, 0x0

    .line 188
    .local v3, k:I
    add-int/lit8 v10, v1, 0x10

    add-int/lit8 v10, v10, -0x2

    add-int/2addr v10, v7

    add-int/2addr v10, v5

    add-int/2addr v10, v6

    new-array v10, v10, [Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    sput-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 194
    sget-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .local v4, k:I
    new-instance v11, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v11, v9, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v11, v10, v3

    .line 196
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v10, :cond_b

    .line 197
    sget-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    new-instance v11, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v11, v9, v13}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v11, v10, v4

    .line 202
    :goto_5
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v10, :cond_0

    .line 203
    sget-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    new-instance v11, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/high16 v12, 0x2000

    invoke-direct {v11, v9, v12}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v11, v10, v3

    move v3, v4

    .line 206
    .end local v4           #k:I
    .restart local v3       #k:I
    :cond_0
    const/4 v2, 0x1

    .local v2, i:I
    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    :goto_6
    const/4 v10, 0x7

    if-ge v2, v10, :cond_7

    .line 207
    sget-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    new-instance v11, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v11, v2, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v11, v10, v4

    .line 209
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v10, :cond_1

    .line 210
    sget-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    new-instance v11, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v11, v2, v13}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v11, v10, v3

    move v3, v4

    .line 213
    .end local v4           #k:I
    .restart local v3       #k:I
    :cond_1
    sget-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    new-instance v11, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v12, v2

    invoke-direct {v11, v12, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v11, v10, v3

    .line 215
    sget-boolean v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v10, :cond_a

    .line 216
    sget-object v10, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    new-instance v11, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v12, v2

    invoke-direct {v11, v12, v13}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v11, v10, v4

    .line 206
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    goto :goto_6

    .end local v0           #drmRequestCount:I
    .end local v1           #gifRequestCount:I
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v5           #mpoRequestCount:I
    .end local v6           #panoramaRequestCount:I
    .end local v7           #stereoRequestCount:I
    :cond_2
    move v1, v9

    .line 180
    goto/16 :goto_0

    .restart local v1       #gifRequestCount:I
    :cond_3
    move v0, v9

    .line 181
    goto/16 :goto_1

    .restart local v0       #drmRequestCount:I
    :cond_4
    move v7, v9

    .line 182
    goto/16 :goto_2

    .restart local v7       #stereoRequestCount:I
    :cond_5
    move v5, v9

    .line 183
    goto/16 :goto_3

    .restart local v5       #mpoRequestCount:I
    :cond_6
    move v6, v9

    .line 185
    goto/16 :goto_4

    .line 221
    .restart local v2       #i:I
    .restart local v4       #k:I
    .restart local v6       #panoramaRequestCount:I
    :cond_7
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    new-instance v10, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v11, 0x2

    invoke-direct {v10, v9, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v10, v8, v4

    .line 225
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v8, :cond_8

    .line 226
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    new-instance v10, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/high16 v11, -0x8000

    invoke-direct {v10, v9, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v10, v8, v3

    move v3, v4

    .line 230
    .end local v4           #k:I
    .restart local v3       #k:I
    :cond_8
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v8, :cond_9

    .line 231
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    new-instance v10, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/high16 v11, 0x1000

    invoke-direct {v10, v9, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v10, v8, v3

    move v3, v4

    .line 1146
    .end local v4           #k:I
    .restart local v3       #k:I
    :cond_9
    sput-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->sCurrentScreenNailDone:Z

    .line 1147
    sput-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->sPerformanceCaseRunning:Z

    return-void

    .end local v3           #k:I
    .restart local v4       #k:I
    :cond_a
    move v3, v4

    .end local v4           #k:I
    .restart local v3       #k:I
    goto :goto_7

    .end local v2           #i:I
    .end local v3           #k:I
    .restart local v4       #k:I
    :cond_b
    move v3, v4

    .end local v4           #k:I
    .restart local v3       #k:I
    goto/16 :goto_5
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZ)V
    .locals 7
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"
    .parameter "cameraIndex"
    .parameter "isPanorama"
    .parameter "isStaticCamera"

    .prologue
    const/4 v3, 0x7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReDecodeToImproveImageQuality:Z

    .line 235
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 248
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 249
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 250
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 259
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 260
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 269
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    .line 272
    new-array v0, v3, [Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    .line 281
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 282
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 289
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 290
    iput-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 291
    iput-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 293
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCSAnimVersion:J

    .line 296
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsOpenFromLocal:Ljava/lang/Boolean;

    .line 297
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsNeedUpdateUI:Z

    .line 306
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v0, p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 322
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadCameraItem:Z

    .line 2953
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    .line 2998
    iput v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    .line 2999
    iput v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNextMpoIndex:I

    .line 332
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 333
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 334
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 335
    iput p5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 336
    iput p6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    .line 337
    iput-boolean p7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 338
    iput-boolean p8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    .line 339
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 340
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 343
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadCameraItem:Z

    .line 344
    const-string v0, "Gallery2/PhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoDataAdapter reloadCameraItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadCameraItem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 350
    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    .line 352
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 386
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 387
    return-void

    :cond_0
    move v0, v2

    .line 343
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsDrmSupported:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->restoreDrmConsumeStatus()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsNeedUpdateUI:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/gallery3d/app/PhotoDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsNeedUpdateUI:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadCameraItem:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/gallery3d/app/PhotoDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadCameraItem:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsOpenFromLocal:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsOpenFromLocal:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->forceShowCurrentPhoto(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateOriginScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSecondScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateGifDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateMavDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updatePanoramaScreenNail(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1741
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1742
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1745
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1747
    :goto_0
    return-object v2

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 1748
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1749
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireDataChange()V
    .locals 15

    .prologue
    const v10, 0x7fffffff

    const/4 v14, 0x0

    const/4 v13, 0x7

    .line 416
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageFireDataChange()V

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, changed:Z
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v9, 0x3

    if-gt v3, v9, :cond_1

    .line 420
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 421
    .local v5, newVersion:J
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aget-wide v11, v9, v11

    cmp-long v9, v11, v5

    if-eqz v9, :cond_0

    .line 422
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aput-wide v5, v9, v11

    .line 423
    const/4 v1, 0x1

    .line 419
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v5           #newVersion:J
    :cond_1
    if-nez v1, :cond_2

    .line 428
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageFireDataChange()V

    .line 477
    :goto_1
    return-void

    .line 435
    :cond_2
    const/4 v0, 0x7

    .line 436
    .local v0, N:I
    new-array v2, v13, [I

    .line 439
    .local v2, fromIndex:[I
    new-array v7, v13, [Lcom/android/gallery3d/data/Path;

    .line 440
    .local v7, oldPaths:[Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v13, :cond_3

    .line 444
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x3

    invoke-direct {p0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    aput-object v11, v9, v3

    .line 443
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 448
    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_8

    .line 449
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v8, v9, v3

    .line 450
    .local v8, p:Lcom/android/gallery3d/data/Path;
    if-nez v8, :cond_4

    .line 451
    aput v10, v2, v3

    .line 448
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 457
    :cond_4
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5
    if-ge v4, v13, :cond_5

    .line 458
    aget-object v9, v7, v4

    if-ne v9, v8, :cond_6

    .line 462
    :cond_5
    if-ge v4, v13, :cond_7

    add-int/lit8 v9, v4, -0x3

    :goto_6
    aput v9, v2, v3

    goto :goto_4

    .line 457
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    move v9, v10

    .line 462
    goto :goto_6

    .line 465
    .end local v4           #j:I
    .end local v8           #p:Lcom/android/gallery3d/data/Path;
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    .line 469
    invoke-virtual {p0, v14}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 470
    const-string v9, "Gallery2/PhotoDataAdapter"

    const-string v10, "fireDataChange: enterCameraPreview"

    invoke-static {v9, v10}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PhotoView;->enterCameraPreview()V

    .line 475
    :cond_9
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startConShotsAnimation(Lcom/android/gallery3d/data/Path;)V

    .line 476
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageFireDataChange()V

    goto :goto_1
.end method

.method private forceShowCurrentPhoto(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 5
    .parameter "originInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3169
    iget v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    if-eqz v1, :cond_0

    .line 3185
    :goto_0
    return-void

    .line 3173
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 3174
    .local v0, info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    .line 3175
    iget-boolean v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    iput-boolean v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 3176
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    .line 3177
    iput v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 3178
    iput v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    .line 3179
    iput v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    .line 3180
    iput v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 3181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 3182
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    new-instance v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 3184
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsNeedUpdateUI:Z

    goto :goto_0
.end method

.method private fresh(II)V
    .locals 2
    .parameter "lastIndex"
    .parameter "animationMode"

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v0, :cond_0

    .line 2937
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->getAnimationTagetIndex()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2944
    :cond_0
    :goto_0
    return-void

    .line 2941
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->initAnimation(II)V

    .line 2942
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    goto :goto_0
.end method

.method private getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 667
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 673
    :goto_0
    return-object v0

    .line 668
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 670
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_3

    .line 671
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v1, p1, 0x100

    aget-object v0, v0, v1

    goto :goto_0

    .line 668
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 673
    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 396
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v1, p1, 0x100

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/android/gallery3d/data/Path;
    .locals 2
    .parameter "index"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 411
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 412
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;
    .locals 7
    .parameter "bmps"

    .prologue
    .line 2874
    if-nez p1, :cond_1

    .line 2875
    const/4 v3, 0x0

    .line 2889
    :cond_0
    return-object v3

    .line 2877
    :cond_1
    array-length v1, p1

    .line 2878
    .local v1, len:I
    new-array v3, v1, [Lcom/android/gallery3d/ui/ScreenNail;

    .line 2879
    .local v3, screenNails:[Lcom/android/gallery3d/ui/ScreenNail;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2880
    aget-object v4, p1, v0

    if-nez v4, :cond_2

    .line 2881
    const-string v4, "Gallery2/PhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bmps["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 2884
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v2, :cond_3

    .line 2885
    new-instance v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .end local v2           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    aget-object v4, p1, v0

    invoke-direct {v2, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 2887
    .restart local v2       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_3
    aput-object v2, v3, v0

    .line 2879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 2
    .parameter "entry"

    .prologue
    .line 2075
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2086
    :goto_0
    return-object v0

    .line 2077
    :cond_0
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 2079
    :cond_1
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_2

    .line 2080
    const-string v0, "Gallery2/PhotoDataAdapter"

    const-string v1, "return current MpoFrame"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 2084
    :cond_2
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 2086
    :cond_3
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 405
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    .line 406
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v1

    goto :goto_0
.end method

.method private isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 6
    .parameter "mediaItem"

    .prologue
    const/4 v1, 0x0

    .line 1182
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-gez v2, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return v1

    .line 1184
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1185
    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 1186
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v2, v3, :cond_0

    .line 1188
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1189
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1190
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1192
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1193
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 3
    .parameter "item"

    .prologue
    .line 1201
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    .line 1202
    .local v1, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v1, :cond_0

    .line 1207
    .end local v1           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :goto_0
    return-object v1

    .line 1204
    .restart local v1       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    .line 1205
    .local v2, width:I
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 1207
    .local v0, height:I
    new-instance v1, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .end local v1           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(II)V

    goto :goto_0
.end method

.method private resetDrmConsumeStatus()V
    .locals 1

    .prologue
    .line 2242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    .line 2243
    return-void
.end method

.method private restoreDrmConsumeStatus()V
    .locals 4

    .prologue
    .line 2208
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    if-nez v2, :cond_1

    .line 2239
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2213
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTimeIntervalDRM:Z

    if-eqz v2, :cond_2

    .line 2214
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "restoreDrmConsumeStatus:for time interval media..."

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ltz v2, :cond_0

    .line 2218
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit16 v3, v3, 0x100

    aget-object v1, v2, v3

    .line 2219
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 2222
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->hasDrmRights()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2223
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "restoreDrmConsumeStatus:we have no rights "

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->resetDrmConsumeStatus()V

    goto :goto_0

    .line 2229
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    if-eqz v0, :cond_0

    .line 2230
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v2, v3, :cond_3

    .line 2231
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-nez v2, :cond_0

    .line 2235
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->enterConsumeMode()V

    .line 2237
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->resetDrmConsumeStatus()V

    goto :goto_0
.end method

.method private saveDrmConsumeStatus()V
    .locals 4

    .prologue
    .line 2199
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->resetDrmConsumeStatus()V

    .line 2200
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2201
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v2, :cond_0

    .line 2202
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit16 v3, v3, 0x100

    aget-object v0, v2, v3

    .line 2203
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    .line 2205
    .end local v0           #current:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    return-void

    .line 2203
    .restart local v0       #current:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_0
.end method

.method private startConShotsAnimation(Lcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 2454
    const-string v3, "Gallery2/PhotoDataAdapter"

    const-string v4, "startConShotsAnimation"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2457
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v1, :cond_1

    .line 2467
    :cond_0
    :goto_0
    return-void

    .line 2459
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 2460
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2461
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 2462
    .local v0, currentIndex:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 2463
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;I)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private startGifAnimation(Lcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 2578
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2579
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v1, :cond_1

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2580
    :cond_1
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getTotalFrameCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2587
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getWidth()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getWidth()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v5}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getHeight()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    const-wide v5, 0x100000000L

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 2592
    :cond_2
    const-string v3, "Gallery2/PhotoDataAdapter"

    const-string v4, "startGifAnimation:illegal gif frame dimension"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2596
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 2597
    .local v0, currentIndex:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 2600
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 2601
    .local v2, gifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iput-object v3, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 2602
    iput v0, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->animatedIndex:I

    .line 2603
    iput-object v1, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2605
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private startMavPlayback(Lcom/android/gallery3d/data/Path;)V
    .locals 9
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2893
    const-string v4, "Gallery2/PhotoDataAdapter"

    const-string v5, "startMavPlayback"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2895
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v1, :cond_0

    .line 2932
    :goto_0
    return-void

    .line 2898
    :cond_0
    iget v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 2899
    .local v3, totalCount:I
    if-lez v3, :cond_4

    .line 2901
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 2902
    .local v0, currentIndex:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_3

    .line 2904
    div-int/lit8 v2, v3, 0x2

    .line 2905
    .local v2, middleFrame:I
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    .line 2906
    const-string v4, "Gallery2/PhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the middle frame is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v4, :cond_1

    .line 2908
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 2909
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-interface {v4, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setStatus(Z)V

    .line 2911
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v4, :cond_2

    .line 2912
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v4, v8}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setActive(Z)V

    .line 2913
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v4, v7}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    .line 2914
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 2916
    :cond_2
    new-instance v4, Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 2917
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    invoke-virtual {v4, v5, v8}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->initAnimation(II)V

    .line 2918
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v4, p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setOnDrawMavFrameListener(Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;)V

    .line 2919
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v4, v7}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setActive(Z)V

    .line 2920
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v4, v7}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    .line 2921
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2927
    .end local v2           #middleFrame:I
    :cond_3
    const-string v4, "Gallery2/PhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incorrect path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2930
    .end local v0           #currentIndex:I
    :cond_4
    const-string v4, "Gallery2/PhotoDataAdapter"

    const-string v5, "mpoTotalCount <= 0"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;
    .locals 11
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1212
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    .line 1407
    :goto_0
    return-object v6

    .line 1214
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1215
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 1216
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v7, p1, 0x100

    aget-object v1, v6, v7

    .line 1217
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1218
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v4

    .line 1220
    .local v4, version:J
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    .line 1222
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 1217
    .end local v4           #version:J
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1223
    .restart local v4       #version:J
    :cond_4
    const/4 v6, 0x2

    if-ne p2, v6, :cond_5

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_5

    .line 1225
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 1226
    :cond_5
    const/high16 v6, -0x8000

    if-ne p2, v6, :cond_6

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_6

    .line 1228
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 1229
    :cond_6
    const/high16 v6, 0x2000

    if-ne p2, v6, :cond_7

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_7

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v6, :cond_7

    .line 1233
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 1234
    :cond_7
    const/4 v6, 0x2

    if-ne p2, v6, :cond_8

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_8

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_8

    .line 1238
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 1241
    :cond_8
    const/high16 v6, 0x1000

    if-ne p2, v6, :cond_9

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMAVSupported()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_9

    .line 1243
    const-string v6, "Gallery2/PhotoDataAdapter"

    const-string v7, "startTaskIfNeed: return existed mpoDecoderTask"

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1247
    :cond_9
    const/high16 v6, 0x800

    if-ne p2, v6, :cond_a

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_a

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedPanoramaScreenNail:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v6, :cond_a

    .line 1250
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1254
    :cond_a
    const/4 v6, 0x1

    if-ne p2, v6, :cond_c

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_c

    .line 1257
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne p1, v6, :cond_b

    .line 1258
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 1259
    .local v3, s:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v3, :cond_b

    .line 1260
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->triggerPhotoPageDecodeScreenNail()V

    .line 1261
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1262
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 1263
    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1264
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 1265
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 1266
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1271
    .end local v3           #s:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_b
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1272
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->triggerPhotoPageDecodeScreenNail()V

    .line 1273
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1277
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1279
    :cond_c
    const/4 v6, 0x2

    if-ne p2, v6, :cond_d

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_d

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_d

    .line 1282
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1283
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 1287
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1290
    :cond_d
    const/4 v6, 0x2

    if-ne p2, v6, :cond_e

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_e

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_e

    .line 1296
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    .line 1298
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1299
    .local v2, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 1300
    const/16 v6, 0x3c0

    iput v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 1301
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 1303
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;

    invoke-direct {v7, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;-><init>(Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1307
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1310
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_e
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v6, :cond_10

    .line 1311
    const/high16 v6, -0x8000

    if-ne p2, v6, :cond_10

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_10

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_10

    .line 1316
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    .line 1319
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1320
    .restart local v2       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 1323
    iget-boolean v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    .line 1324
    const-string v6, "Gallery2/PhotoDataAdapter"

    const-string v7, "Gif thumbnail loading fail, no need to decode Gif"

    invoke-static {v6, v7}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1329
    :cond_f
    const-string v6, "Gallery2/PhotoDataAdapter"

    const-string v7, "startTaskIfNeeded:start GifDecoder task"

    invoke-static {v6, v7}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v7

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$GifDecoderListener;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifDecoderListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1334
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1338
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_10
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v6, :cond_11

    .line 1339
    const/high16 v6, 0x2000

    if-ne p2, v6, :cond_11

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_11

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    const/high16 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_11

    .line 1345
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->stereoLayout:I

    .line 1347
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    .line 1350
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1351
    .restart local v2       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    .line 1352
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    .line 1353
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 1355
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;

    invoke-direct {v7, p0, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1359
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1364
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_11
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v6, :cond_12

    const/high16 v6, 0x1000

    if-ne p2, v6, :cond_12

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v6

    if-nez v6, :cond_12

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_12

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_12

    .line 1369
    const-string v6, "Gallery2/PhotoDataAdapter"

    const-string v7, "create mav decoder task"

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 1376
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1377
    .restart local v2       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoTotalCount:Z

    .line 1379
    const-string v6, "Gallery2/PhotoDataAdapter"

    const-string v7, "get mav total count"

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 1381
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 1383
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v7

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v1, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1386
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1390
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_12
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v6, :cond_13

    const/high16 v6, 0x800

    if-ne p2, v6, :cond_13

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedPanoramaScreenNail:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_13

    .line 1394
    const-string v6, "Gallery2/PhotoDataAdapter"

    const-string v7, "create panorama screen nail decode task"

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedPanoramaScreenNail:J

    .line 1397
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1398
    .restart local v2       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 1399
    const/16 v6, 0x400

    iput v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 1400
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 1401
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;

    invoke-direct {v7, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;-><init>(Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1404
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1407
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 677
    const-string v2, "Gallery2/PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v2, p1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 681
    .local v1, prevIndex:I
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 682
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 684
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v3, p1, 0x100

    aget-object v0, v2, v3

    .line 685
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_4

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 687
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 692
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 695
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail()V

    .line 697
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 698
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 700
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v2, :cond_3

    .line 701
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v2, p1, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/android/gallery3d/data/Path;)V

    .line 704
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 709
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 710
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->enterCameraPreview()V

    .line 711
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    goto :goto_0

    .line 685
    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_1

    .line 712
    :cond_5
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->leaveCameraPreview()V

    goto :goto_0
.end method

.method private updateDrmScreenNail()V
    .locals 9

    .prologue
    .line 2090
    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsDrmSupported:Z

    if-nez v5, :cond_1

    .line 2117
    :cond_0
    return-void

    .line 2091
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v5, :cond_0

    .line 2092
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 2093
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_3

    .line 2091
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2094
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2095
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_2

    .line 2096
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v4

    .line 2098
    .local v4, mtkScreeNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v4, :cond_2

    .line 2100
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v2, v1, v5

    .line 2101
    .local v2, index:I
    const/4 v5, -0x3

    if-lt v2, v5, :cond_2

    const/4 v5, 0x3

    if-gt v2, v5, :cond_2

    .line 2105
    if-eqz v2, :cond_4

    .line 2107
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    .line 2110
    :cond_4
    invoke-direct {p0, v4, v3, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2112
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v2, 0x3

    const-wide/16 v7, -0x1

    aput-wide v7, v5, v6

    goto :goto_1
.end method

.method private updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;I)Z
    .locals 4
    .parameter "mtkScreenNail"
    .parameter "index"

    .prologue
    .line 2121
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 2122
    .local v2, path:Lcom/android/gallery3d/data/Path;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 2125
    :goto_0
    return v3

    .line 2123
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2124
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2125
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v3

    goto :goto_0
.end method

.method private updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z
    .locals 6
    .parameter "mtkScreenNail"
    .parameter "item"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2130
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2132
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v1

    .line 2133
    .local v1, origSubType:I
    const/16 v0, 0xc

    .line 2136
    .local v0, drmSubMask:I
    invoke-virtual {p1}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    .line 2137
    .local v2, subType:I
    iget-boolean v3, p3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v3, :cond_0

    and-int v3, v2, v0

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-nez v3, :cond_2

    and-int v3, v2, v0

    if-nez v3, :cond_2

    .line 2140
    :cond_1
    iget-boolean v3, p3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v3, :cond_4

    .line 2141
    and-int/lit8 v2, v2, -0xd

    .line 2142
    invoke-virtual {p1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    :goto_1
    move v5, v4

    .line 2149
    :cond_2
    return v5

    .end local v0           #drmSubMask:I
    .end local v1           #origSubType:I
    .end local v2           #subType:I
    :cond_3
    move v3, v5

    .line 2130
    goto :goto_0

    .line 2145
    .restart local v0       #drmSubMask:I
    .restart local v1       #origSubType:I
    .restart local v2       #subType:I
    :cond_4
    invoke-virtual {p1, v1}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    goto :goto_1
.end method

.method private updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 9
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const/4 v7, 0x0

    .line 527
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 528
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v4, p2, :cond_2

    .line 529
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 530
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 557
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 534
    :cond_2
    if-eqz p2, :cond_3

    .line 535
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 536
    .restart local v1       #fullImage:Landroid/graphics/BitmapRegionDecoder;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 537
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isOutOfLimitation(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    const-string v4, "Gallery2/PhotoDataAdapter"

    const-string v5, "out of limitation: %s [mime type: %s, width: %d, height: %d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_0

    .line 548
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 549
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/BitmapRegionDecoder;

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 550
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v4, :cond_4

    .line 551
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 552
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 553
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v7}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 556
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateGifDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2554
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, ">> updateGifDecoder"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2556
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eq v2, p2, :cond_1

    .line 2557
    :cond_0
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "updateGifDecoder:invalid entry or future"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :goto_0
    return-void

    .line 2561
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 2562
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v2, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 2565
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v1

    .line 2567
    .local v1, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2569
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "updateGifDecoder:no animation for non-consume drm"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 2574
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "<< updateGifDecoder"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2571
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startGifAnimation(Lcom/android/gallery3d/data/Path;)V

    goto :goto_1
.end method

.method private updateImageCache()V
    .locals 13

    .prologue
    .line 1411
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageUpdateImageCache()V

    .line 1412
    new-instance v8, Ljava/util/HashSet;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1413
    .local v8, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v9, :cond_15

    .line 1414
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v10, v1, 0x100

    aget-object v4, v9, v10

    .line 1415
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v4, :cond_1

    .line 1413
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 1417
    .local v6, path:Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1418
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1419
    if-eqz v0, :cond_14

    .line 1420
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 1421
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_2

    .line 1422
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1423
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 1425
    :cond_2
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 1426
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1428
    :cond_3
    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 1432
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v9, v9, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v9, :cond_4

    .line 1433
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v7, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 1434
    .local v7, s:Lcom/android/gallery3d/ui/BitmapScreenNail;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/android/gallery3d/ui/BitmapScreenNail;->updatePlaceholderSize(II)V

    .line 1440
    .end local v7           #s:Lcom/android/gallery3d/ui/BitmapScreenNail;
    :cond_4
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lez v9, :cond_6

    .line 1442
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_5

    .line 1443
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1444
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1446
    :cond_5
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 1447
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    .line 1448
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_6

    .line 1450
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1451
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1457
    :cond_6
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lez v9, :cond_9

    .line 1459
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_7

    .line 1460
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1461
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1463
    :cond_7
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_8

    .line 1464
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1465
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1467
    :cond_8
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    .line 1471
    :cond_9
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v9, :cond_c

    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lez v9, :cond_c

    .line 1473
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_a

    .line 1474
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1475
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1477
    :cond_a
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    .line 1478
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_b

    .line 1480
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1481
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1483
    :cond_b
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_c

    .line 1485
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1486
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1492
    :cond_c
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v9, :cond_13

    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lez v9, :cond_13

    .line 1494
    const-string v9, "Gallery2/PhotoDataAdapter"

    const-string v10, "updateImageCache: release mav"

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_d

    .line 1496
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1497
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1499
    :cond_d
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1500
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 1501
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    .line 1503
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_e

    .line 1504
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1505
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1507
    :cond_e
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v9, :cond_10

    .line 1508
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_f

    .line 1509
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1510
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1512
    :cond_f
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_10

    .line 1513
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1514
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1518
    :cond_10
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_13

    .line 1519
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v5, v9

    .line 1520
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_2
    if-ge v3, v5, :cond_12

    .line 1521
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    if-eqz v9, :cond_11

    .line 1522
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1523
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v10, 0x0

    aput-object v10, v9, v3

    .line 1520
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1526
    :cond_12
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 1531
    .end local v3           #idx:I
    .end local v5           #length:I
    :cond_13
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v9, :cond_0

    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_0

    .line 1534
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1535
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_1

    .line 1540
    :cond_14
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 1541
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1546
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v4           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_15
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_16
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 1547
    .restart local v6       #path:Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1548
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1549
    :cond_17
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_18

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1550
    :cond_18
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_19

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1553
    :cond_19
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v9, :cond_1b

    .line 1554
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_1a

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1555
    :cond_1a
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_1b

    .line 1557
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1558
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1563
    :cond_1b
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v9, :cond_22

    .line 1564
    const-string v9, "Gallery2/PhotoDataAdapter"

    const-string v10, "updateImageCache: release mav"

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_1c

    .line 1566
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1568
    :cond_1c
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1569
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    .line 1571
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_1d

    .line 1572
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1573
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1575
    :cond_1d
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v9, :cond_1f

    .line 1576
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_1e

    .line 1577
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1578
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1580
    :cond_1e
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_1f

    .line 1581
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1582
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1586
    :cond_1f
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_22

    .line 1587
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v5, v9

    .line 1588
    .restart local v5       #length:I
    const/4 v3, 0x0

    .restart local v3       #idx:I
    :goto_4
    if-ge v3, v5, :cond_21

    .line 1589
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    if-eqz v9, :cond_20

    .line 1590
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1591
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v10, 0x0

    aput-object v10, v9, v3

    .line 1588
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1594
    :cond_21
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 1600
    .end local v3           #idx:I
    .end local v5           #length:I
    :cond_22
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_23

    .line 1602
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1603
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_23

    .line 1604
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1605
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1608
    :cond_23
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v9, :cond_26

    .line 1609
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_24

    .line 1610
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1612
    :cond_24
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_25

    .line 1614
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1615
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1617
    :cond_25
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_26

    .line 1619
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1620
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1624
    :cond_26
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v9, :cond_16

    .line 1625
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_27

    .line 1626
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1627
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1629
    :cond_27
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_16

    .line 1630
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1631
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_3

    .line 1636
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_28
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageUpdateImageCache()V

    .line 1637
    return-void
.end method

.method private updateImageRequests()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 1026
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 1029
    .local v1, currentIndex:I
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v9, v1, 0x100

    aget-object v5, v8, v9

    .line 1030
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v8, v9, :cond_0

    .line 1035
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageUpdateImageRequest()V

    .line 1037
    const/4 v7, 0x0

    .line 1038
    .local v7, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 1039
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 1040
    .local v6, offset:I
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 1041
    .local v0, bit:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v8, :cond_3

    .line 1038
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1042
    :cond_3
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    .line 1043
    if-eqz v7, :cond_2

    .line 1047
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1048
    .local v2, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_6

    .line 1049
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1050
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1051
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1053
    :cond_6
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_7

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_7

    .line 1054
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1055
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 1056
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1060
    :cond_7
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_8

    .line 1062
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1063
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1064
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    .line 1068
    :cond_8
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v8, :cond_9

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_9

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_9

    .line 1071
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1072
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1073
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    .line 1076
    :cond_9
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_a

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_a

    .line 1079
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1080
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1081
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    .line 1085
    :cond_a
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v8, :cond_b

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_b

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_b

    .line 1087
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1088
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1089
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 1093
    :cond_b
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_5

    .line 1095
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1096
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1097
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedPanoramaScreenNail:J

    goto/16 :goto_2

    .line 1101
    .end local v2           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_c
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageUpdateImageRequest()V

    goto/16 :goto_0
.end method

.method private updateMavDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 15
    .parameter "path"
    .parameter
    .parameter "item"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;",
            "Lcom/android/gallery3d/data/MediaItem;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2797
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const-string v10, "Gallery2/PhotoDataAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> updateMavDecoder, type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2799
    .local v6, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v6, :cond_0

    iget-object v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    move-object/from16 v0, p2

    if-eq v10, v0, :cond_1

    .line 2800
    :cond_0
    const-string v10, "Gallery2/PhotoDataAdapter"

    const-string v11, "updateMpoDecoder:invalid entry or future"

    invoke-static {v10, v11}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :goto_0
    return-void

    .line 2803
    :cond_1
    if-nez p4, :cond_8

    .line 2804
    const/4 v10, 0x0

    iput-object v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 2805
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget v10, v10, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoTotalCount:I

    iput v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 2806
    const-string v10, "Gallery2/PhotoDataAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the mav total count is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v10, :cond_2

    .line 2810
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    iget v11, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    add-int/lit8 v11, v11, -0x1

    const/4 v12, -0x1

    invoke-interface {v10, v11, v12}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 2814
    :cond_2
    new-instance v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v8}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 2815
    .local v8, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoFrames:Z

    .line 2817
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 2818
    .local v3, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 2819
    .local v5, displaywidth:I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 2820
    .local v4, displayHeight:I
    mul-int v10, v5, v4

    mul-int/lit8 v9, v10, 0x64

    .line 2822
    .local v9, useMemoryForFullDisplay:I
    int-to-long v10, v9

    const-wide/32 v12, 0x6400000

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    const/4 v7, 0x2

    .line 2823
    .local v7, parameter:I
    :goto_1
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10}, Lcom/mediatek/gallery3d/util/MediatekFeature;->availableMemoryForMavPlayback(Lcom/android/gallery3d/app/AbstractGalleryActivity;)J

    move-result-wide v1

    .line 2825
    .local v1, availableMemory:J
    const-wide/32 v10, 0x6400000

    cmp-long v10, v1, v10

    if-lez v10, :cond_6

    .line 2826
    div-int v10, v4, v7

    iput v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayHeight:I

    .line 2827
    div-int v10, v5, v7

    iput v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayWidth:I

    .line 2837
    :cond_3
    :goto_2
    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    .line 2838
    const-string v10, "Gallery2/PhotoDataAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "display width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/MediaItem;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 2842
    const-string v10, "Gallery2/PhotoDataAdapter"

    const-string v11, "start load all mav frames"

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v8}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v11

    new-instance v12, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;

    invoke-virtual/range {p3 .. p3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-direct {v12, p0, v13, v0, v14}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v10, v11, v12}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v10

    iput-object v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 2870
    .end local v1           #availableMemory:J
    .end local v3           #defaultDisplay:Landroid/view/Display;
    .end local v4           #displayHeight:I
    .end local v5           #displaywidth:I
    .end local v7           #parameter:I
    .end local v8           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v9           #useMemoryForFullDisplay:I
    :cond_4
    :goto_3
    const-string v10, "Gallery2/PhotoDataAdapter"

    const-string v11, "<< updateMavDecoder"

    invoke-static {v10, v11}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2822
    .restart local v3       #defaultDisplay:Landroid/view/Display;
    .restart local v4       #displayHeight:I
    .restart local v5       #displaywidth:I
    .restart local v8       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .restart local v9       #useMemoryForFullDisplay:I
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    .line 2828
    .restart local v1       #availableMemory:J
    .restart local v7       #parameter:I
    :cond_6
    const-wide/32 v10, 0x6400000

    cmp-long v10, v1, v10

    if-gtz v10, :cond_7

    const-wide/32 v10, 0x3200000

    cmp-long v10, v1, v10

    if-lez v10, :cond_7

    .line 2829
    const-string v10, "Gallery2/PhotoDataAdapter"

    const-string v11, "no enough memory, degrade sample rate to 1/2 of parameter"

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    mul-int/lit8 v10, v7, 0x2

    div-int v10, v4, v10

    iput v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayHeight:I

    .line 2831
    mul-int/lit8 v10, v7, 0x2

    div-int v10, v5, v10

    iput v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayWidth:I

    goto/16 :goto_2

    .line 2832
    :cond_7
    const-wide/32 v10, 0x3200000

    cmp-long v10, v1, v10

    if-gtz v10, :cond_3

    .line 2833
    const-string v10, "Gallery2/PhotoDataAdapter"

    const-string v11, "no enough memory, degrade sample rate to 1/4 of parameter"

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    mul-int/lit8 v10, v7, 0x4

    div-int v10, v4, v10

    iput v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayHeight:I

    .line 2835
    mul-int/lit8 v10, v7, 0x4

    div-int v10, v5, v10

    iput v10, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayWidth:I

    goto/16 :goto_2

    .line 2846
    .end local v1           #availableMemory:J
    .end local v3           #defaultDisplay:Landroid/view/Display;
    .end local v4           #displayHeight:I
    .end local v5           #displaywidth:I
    .end local v7           #parameter:I
    .end local v8           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v9           #useMemoryForFullDisplay:I
    :cond_8
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_4

    .line 2847
    const/4 v10, 0x0

    iput-object v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 2848
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v10, v10, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v10

    iput-object v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 2849
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    .line 2850
    iget-object v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v10, :cond_9

    iget-object v10, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_9

    .line 2851
    const-string v10, "Gallery2/PhotoDataAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mpo frame width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-interface {v12}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-interface {v12}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 2855
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingSuccess:Z

    .line 2856
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 2857
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startMavPlayback(Lcom/android/gallery3d/data/Path;)V

    .line 2868
    :goto_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto/16 :goto_3

    .line 2861
    :cond_9
    const-string v10, "Gallery2/PhotoDataAdapter"

    const-string v11, "Invalid mpo file, load frame failed"

    invoke-static {v10, v11}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 2863
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingSuccess:Z

    .line 2864
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 2865
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c026c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method private updateOriginScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2307
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2308
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v2, p2, :cond_2

    .line 2309
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/ScreenNail;

    .line 2310
    .local v1, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v1, :cond_1

    .line 2311
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 2326
    .end local v1           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_1
    :goto_0
    return-void

    .line 2316
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 2317
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/ScreenNail;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2319
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_3

    .line 2320
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 2321
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 2322
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 2325
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updatePanoramaScreenNail(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/util/Future;)V
    .locals 9
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaItem;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x1

    .line 3129
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 3130
    .local v4, path:Lcom/android/gallery3d/data/Path;
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 3131
    .local v2, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v5, p2, :cond_2

    .line 3132
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3133
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 3134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3161
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 3138
    :cond_2
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3141
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 3142
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v6

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3143
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v7}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->resizeBitmapToProperRatio(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3144
    new-instance v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailWidth()I

    move-result v7

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailHeight()I

    move-result v8

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIII)V

    .line 3147
    .local v1, config:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    iget-object v5, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v5, :cond_5

    .line 3148
    iget-object v5, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v5, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-virtual {v5, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3153
    :goto_1
    const/4 v3, -0x3

    .local v3, i:I
    :goto_2
    const/4 v5, 0x3

    if-gt v3, v5, :cond_4

    .line 3154
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 3155
    if-nez v3, :cond_3

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 3156
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 3160
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 3150
    .end local v3           #i:I
    :cond_5
    new-instance v5, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-direct {v5, v0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;-><init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    iput-object v5, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    .line 3153
    .restart local v3       #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageDecodeScreenNailListener()V

    .line 485
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 486
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/ScreenNail;

    .line 488
    .local v4, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v5, p2, :cond_2

    .line 489
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 497
    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 501
    .local v2, loadFailed:Z
    :goto_1
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v5, v5, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v5, :cond_3

    .line 502
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 503
    .local v3, original:Lcom/android/gallery3d/ui/BitmapScreenNail;
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;->combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    .line 506
    .end local v3           #original:Lcom/android/gallery3d/ui/BitmapScreenNail;
    :cond_3
    if-nez v4, :cond_7

    .line 507
    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 513
    :goto_2
    const/4 v1, -0x3

    .local v1, i:I
    :goto_3
    const/4 v5, 0x3

    if-gt v1, v5, :cond_5

    .line 514
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    if-ne p1, v5, :cond_8

    .line 515
    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 516
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 520
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 523
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageDecodeScreenNailListener()V

    goto :goto_0

    .line 497
    .end local v1           #i:I
    .end local v2           #loadFailed:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 509
    .restart local v2       #loadFailed:Z
    :cond_7
    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 510
    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_2

    .line 513
    .restart local v1       #i:I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private updateScreenNailSize(Lcom/android/gallery3d/ui/ScreenNail;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "screenNail"
    .parameter "item"

    .prologue
    .line 2759
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getImageOptions()Lcom/mediatek/gallery3d/ext/IImageOptions;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IImageOptions;->shouldUseOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2761
    :cond_0
    return-void
.end method

.method private updateScreenNailUploadQueue()V
    .locals 2

    .prologue
    .line 736
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->clear()V

    .line 737
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 738
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 739
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 740
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_0
    return-void
.end method

.method private updateSecondScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 7
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2382
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2383
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v4, p2, :cond_2

    .line 2384
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 2385
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->recycle()V

    .line 2420
    :cond_1
    :goto_0
    return-void

    .line 2389
    .end local v0           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_2
    iput-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 2390
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 2392
    .restart local v0       #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 2393
    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    :goto_1
    iput-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2395
    new-instance v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2397
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 2398
    const-string v3, "Gallery2/PhotoDataAdapter"

    const-string v4, "updateSecondScreenNail:update tileProvider"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 2400
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 2401
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit16 v4, v4, 0x100

    aget-object v2, v3, v4

    .line 2405
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 2409
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 2410
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 2419
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 2393
    :cond_4
    new-instance v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2414
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 2415
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    goto :goto_2
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 993
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageUpdateSlidingWindow()V

    .line 995
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 997
    .local v2, start:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 999
    .local v0, end:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_0

    .line 1000
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageUpdateSlidingWindow()V

    .line 1023
    :goto_0
    return-void

    .line 1004
    :cond_0
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 1005
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 1008
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x80

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit16 v4, v4, -0x100

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 1010
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit16 v4, v2, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1011
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_5

    .line 1013
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_4

    .line 1014
    if-lt v1, v2, :cond_2

    if-lt v1, v0, :cond_3

    .line 1015
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v4, v1, 0x100

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 1013
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1018
    :cond_4
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 1019
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 1020
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    .line 1022
    .end local v1           #i:I
    :cond_5
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageUpdateSlidingWindow()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 3

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 957
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 962
    :goto_0
    return-void

    .line 960
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 965
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageUpdateTileProvider()V

    .line 966
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 967
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 968
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_2

    .line 971
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProviderEx(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 972
    const-string v4, "Gallery2/PhotoDataAdapter"

    const-string v5, "updateTileProvider:we return!"

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageUpdateTileProvider()V

    .line 990
    :goto_0
    return-void

    .line 977
    :cond_0
    if-eqz v0, :cond_1

    .line 978
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 980
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 989
    :goto_1
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageUpdateTileProvider()V

    goto :goto_0

    .line 982
    :cond_1
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    .line 983
    .local v3, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 984
    .local v1, height:I
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    goto :goto_1

    .line 987
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    goto :goto_1
.end method

.method private updateTileProviderEx(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z
    .locals 12
    .parameter "entry"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2022
    if-eqz p1, :cond_1

    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2027
    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getScreenNailSubType(Lcom/android/gallery3d/ui/ScreenNail;)I

    move-result v4

    .line 2029
    .local v4, subType:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/util/MediatekFeature;->showDrmMicroThumb(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2071
    :cond_0
    :goto_1
    return v9

    .end local v4           #subType:I
    :cond_1
    move v7, v9

    .line 2022
    goto :goto_0

    .line 2033
    .restart local v4       #subType:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v5

    .line 2034
    .local v5, targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v5, :cond_0

    .line 2037
    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v5, v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->syncSubType(Lcom/android/gallery3d/ui/ScreenNail;Lcom/android/gallery3d/ui/ScreenNail;)Z

    .line 2039
    invoke-static {v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getSizeForSubtype(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    .line 2041
    .local v3, size:Lcom/android/gallery3d/ui/PhotoView$Size;
    if-eqz v3, :cond_6

    .line 2042
    iget v6, v3, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 2043
    .local v6, w:I
    iget v2, v3, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 2048
    .local v2, h:I
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v7, v5, v6, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 2050
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v7, :cond_3

    .line 2052
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v10, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v7, v8, v10}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;)V

    .line 2053
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v7, v10, v11}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;)V

    .line 2056
    :cond_3
    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v7, :cond_4

    .line 2058
    iget v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->stereoLayout:I

    iget-object v10, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v10}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v10

    invoke-static {v8, v7, v10}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    .line 2060
    .local v1, fullWidth:I
    iget v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->stereoLayout:I

    iget-object v10, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v10}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v10

    invoke-static {v9, v7, v10}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v0

    .line 2062
    .local v0, fullHeight:I
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v9, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v7, v9, v5, v1, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 2067
    .end local v0           #fullHeight:I
    .end local v1           #fullWidth:I
    :cond_4
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v7, :cond_5

    .line 2068
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v9, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v7, v9}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setPanoramaScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    :cond_5
    move v9, v8

    .line 2071
    goto :goto_1

    .line 2045
    .end local v2           #h:I
    .end local v6           #w:I
    :cond_6
    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 2046
    .restart local v6       #w:I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v2

    .restart local v2       #h:I
    goto :goto_2
.end method

.method private uploadScreenNail(I)V
    .locals 7
    .parameter "offset"

    .prologue
    .line 719
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v5, p1

    .line 720
    .local v1, index:I
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v5, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 723
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 725
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 726
    .local v0, e:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    .line 728
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 729
    .local v3, s:Lcom/android/gallery3d/ui/ScreenNail;
    instance-of v5, v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v5, :cond_0

    .line 730
    check-cast v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    .end local v3           #s:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TiledScreenNail;->getTexture()Lcom/android/gallery3d/ui/TiledTexture;

    move-result-object v4

    .line 731
    .local v4, t:Lcom/android/gallery3d/ui/TiledTexture;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->addTexture(Lcom/android/gallery3d/ui/TiledTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelCurrentMavDecodeTask()V
    .locals 3

    .prologue
    .line 3073
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 3074
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3075
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 3076
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 3077
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 3079
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 3080
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 3082
    :cond_1
    return-void
.end method

.method public drawMavFrame(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x5

    .line 2990
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2991
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2993
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2996
    return-void
.end method

.method public enterConsumeMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2154
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsDrmSupported:Z

    if-nez v2, :cond_0

    .line 2191
    :goto_0
    return-void

    .line 2156
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 2157
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2159
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 2160
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "enter is null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2163
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v2, :cond_2

    .line 2165
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "enterConsumeMode:we already in consumed mode!"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2170
    :cond_2
    iput-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    .line 2173
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2174
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isTimeInterval()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2175
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTimeIntervalDRM:Z

    .line 2183
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail()V

    .line 2186
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 2188
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 2190
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startGifAnimation(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method public enteredConsumeMode()Z
    .locals 3

    .prologue
    .line 2194
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2195
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 819
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 820
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 807
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 808
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 809
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 810
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 813
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 873
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 874
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v1

    .line 875
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 876
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "offset"

    .prologue
    .line 918
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    .line 919
    .local v0, index:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v2, v0, 0x100

    aget-object v1, v1, v2

    .line 922
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPanoramaScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPanoramaScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getPanoramaScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v4, 0x0

    .line 781
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v3, p1

    .line 782
    .local v1, index:I
    if-ltz v1, :cond_0

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 797
    :goto_0
    return-object v3

    .line 784
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 785
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 786
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v2, :cond_3

    move-object v3, v4

    .line 787
    goto :goto_0

    .line 784
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 788
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v4

    .line 789
    goto :goto_0

    .line 790
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 791
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_5

    move-object v3, v4

    .line 792
    goto :goto_0

    .line 793
    :cond_5
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_6

    .line 794
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->newPlaceholderPanoramaScreenNail(Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 797
    :cond_6
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 751
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v4, p1

    .line 752
    .local v1, index:I
    if-ltz v1, :cond_0

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v4, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-object v3

    .line 753
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v4, :cond_3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 755
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 756
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 758
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 760
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    .line 765
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 766
    .local v3, targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v3, :cond_0

    .line 770
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 771
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 772
    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 775
    :cond_2
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 753
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "stereoIndex"

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTotalFrameCount()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3048
    const/4 v1, 0x0

    .line 3049
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 3050
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 3051
    .local v0, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    if-eqz v0, :cond_0

    .line 3052
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 3054
    .restart local v1       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_0
    if-eqz v1, :cond_1

    .line 3055
    iget v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 3057
    :cond_1
    return v3

    .line 3050
    .end local v0           #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 831
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 865
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 866
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMav(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    .line 2749
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2750
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_0

    .line 2754
    :goto_0
    return v0

    .line 2753
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2754
    .local v0, isMavType:Z
    :cond_1
    goto :goto_0
.end method

.method public isMavLoadingFinished()Z
    .locals 1

    .prologue
    .line 3065
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    return v0
.end method

.method public isMavLoadingSuccess()Z
    .locals 1

    .prologue
    .line 3069
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingSuccess:Z

    return v0
.end method

.method public isPanorama(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 837
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v2, :cond_2

    .line 838
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 846
    :cond_0
    :goto_0
    return v1

    .line 841
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 842
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v1

    goto :goto_0

    .line 846
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 857
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 858
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 747
    return-void
.end method

.method public pause()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 577
    iput-boolean v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 579
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 580
    iput-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 582
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 585
    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsDrmSupported:Z

    if-eqz v5, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->saveDrmConsumeStatus()V

    .line 589
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 590
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v5}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 591
    :cond_2
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v5}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 592
    :cond_3
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 595
    :cond_4
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_5

    .line 597
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v5}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 601
    :cond_5
    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_7

    .line 603
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v5}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 604
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v5, :cond_6

    .line 605
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 607
    :cond_6
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v5, :cond_7

    .line 608
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 613
    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 614
    .local v0, currentItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_b

    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v5

    if-ne v5, v10, :cond_b

    .line 617
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_8

    .line 618
    const-string v5, "TAG"

    const-string v6, "cancel decoder task when pause"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v5}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 620
    iput-object v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 623
    :cond_8
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v5, :cond_b

    .line 624
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v4, v5

    .line 625
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_1
    if-ge v3, v4, :cond_a

    .line 626
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v5, v5, v3

    if-eqz v5, :cond_9

    .line 627
    const-string v5, "Gallery2/PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mpoFrames recycle   idx========"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 629
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aput-object v8, v5, v3

    .line 625
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 632
    :cond_a
    iput-object v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 637
    .end local v3           #idx:I
    .end local v4           #length:I
    :cond_b
    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v5, :cond_1

    .line 638
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_c

    .line 639
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v5}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 640
    iput-object v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 642
    :cond_c
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v5, :cond_1

    .line 643
    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 644
    iput-object v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_0

    .line 650
    .end local v0           #currentItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v1           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_d
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 651
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 653
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->clear()V

    .line 654
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->freeResources()V

    .line 657
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v5, :cond_e

    .line 660
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v5, v9}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setActive(Z)V

    .line 661
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    .line 662
    iput-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 664
    :cond_e
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 562
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->prepareResources()V

    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 565
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 566
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 568
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 571
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startConShotsAnimation(Lcom/android/gallery3d/data/Path;)V

    .line 572
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 573
    return-void
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, p1, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 929
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 930
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 931
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 934
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail()V

    .line 936
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 939
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 940
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    .line 481
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 947
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 948
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 953
    return-void
.end method

.method public setImageBitmap(II)V
    .locals 8
    .parameter "index"
    .parameter "animationMode"

    .prologue
    .line 3002
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 3003
    .local v1, currentItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 3004
    .local v2, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    if-nez v2, :cond_0

    .line 3005
    const-string v5, "Gallery2/PhotoDataAdapter"

    const-string v6, "setImageBitmap: the currentPath is null"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 3008
    .local v3, mavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v3, :cond_2

    .line 3009
    const-string v5, "Gallery2/PhotoDataAdapter"

    const-string v6, "setImageBitmap: the mavEntry is null"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :goto_1
    return-void

    .line 3003
    .end local v2           #currentPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #mavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3012
    .restart local v2       #currentPath:Lcom/android/gallery3d/data/Path;
    .restart local v3       #mavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_2
    iget-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v5, :cond_3

    .line 3013
    const-string v5, "Gallery2/PhotoDataAdapter"

    const-string v6, "setImageBitmap: the mpoFrames of current entry is null"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3016
    :cond_3
    const/4 v4, 0x0

    .line 3017
    .local v4, nextIndex:I
    const/4 v0, 0x0

    .line 3019
    .local v0, arrayLen:I
    iget-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v0, v5

    .line 3020
    if-ltz p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 3021
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    .line 3022
    const-string v5, "Gallery2/PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get current mpo frame, index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    :cond_4
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    if-eqz v5, :cond_7

    .line 3026
    const/4 v5, 0x1

    if-le v0, v5, :cond_5

    .line 3027
    add-int/lit8 v4, p1, 0x1

    .line 3028
    if-gez v4, :cond_6

    .line 3029
    move v4, p1

    .line 3037
    :cond_5
    :goto_2
    iput v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNextMpoIndex:I

    .line 3038
    const-string v5, "Gallery2/PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get next mpo frame, index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    invoke-direct {p0, v5, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fresh(II)V

    goto :goto_1

    .line 3030
    :cond_6
    add-int/lit8 v5, v0, -0x1

    if-le v4, v5, :cond_5

    .line 3031
    add-int/lit8 v4, v0, -0x1

    goto :goto_2

    .line 3035
    :cond_7
    move v4, p1

    goto :goto_2
.end method

.method public setIsOpenFromLocal(Z)V
    .locals 1
    .parameter "isOpenFromLocal"

    .prologue
    .line 3165
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsOpenFromLocal:Ljava/lang/Boolean;

    .line 3166
    return-void
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3044
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 3045
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 826
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 827
    return-void
.end method

.method public setSourceAndItem(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "mediaSet"
    .parameter "itemPath"

    .prologue
    .line 391
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 392
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 393
    return-void
.end method

.method public showWaitingIfNeed()V
    .locals 3

    .prologue
    .line 3188
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsNeedUpdateUI:Z

    if-nez v0, :cond_2

    .line 3189
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mWaitToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3190
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0c0334

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mWaitToast:Landroid/widget/Toast;

    .line 3194
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mWaitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3198
    :cond_1
    :goto_0
    return-void

    .line 3195
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mWaitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 3196
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mWaitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method public updateMavStereoMode(Z)V
    .locals 0
    .parameter "isMavStereoMode"

    .prologue
    .line 3061
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    .line 3062
    return-void
.end method

.method public updateMavcontent(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 2956
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-eqz v2, :cond_0

    const v2, 0xffff

    if-ne p1, v2, :cond_1

    .line 2987
    :cond_0
    :goto_0
    return-void

    .line 2959
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    if-nez v2, :cond_0

    .line 2962
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 2963
    .local v1, mPath:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2964
    .local v0, mMavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-ltz p1, :cond_2

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v2, v2

    if-lt p1, v2, :cond_3

    .line 2966
    :cond_2
    const-string v2, "Gallery2/PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[renderCurrentFrame]mCurrentMpoIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] out of bounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2974
    :cond_3
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2977
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    if-eqz v2, :cond_4

    .line 2978
    const-string v2, "Gallery2/PhotoDataAdapter"

    const-string v3, "[renderCurrentFrame] mpo frame has been recyled, return"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2982
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2984
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 2985
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    goto :goto_0
.end method
