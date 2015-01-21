.class public Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.super Lcom/android/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;
.implements Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifDecoderListener;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static final MSG_RUN_OBJECT:I = 0x2

.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final MSG_UPDATE_LARGE_IMAGE:I = 0x4

.field private static final MSG_UPDATE_MAV_FRAME:I = 0x5

.field private static final MSG_UPDATE_PANORAMA:I = 0x6

.field private static final MSG_UPDATE_SECOND_IMAGE:I = 0x3

.field private static final SIZE_BACKUP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Gallery2/SinglePhotoDataAdapter"

.field private static final TYPE_LOAD_FRAME:I = 0x1

.field private static final TYPE_LOAD_TOTAL_COUNT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final mIsGifAnimationSupported:Z = false

#the value of this static final field might be set in the static constructor
.field private static final mIsMavSupported:Z = false

#the value of this static final field might be set in the static constructor
.field private static final mIsPanorama3DSupported:Z = false

#the value of this static final field might be set in the static constructor
.field private static final mIsStereoDisplaySupported:Z = false

.field private static final mShowThumbFirst:Z = true


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimateGif:Z

.field private mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

.field private mCurrentFrameNum:I

.field private mCurrentGifFrame:Landroid/graphics/Bitmap;

.field private mCurrentMpoIndex:I

.field private mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mFirstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

.field private mGifTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mIsActive:Z

.field private mIsMavLoadingFinished:Z

.field private mIsMavLoadingSuccess:Z

.field private mIsMavStereoMode:Z

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mLargeListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field private mMavPlayback:Z

.field private mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

.field private mMpoDecoderTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mNextMpoIndex:I

.field private mOldCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mOldFirstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mOldSecondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mPanoramaListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field private mPanoramaTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field private mPanoramaTaskSubmit:Z

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mSecondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mSecondThumbListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mShowStereoImage:Z

.field private mShowedThumb:Z

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mThumbListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalFrameCount:I

.field private mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

.field private mpoTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifAnimationSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsGifAnimationSupported:Z

    .line 84
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsStereoDisplaySupported:Z

    .line 86
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMAVSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    .line 89
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsPanorama3DSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "activity"
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 127
    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 143
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z

    .line 236
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    .line 269
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    .line 278
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$4;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mSecondThumbListener:Lcom/android/gallery3d/util/FutureListener;

    .line 972
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    .line 974
    iput v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    .line 975
    iput v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mNextMpoIndex:I

    .line 1075
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$5;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaListener:Lcom/android/gallery3d/util/FutureListener;

    .line 148
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 151
    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 155
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 158
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mAnimateGif:Z

    .line 164
    :goto_1
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    const/high16 v3, 0x200

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 166
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavPlayback:Z

    .line 172
    :goto_2
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsStereoDisplaySupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    const/high16 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    .line 175
    const-string v0, "Gallery2/SinglePhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gallery2/SinglePhotoDataAdapter:mShowStereoImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 177
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 219
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 220
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    .line 160
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mAnimateGif:Z

    goto :goto_1

    .line 168
    :cond_2
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavPlayback:Z

    goto :goto_2

    :cond_3
    move v1, v2

    .line 172
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeSecondThumbComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTotalFrameCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateGifFrame(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateMavDecoder(Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateMavcontent(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodePanoramaComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->startGifAnimation(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method private fresh(II)V
    .locals 2
    .parameter "lastIndex"
    .parameter "animationMode"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v0, :cond_0

    .line 1037
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->getAnimationTagetIndex()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->initAnimation(II)V

    .line 1042
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    goto :goto_0
.end method

.method private getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;
    .locals 7
    .parameter "bmps"

    .prologue
    .line 919
    if-nez p1, :cond_1

    .line 920
    const/4 v3, 0x0

    .line 934
    :cond_0
    return-object v3

    .line 922
    :cond_1
    array-length v1, p1

    .line 923
    .local v1, len:I
    new-array v3, v1, [Lcom/android/gallery3d/ui/ScreenNail;

    .line 924
    .local v3, screenNails:[Lcom/android/gallery3d/ui/ScreenNail;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 925
    aget-object v4, p1, v0

    if-nez v4, :cond_2

    .line 926
    const-string v4, "Gallery2/SinglePhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenNails: bmps["

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

    .line 928
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 929
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v2, :cond_3

    .line 930
    new-instance v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .end local v2           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    aget-object v4, p1, v0

    invoke-direct {v2, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 932
    .restart local v2       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_3
    aput-object v2, v3, v0

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 302
    :try_start_0
    iget-object v5, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    .line 303
    .local v1, fullWidth:I
    iget-object v5, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 304
    .local v0, fullHeight:I
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    .line 306
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v6

    invoke-static {v5, v6, v0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v0

    .line 309
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget-object v6, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 311
    .local v3, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v3, :cond_1

    .line 312
    iget-object v5, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v5, v3, v1, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 317
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 320
    sget-boolean v5, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->isPanorama(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z

    if-nez v5, :cond_0

    .line 322
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 323
    .local v2, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 324
    const/16 v5, 0x400

    iput v5, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 325
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 326
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v6, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;

    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v6, p0, v7, v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    .line 328
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z

    .line 334
    .end local v0           #fullHeight:I
    .end local v1           #fullWidth:I
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v3           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_0
    :goto_1
    return-void

    .line 314
    .restart local v0       #fullHeight:I
    .restart local v1       #fullWidth:I
    .restart local v3       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_1
    iget-object v5, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v6, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v5, v6, v1, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0           #fullHeight:I
    .end local v1           #fullWidth:I
    .end local v3           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :catch_0
    move-exception v4

    .line 332
    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "Gallery2/SinglePhotoDataAdapter"

    const-string v6, "fail to decode large"

    invoke-static {v5, v6, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onDecodePanoramaComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1118
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    const-string v0, "Gallery2/SinglePhotoDataAdapter"

    const-string v1, "<onDecodePanoramaComplete>"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    .line 1121
    return-void
.end method

.method private onDecodeSecondThumbComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 409
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v0, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 411
    .local v0, second:Landroid/graphics/Bitmap;
    :goto_0
    const-string v2, "Gallery2/SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDecodeSecondThumbComplete:second="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    if-nez v0, :cond_2

    .line 429
    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    if-eq v2, v6, :cond_0

    .line 431
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 432
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 436
    .end local v0           #second:Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 409
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    .restart local v0       #second:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v2, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v3, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setStereoScreenNail(ILandroid/graphics/Bitmap;)V

    .line 418
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setStereoScreenNail(ILandroid/graphics/Bitmap;)V

    .line 420
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 424
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->resetStereoMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    if-eq v2, v6, :cond_0

    .line 431
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 432
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_1

    .line 425
    .end local v0           #second:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 426
    .local v1, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "Gallery2/SinglePhotoDataAdapter"

    const-string v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    if-eq v2, v6, :cond_0

    .line 431
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 432
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_1

    .line 429
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    if-eq v3, v6, :cond_3

    .line 431
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 432
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    :cond_3
    throw v2
.end method

.method private onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x2

    .line 338
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 339
    .local v0, backup:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 340
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 404
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 343
    .restart local v0       #backup:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 345
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v7, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 346
    .local v3, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v3, :cond_3

    .line 347
    const/4 v6, 0x0

    .line 348
    .local v6, width:I
    const/4 v1, 0x0

    .line 349
    .local v1, height:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getSizeForSubtype(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v4

    .line 350
    .local v4, size:Lcom/android/gallery3d/ui/PhotoView$Size;
    if-eqz v4, :cond_2

    .line 351
    iget v6, v4, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 352
    iget v1, v4, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 357
    :goto_1
    invoke-virtual {p0, v3, v6, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 363
    .end local v1           #height:I
    .end local v4           #size:Lcom/android/gallery3d/ui/PhotoView$Size;
    .end local v6           #width:I
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 366
    iget-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    if-eqz v7, :cond_4

    .line 368
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 369
    .local v2, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 370
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    .line 371
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    .line 372
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 373
    const-string v7, "Gallery2/SinglePhotoDataAdapter"

    const-string v8, "onDecodeThumbComplete:start second image task"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mSecondThumbListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v0           #backup:Landroid/graphics/Bitmap;
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v3           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :catch_0
    move-exception v5

    .line 402
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "Gallery2/SinglePhotoDataAdapter"

    const-string v8, "fail to decode thumb"

    invoke-static {v7, v8, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 354
    .end local v5           #t:Ljava/lang/Throwable;
    .restart local v0       #backup:Landroid/graphics/Bitmap;
    .restart local v1       #height:I
    .restart local v3       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    .restart local v4       #size:Lcom/android/gallery3d/ui/PhotoView$Size;
    .restart local v6       #width:I
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 355
    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    goto :goto_1

    .line 359
    .end local v1           #height:I
    .end local v4           #size:Lcom/android/gallery3d/ui/PhotoView$Size;
    .end local v6           #width:I
    :cond_3
    new-instance v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .end local v3           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-direct {v3, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    .restart local v3       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v7

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v8

    invoke-virtual {p0, v3, v7, v8}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    goto :goto_2

    .line 381
    :cond_4
    iget-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    if-eq v7, v10, :cond_5

    .line 383
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 384
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 389
    :cond_5
    sget-boolean v7, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->isPanorama(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    if-eq v7, v10, :cond_0

    iget-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z

    if-nez v7, :cond_0

    .line 391
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 392
    .restart local v2       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 393
    const/16 v7, 0x400

    iput v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 394
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 395
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v8, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;

    iget-object v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v8, p0, v9, v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    iget-object v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    .line 397
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private releaseGifResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 810
    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 811
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 813
    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    .line 815
    :cond_0
    return-void
.end method

.method private resetStereoMode()V
    .locals 4

    .prologue
    .line 439
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    if-nez v1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 442
    .local v0, stereoMode:Z
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 444
    const/4 v0, 0x1

    .line 447
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v1

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 450
    const/4 v0, 0x0

    .line 453
    :cond_2
    const-string v1, "Gallery2/SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetStereoMode:stereoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 455
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    goto :goto_0
.end method

.method private startGifAnimation(Lcom/android/gallery3d/util/Future;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 727
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v0, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 728
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-eqz v0, :cond_0

    .line 730
    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I

    .line 731
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getTotalFrameCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTotalFrameCount:I

    .line 732
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTotalFrameCount:I

    if-gt v0, v1, :cond_1

    .line 733
    const-string v0, "SinglePhotoDataAdapter"

    const-string v1, "invalid frame count, NO animation!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    .line 740
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 742
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    new-instance v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 740
    goto :goto_1
.end method

.method private startMavPlayback()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 938
    const-string v1, "Gallery2/SinglePhotoDataAdapter"

    const-string v2, "startMavPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    if-lez v1, :cond_2

    .line 942
    iget v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    div-int/lit8 v0, v1, 0x2

    .line 943
    .local v0, middleFrame:I
    const-string v1, "Gallery2/SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the middle frame is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iput v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    .line 945
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    iget v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 947
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-interface {v1, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setStatus(Z)V

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    if-eqz v1, :cond_1

    .line 950
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v1, v5}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setActive(Z)V

    .line 951
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v1, v4}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    .line 952
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 954
    :cond_1
    new-instance v1, Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    .line 955
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    iget v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->initAnimation(II)V

    .line 956
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v1, p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setOnDrawMavFrameListener(Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;)V

    .line 957
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v1, v4}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setActive(Z)V

    .line 958
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v1, v4}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->setRenderRequester(Z)V

    .line 959
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavRenderThread:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 963
    .end local v0           #middleFrame:I
    :goto_0
    return-void

    .line 961
    :cond_2
    const-string v1, "Gallery2/SinglePhotoDataAdapter"

    const-string v2, "mpoTotalCount <= 0"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateGifFrame(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "gifFrame"

    .prologue
    .line 797
    if-nez p1, :cond_0

    .line 807
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1, p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    .line 800
    .local v0, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_1

    .line 801
    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 806
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    goto :goto_1
.end method

.method private updateMavDecoder(Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 12
    .parameter
    .parameter "item"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;",
            "Lcom/android/gallery3d/data/MediaItem;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">> updateMavDecoder, type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    if-nez p3, :cond_6

    .line 855
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget v8, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoTotalCount:I

    iput v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    .line 856
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the mav total count is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v8, :cond_0

    .line 860
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    iget v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 864
    :cond_0
    new-instance v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v6}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 865
    .local v6, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoFrames:Z

    .line 867
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 868
    .local v2, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 869
    .local v4, displaywidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 870
    .local v3, displayHeight:I
    mul-int v8, v4, v3

    mul-int/lit8 v7, v8, 0x64

    .line 872
    .local v7, useMemoryForFullDisplay:I
    int-to-long v8, v7

    const-wide/32 v10, 0x6400000

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    const/4 v5, 0x2

    .line 873
    .local v5, parameter:I
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/mediatek/gallery3d/util/MediatekFeature;->availableMemoryForMavPlayback(Lcom/android/gallery3d/app/AbstractGalleryActivity;)J

    move-result-wide v0

    .line 875
    .local v0, availableMemory:J
    const-wide/32 v8, 0x6400000

    cmp-long v8, v0, v8

    if-lez v8, :cond_4

    .line 876
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    iput v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayHeight:I

    .line 877
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    iput v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayWidth:I

    .line 887
    :cond_1
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    .line 888
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "display width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-virtual {p2, v8}, Lcom/android/gallery3d/data/MediaItem;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 892
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    const-string v9, "start load all mav frames"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    const/4 v9, 0x1

    invoke-virtual {p2, v9, v6}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v9

    new-instance v10, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;

    const/4 v11, 0x1

    invoke-direct {v10, p0, p2, v11}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 915
    .end local v0           #availableMemory:J
    .end local v2           #defaultDisplay:Landroid/view/Display;
    .end local v3           #displayHeight:I
    .end local v4           #displaywidth:I
    .end local v5           #parameter:I
    .end local v6           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v7           #useMemoryForFullDisplay:I
    :cond_2
    :goto_2
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    const-string v9, "<< updateMavDecoder"

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void

    .line 872
    .restart local v2       #defaultDisplay:Landroid/view/Display;
    .restart local v3       #displayHeight:I
    .restart local v4       #displaywidth:I
    .restart local v6       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .restart local v7       #useMemoryForFullDisplay:I
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 878
    .restart local v0       #availableMemory:J
    .restart local v5       #parameter:I
    :cond_4
    const-wide/32 v8, 0x6400000

    cmp-long v8, v0, v8

    if-gtz v8, :cond_5

    const-wide/32 v8, 0x3200000

    cmp-long v8, v0, v8

    if-lez v8, :cond_5

    .line 879
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    const-string v9, "no enough memory, degrade sample rate to 1/2 of parameter"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    mul-int/lit8 v9, v5, 0x2

    div-int/2addr v8, v9

    iput v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayHeight:I

    .line 881
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    mul-int/lit8 v9, v5, 0x2

    div-int/2addr v8, v9

    iput v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayWidth:I

    goto :goto_1

    .line 882
    :cond_5
    const-wide/32 v8, 0x3200000

    cmp-long v8, v0, v8

    if-gtz v8, :cond_1

    .line 883
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    const-string v9, "no enough memory, degrade sample rate to 1/4 of parameter"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    mul-int/lit8 v9, v5, 0x4

    div-int/2addr v8, v9

    iput v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayHeight:I

    .line 885
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    mul-int/lit8 v9, v5, 0x4

    div-int/2addr v8, v9

    iput v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayWidth:I

    goto/16 :goto_1

    .line 896
    .end local v0           #availableMemory:J
    .end local v2           #defaultDisplay:Landroid/view/Display;
    .end local v3           #displayHeight:I
    .end local v4           #displaywidth:I
    .end local v5           #parameter:I
    .end local v6           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v7           #useMemoryForFullDisplay:I
    :cond_6
    const/4 v8, 0x1

    if-ne p3, v8, :cond_2

    .line 897
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v8, v8, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 898
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_7

    .line 899
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mpo frame width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-interface {v10}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-interface {v10}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 903
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingSuccess:Z

    .line 904
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 905
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->startMavPlayback()V

    goto/16 :goto_2

    .line 907
    :cond_7
    const-string v8, "Gallery2/SinglePhotoDataAdapter"

    const-string v9, "Invalid mpo file, load frame failed"

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 909
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingSuccess:Z

    .line 910
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 911
    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c026c

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2
.end method

.method private updateMavcontent(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    if-eqz v0, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1050
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v0, v0

    if-le p1, v0, :cond_2

    .line 1051
    :cond_1
    const-string v0, "Gallery2/SinglePhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[renderCurrentFrame]mCurrentMpoIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1061
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 1062
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelCurrentMavDecodeTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1028
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1030
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 1031
    iput v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    .line 1033
    :cond_0
    return-void
.end method

.method public drawMavFrame(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x5

    .line 1068
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1071
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1072
    return-void
.end method

.method public enterConsumeMode()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public enteredConsumeMode()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 594
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 1
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 583
    if-nez p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 585
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 590
    :goto_0
    return-void

    .line 587
    :cond_0
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 588
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getLoadingState(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 682
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "offset"

    .prologue
    .line 657
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPanoramaScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 3
    .parameter "offset"

    .prologue
    .line 605
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 612
    :goto_0
    return-object v0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->newPlaceholderPanoramaScreenNail(Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "offset"

    .prologue
    .line 599
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalFrameCount()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    return v0
.end method

.method public isCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isMav(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    .line 820
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 821
    .local v0, isMavType:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 822
    return v0

    .line 821
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMavLoadingFinished()Z
    .locals 1

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    return v0
.end method

.method public isMavLoadingSuccess()Z
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingSuccess:Z

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 629
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v0

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 527
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 529
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 530
    .local v2, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 531
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 532
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 533
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 535
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v3, :cond_1

    .line 536
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 537
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 541
    if-eqz v2, :cond_2

    .line 542
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 543
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 545
    :cond_2
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 548
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_3

    .line 549
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 550
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 552
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_6

    .line 553
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v1, v3

    .line 554
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 555
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    .line 556
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 557
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aput-object v4, v3, v0

    .line 554
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_5
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 563
    .end local v0           #idx:I
    .end local v1           #length:I
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_7

    .line 564
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 565
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 566
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    .line 568
    :cond_7
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z

    .line 569
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_8

    .line 570
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 571
    iput-object v4, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 574
    :cond_8
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 459
    iput-boolean v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 461
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavPlayback:Z

    if-eqz v1, :cond_4

    .line 463
    :cond_0
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 470
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 489
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsGifAnimationSupported:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    if-nez v1, :cond_2

    .line 490
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mAnimateGif:Z

    if-eqz v1, :cond_2

    .line 492
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 493
    .local v0, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iput-boolean v5, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 494
    iput-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 495
    const-string v1, "Gallery2/SinglePhotoDataAdapter"

    const-string v2, "resume:start GifDecoder task"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v0}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifDecoderListener;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifDecoderListener;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 502
    .end local v0           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_2
    sget-boolean v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v1, :cond_3

    .line 503
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavPlayback:Z

    if-eqz v1, :cond_3

    .line 504
    const-string v1, "Gallery2/SinglePhotoDataAdapter"

    const-string v2, "create mav decoder task"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 511
    .restart local v0       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iput-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoTotalCount:Z

    .line 513
    const-string v1, "Gallery2/SinglePhotoDataAdapter"

    const-string v2, "get mav total count"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 515
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 517
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v0}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 523
    .end local v0           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->resetStereoMode()V

    .line 524
    return-void

    .line 475
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_1

    .line 476
    sget-boolean v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsPanorama3DSupported:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->isPanorama(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z

    if-nez v1, :cond_1

    .line 477
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 478
    .restart local v0       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iput-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 479
    const/16 v1, 0x400

    iput v1, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 480
    invoke-static {v0, v4}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 481
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;

    .line 483
    iput-boolean v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTaskSubmit:Z

    goto/16 :goto_0
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 668
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 673
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 678
    return-void
.end method

.method public setImageBitmap(II)V
    .locals 5
    .parameter "index"
    .parameter "animationMode"

    .prologue
    .line 977
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v2, :cond_0

    .line 978
    const-string v2, "Gallery2/SinglePhotoDataAdapter"

    const-string v3, "setImageBitmap: the mpoFrames of current entry is null"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :goto_0
    return-void

    .line 981
    :cond_0
    const/4 v1, 0x0

    .line 982
    .local v1, nextIndex:I
    const/4 v0, 0x0

    .line 984
    .local v0, arrayLen:I
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v0, v2

    .line 985
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 986
    iput p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    .line 987
    const-string v2, "Gallery2/SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get current mpo frame, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    if-eqz v2, :cond_4

    .line 991
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 992
    add-int/lit8 v1, p1, 0x1

    .line 993
    if-gez v1, :cond_3

    .line 994
    move v1, p1

    .line 1002
    :cond_2
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mNextMpoIndex:I

    .line 1003
    iget v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    invoke-direct {p0, v2, p2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->fresh(II)V

    .line 1004
    const-string v2, "Gallery2/SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get next mpo frame, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_2

    .line 996
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 1000
    :cond_4
    move v1, p1

    goto :goto_1
.end method

.method public setIsOpenFromLocal(Z)V
    .locals 0
    .parameter "isOpenFromLocal"

    .prologue
    .line 1126
    return-void
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 1009
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 619
    return-void
.end method

.method public setSourceAndItem(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "mediaSet"
    .parameter "itemPath"

    .prologue
    .line 224
    return-void
.end method

.method public showWaitingIfNeed()V
    .locals 0

    .prologue
    .line 1130
    return-void
.end method

.method public updateMavStereoMode(Z)V
    .locals 0
    .parameter "isMavStereoMode"

    .prologue
    .line 1016
    iput-boolean p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    .line 1017
    return-void
.end method
