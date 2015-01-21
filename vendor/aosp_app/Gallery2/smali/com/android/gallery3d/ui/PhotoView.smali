.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CARD_EFFECT:Z = true

.field private static final DEFAULT_TEXT_SIZE:F = 20.0f

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x6

.field public static final INAVALID_PANORAMA_INDEX:I = -0x1

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

.field private static final MAX_DISMISS_VELOCITY:I = 0xfa0

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_PANORAMA_AUTO_PLAY:I = 0x9

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field private static final OFFSET_EFFECT:Z = true

.field public static final PANORAMA_SHOW_MODE_3D:I = 0x2

.field public static final PANORAMA_SHOW_MODE_NORMAL:I = 0x1

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static final SWIPE_ESCAPE_VELOCITY:I = 0x9c4

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "Gallery2/PhotoView"

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4

.field private static final mIsDrmSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field private fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

.field private mFilmMode:Z

.field private mFirst:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mIsMavLoadingFinished:Z

.field private mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

.field private mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

.field private mPanoramaAutoPlaying:Z

.field private mPanoramaCurrentFrame:I

.field private mPanoramaForward:Z

.field private mPanoramaFrameCount:I

.field private mPanoramaFrameDegreeGap:F

.field private mPanoramaFrameTimeGap:I

.field private mPanoramaMode:I

.field private mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

.field private final mPictures:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mRenderFullPictureOnly:Z

.field private mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mScreenCenterX:F

.field private mScreenCenterY:F

.field private mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mStereoMode:Z

.field private mStereoModeAllowed:Z

.field private mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mTypes:[I

.field private mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mValidPositionForStereoMode:Z

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

.field private mWantPictureCenterCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery3d/ui/PhotoView;->$assertionsDisabled:Z

    .line 149
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/PhotoView;->mIsDrmSupported:Z

    .line 151
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/PhotoView;->mIsStereoDisplaySupported:Z

    .line 221
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const v7, 0x7fffffff

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 70
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTypes:[I

    .line 231
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    .line 234
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 246
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v5}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    .line 248
    new-array v1, v6, [Lcom/android/gallery3d/ui/PhotoView$Size;

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 265
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 266
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 267
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 268
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 271
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 272
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    .line 297
    iput v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 304
    iput v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 308
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsMavLoadingFinished:Z

    .line 2491
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mRenderFullPictureOnly:Z

    .line 2505
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaAutoPlaying:Z

    .line 2506
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaForward:Z

    .line 2509
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    .line 2510
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameCount:I

    .line 2512
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaMode:I

    .line 311
    new-instance v1, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 312
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 313
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 314
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    .line 316
    new-instance v1, Lcom/android/gallery3d/ui/EdgeView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    .line 317
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 320
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    .line 322
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 323
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V

    .line 342
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    .line 343
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 344
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PhotoView$2;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/UndoBarView;->setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V

    .line 352
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c02a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41a0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 357
    invoke-static {}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drmResourceInit()V

    .line 359
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$MyHandler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 361
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    .line 362
    new-instance v1, Lcom/android/gallery3d/ui/GestureRecognizer;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    .line 364
    new-instance v1, Lcom/android/gallery3d/ui/PositionController;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$3;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$3;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 397
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f02009b

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 398
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v5, :cond_2

    .line 399
    if-nez v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 398
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 407
    :cond_2
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f0200cd

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchToPanoramaMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->autoPanoramaPlayback()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->resetPanoramaMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaMode:I

    return v0
.end method

.method static synthetic access$2500(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$2900(III)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3200(FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/ui/PhotoView;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getIconSize(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawMavOverlay(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/PhotoView;->drawPanoramasSwitchBar(Lcom/android/gallery3d/ui/GLCanvas;II)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/ui/PhotoView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4402(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/ui/PhotoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$572(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$576(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method private autoPanoramaPlayback()V
    .locals 4

    .prologue
    .line 2570
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaForward:Z

    if-eqz v0, :cond_1

    .line 2571
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    .line 2572
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameCount:I

    if-lt v0, v1, :cond_0

    .line 2573
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    .line 2574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaForward:Z

    .line 2583
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameDegreeGap:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setPanoramaDegree(F)V

    .line 2584
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 2585
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onPanoramaFrameUpdate(I)V

    .line 2586
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameTimeGap:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2587
    return-void

    .line 2577
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    .line 2578
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    if-gez v0, :cond_0

    .line 2579
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    .line 2580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaForward:Z

    goto :goto_0
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .parameter "left"
    .parameter "right"
    .parameter "viewWidth"

    .prologue
    .line 2234
    sub-int v0, p1, p0

    .line 2241
    .local v0, w:I
    if-ge v0, p2, :cond_1

    .line 2242
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 2243
    .local v1, zx:I
    if-le p0, v1, :cond_0

    .line 2244
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2264
    .end local v1           #zx:I
    :goto_0
    return v2

    .line 2246
    .restart local v1       #zx:I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 2256
    .end local v1           #zx:I
    :cond_1
    if-lez p0, :cond_2

    .line 2257
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2260
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2261
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2264
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 2208
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 2209
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2212
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 2214
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    .line 2215
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1963
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1965
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .parameter "addition"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1872
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1873
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 1875
    .local v2, timeout:Z
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 1876
    .local v3, touched:Z
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 1877
    .local v1, fullCamera:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 1878
    .local v0, deleteLast:Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    .line 1879
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0           #deleteLast:Z
    .end local v1           #fullCamera:Z
    .end local v2           #timeout:Z
    .end local v3           #touched:Z
    :cond_4
    move v2, v5

    .line 1874
    goto :goto_1

    .restart local v2       #timeout:Z
    :cond_5
    move v3, v5

    .line 1875
    goto :goto_2

    .restart local v3       #touched:Z
    :cond_6
    move v1, v5

    .line 1876
    goto :goto_3

    .restart local v1       #fullCamera:Z
    :cond_7
    move v0, v5

    .line 1877
    goto :goto_4
.end method

.method private drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 1223
    .local v0, m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1224
    return-void
.end method

.method private drawMavOverlay(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 2428
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsMavLoadingFinished:Z

    if-eqz v0, :cond_2

    .line 2429
    div-int/lit8 v4, p2, 0x6

    .line 2430
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v0, :cond_0

    .line 2431
    new-instance v0, Lcom/android/gallery3d/ui/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 2433
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/FadeOutTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 2434
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FadeTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2435
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 2443
    :cond_1
    :goto_0
    return-void

    .line 2438
    .end local v4           #s:I
    :cond_2
    div-int/lit8 v4, p2, 0x6

    .line 2440
    .restart local v4       #s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 2441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    goto :goto_0
.end method

.method private drawPanoramasSwitchBar(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 2592
    :cond_0
    return-void
.end method

.method private drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 1200
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 1201
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 1215
    div-int/lit8 v4, p2, 0x6

    .line 1217
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 1218
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 2124
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 686
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getIconSize(F)I
    .locals 3
    .parameter "scale"

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1205
    .local v0, size:I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v1, :cond_0

    .line 1206
    div-int/lit8 v0, v0, 0x2

    .line 1209
    .end local v0           #size:I
    :cond_0
    return v0
.end method

.method private getNextPanoramaMode()I
    .locals 2

    .prologue
    .line 2595
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2596
    const/4 v0, 0x1

    .line 2598
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaMode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .parameter "offset"

    .prologue
    const/high16 v2, 0x3f80

    .line 2312
    const/high16 v1, 0x3f00

    div-float/2addr p1, v1

    .line 2313
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 2314
    .local v0, alpha:F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 2313
    .end local v0           #alpha:F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 697
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 698
    .local v2, orientation:I
    if-ne v2, v3, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v3

    .line 700
    .local v1, invertPortrait:Z
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_2

    move v0, v3

    .line 701
    .local v0, invert:Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 702
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    .line 704
    :goto_2
    return v3

    .end local v0           #invert:Z
    .end local v1           #invertPortrait:Z
    :cond_1
    move v1, v4

    .line 698
    goto :goto_0

    .restart local v1       #invertPortrait:Z
    :cond_2
    move v0, v4

    .line 700
    goto :goto_1

    .line 704
    .restart local v0       #invert:Z
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    goto :goto_2
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 1227
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .parameter "scrollProgress"

    .prologue
    const/high16 v0, 0x3f80

    .line 2270
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .parameter "scrollProgress"

    .prologue
    .line 2277
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2279
    .local v0, interpolatedProgress:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 2281
    .local v1, scale:F
    return v1
.end method

.method private hideUndoBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1855
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1856
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1857
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1858
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1859
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 1860
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1861
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .parameter "ratio"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2306
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private mtkPostRender()V
    .locals 1

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getStereoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mValidPositionForStereoMode:Z

    .line 2410
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mValidPositionForStereoMode:Z

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 2411
    return-void
.end method

.method private resetPanoramaMode()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2563
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaMode:I

    .line 2564
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->setFocusButton(IZ)V

    .line 2565
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->stopPanoramaAutoPlayBack()V

    .line 2566
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->resetPanoramaMode()V

    .line 2567
    return-void
.end method

.method private setPictureSize(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 581
    .local v0, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSubType()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/gallery3d/ui/PositionController;->setImageSubType(II)V

    .line 583
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 585
    return-void

    .line 583
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 5
    .parameter "deleteLast"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 1846
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1847
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1848
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1850
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1851
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1852
    :cond_1
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 2107
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 2110
    :goto_0
    return v0

    .line 2108
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2109
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 2110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2114
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v1, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return v0

    .line 2116
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->canSlideToPrePicture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2118
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 2119
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 2120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2090
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 2091
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v3

    .line 2093
    .local v3, viewW:I
    div-int/lit8 v0, v3, 0x5

    .line 2094
    .local v0, moveThreshold:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v3}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v5

    add-int v2, v0, v5

    .line 2097
    .local v2, threshold:I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-le v5, v2, :cond_1

    .line 2098
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    .line 2103
    :cond_0
    :goto_0
    return v4

    .line 2099
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v2, :cond_0

    .line 2100
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 2083
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2084
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2085
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 2057
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 2079
    :cond_0
    :goto_0
    return v3

    .line 2061
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 2062
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 2063
    .local v2, isMinimal:Z
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 2064
    .local v1, edges:I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 2065
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 2071
    :cond_2
    const/high16 v4, -0x3c6a

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 2073
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 2074
    :cond_4
    const/high16 v4, 0x4396

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 2076
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 1972
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1981
    :goto_0
    return-void

    .line 1973
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1975
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1978
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1973
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1986
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1987
    .local v1, curr:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1989
    .local v0, center:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1990
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1991
    .local v5, prev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1992
    .local v2, currDist:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1993
    .local v6, prevDist:I
    if-ge v6, v2, :cond_1

    .line 2005
    .end local v2           #currDist:I
    .end local v5           #prev:Landroid/graphics/Rect;
    .end local v6           #prevDist:I
    :goto_0
    return v7

    .line 1996
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1997
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1998
    .local v3, next:Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1999
    .restart local v2       #currDist:I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 2000
    .local v4, nextDist:I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 2001
    goto :goto_0

    .end local v2           #currDist:I
    .end local v3           #next:Landroid/graphics/Rect;
    .end local v4           #nextDist:I
    :cond_1
    move v7, v9

    .line 2005
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 2

    .prologue
    .line 2146
    const-string v0, "Gallery2/PhotoView"

    const-string v1, "switchToFirstImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2148
    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2011
    const-string v5, "Gallery2/PhotoView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchToHitPicture: x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v5, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->hitTestIgnoreVertical(II)I

    move-result v2

    .line 2029
    .local v2, hitIndex:I
    const-string v5, "Gallery2/PhotoView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchToHitPicture: hit test result index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    const v5, 0x7fffffff

    if-ne v2, v5, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    .line 2034
    .local v1, curIndex:I
    if-gez v2, :cond_2

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v5, :cond_2

    move v0, v3

    .line 2035
    .local v0, canSwitch:Z
    :goto_1
    if-lez v2, :cond_3

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v5, :cond_3

    :goto_2
    or-int/2addr v0, v3

    .line 2036
    if-eqz v0, :cond_0

    .line 2038
    add-int v3, v1, v2

    if-gez v3, :cond_4

    .line 2039
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2040
    const-string v3, "Gallery2/PhotoView"

    const-string v4, "updateCurrentIndex: curIndex + hitIndex < 0"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #canSwitch:Z
    :cond_2
    move v0, v4

    .line 2034
    goto :goto_1

    .restart local v0       #canSwitch:Z
    :cond_3
    move v3, v4

    .line 2035
    goto :goto_2

    .line 2042
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    add-int v4, v1, v2

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2043
    const-string v3, "Gallery2/PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchToHitPicture: move to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 2136
    const-string v0, "Gallery2/PhotoView"

    const-string v1, "switchToNextImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2138
    return-void
.end method

.method private switchToPanoramaMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2603
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaMode:I

    if-ne p1, v0, :cond_0

    .line 2627
    :goto_0
    return-void

    .line 2606
    :cond_0
    const-string v0, "Gallery2/PhotoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<switchToPanoramaMode> mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaMode:I

    .line 2608
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->switchToPanoramaMode(I)V

    .line 2609
    packed-switch p1, :pswitch_data_0

    .line 2619
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 2620
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->getPanoramaMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2621
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->startPanoramaAutoPlayback()V

    .line 2626
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 2611
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->setFocusButton(IZ)V

    goto :goto_1

    .line 2614
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    invoke-virtual {v0, v4, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->setFocusButton(IZ)V

    goto :goto_1

    .line 2623
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->stopPanoramaAutoPlayBack()V

    .line 2624
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onPanoramaFrameUpdate(I)V

    goto :goto_2

    .line 2609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 2141
    const-string v0, "Gallery2/PhotoView"

    const-string v1, "switchToPrevImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2143
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2174
    const-string v3, "Gallery2/PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchWithCaptureAnimationLocked: offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", holding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    const-string v3, "Gallery2/PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchWithCaptureAnimationLocked: prevbound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nextbound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 2204
    :goto_0
    return v1

    .line 2177
    :cond_0
    if-ne p1, v1, :cond_3

    .line 2178
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 2180
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2181
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2182
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 2201
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 2202
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2203
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2183
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    if-ne p1, v6, :cond_7

    .line 2184
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 2185
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2190
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 2191
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 2192
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 2196
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 2197
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 2199
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1757
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    .line 1758
    .local v0, isCamera:Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v1, :cond_1

    .line 1760
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1763
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v6

    .line 642
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    .line 643
    .local v1, h:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 644
    move v5, v6

    .line 645
    .local v5, tmp:I
    move v6, v1

    .line 646
    move v1, v5

    .line 648
    .end local v5           #tmp:I
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 649
    .local v2, l:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 650
    .local v4, t:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 651
    .local v3, r:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 654
    .local v0, b:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 661
    :goto_0
    const-string v7, "Gallery2/PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void

    .line 655
    :sswitch_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 656
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 657
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 658
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 654
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public allowStereoMode(Z)V
    .locals 4
    .parameter "stereoModeAllowed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2377
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-ne v0, p1, :cond_1

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2378
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    .line 2380
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2381
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0, v2}, Lcom/android/gallery3d/ui/GLRoot;->setStereoMode(ZZ)V

    .line 2382
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;->onChangedToStereoMode(Z)V

    .line 2384
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2381
    goto :goto_1

    :cond_3
    move v1, v2

    .line 2382
    goto :goto_2
.end method

.method public buildFallbackEffect(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 17
    .parameter "root"
    .parameter "canvas"

    .prologue
    .line 2330
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2331
    .local v12, location:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2333
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2334
    .local v9, fullRect:Landroid/graphics/Rect;
    new-instance v8, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v8}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    .line 2335
    .local v8, effect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    const/4 v10, -0x3

    .local v10, i:I
    :goto_0
    const/4 v3, 0x3

    if-gt v10, v3, :cond_3

    .line 2336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    .line 2337
    .local v11, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v11, :cond_1

    .line 2335
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2338
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 2340
    .local v2, sc:Lcom/android/gallery3d/ui/ScreenNail;
    instance-of v3, v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isShowingPlaceholder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2344
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2345
    .local v13, rect:Landroid/graphics/Rect;
    invoke-static {v9, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2346
    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2348
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 2349
    .local v6, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v7

    .line 2351
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v14

    .line 2353
    .local v14, rotation:I
    rem-int/lit16 v3, v14, 0xb4

    if-nez v3, :cond_2

    .line 2354
    new-instance v15, Lcom/android/gallery3d/ui/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v6, v7, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 2355
    .local v15, texture:Lcom/android/gallery3d/ui/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 2356
    int-to-float v3, v6

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v7

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 2363
    :goto_2
    int-to-float v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x3f80

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 2364
    neg-int v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    neg-int v4, v7

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 2365
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 2366
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 2367
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v8, v3, v13, v15}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->addEntry(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;)V

    goto/16 :goto_1

    .line 2358
    .end local v15           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :cond_2
    new-instance v15, Lcom/android/gallery3d/ui/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v7, v6, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 2359
    .restart local v15       #texture:Lcom/android/gallery3d/ui/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 2360
    int-to-float v3, v7

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v6

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_2

    .line 2369
    .end local v2           #sc:Lcom/android/gallery3d/ui/ScreenNail;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v11           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v13           #rect:Landroid/graphics/Rect;
    .end local v14           #rotation:I
    .end local v15           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :cond_3
    return-object v8
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 1884
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enterCameraPreview()V
    .locals 2

    .prologue
    .line 2470
    const-string v0, "Gallery2/PhotoView"

    const-string v1, "enterCameraPreview: lights out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/PhotoView$5;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2489
    return-void
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1786
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getPanoramaFrameCount()I
    .locals 1

    .prologue
    .line 2526
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameCount:I

    return v0
.end method

.method public getPanoramaMode()I
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->getPanoramaMode()I

    move-result v0

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStereoMode()Z
    .locals 1

    .prologue
    .line 2405
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    return v0
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstBoxReady()Z
    .locals 1

    .prologue
    .line 2499
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isFirstAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveCameraPreview()V
    .locals 3

    .prologue
    .line 2454
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/PhotoView$4;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(ZI)V

    .line 2467
    return-void
.end method

.method public notifyDataChange([III)V
    .locals 14
    .parameter "fromIndex"
    .parameter "prevBound"
    .parameter "nextBound"

    .prologue
    .line 509
    move/from16 v0, p2

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 510
    move/from16 v0, p3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    .line 513
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 514
    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 515
    .local v10, k:I
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 516
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v8, v1, :cond_0

    .line 517
    aget v1, p1, v8

    if-ne v1, v10, :cond_2

    .line 518
    add-int/lit8 v1, v8, -0x3

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 525
    .end local v8           #i:I
    .end local v10           #k:I
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 526
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 532
    :cond_1
    const/4 v8, -0x3

    .restart local v8       #i:I
    :goto_1
    const/4 v1, 0x3

    if-gt v8, v1, :cond_3

    .line 533
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 534
    .local v12, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v12}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 535
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v2, v8, 0x3

    invoke-interface {v12}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    aput-object v3, v1, v2

    .line 536
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTypes:[I

    add-int/lit8 v2, v8, 0x3

    invoke-interface {v12}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSubType()I

    move-result v3

    aput v3, v1, v2

    .line 532
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 516
    .end local v12           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    .restart local v10       #k:I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 539
    .end local v10           #k:I
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v13

    .line 542
    .local v13, wasDeleting:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v2, :cond_4

    const/4 v3, 0x1

    :goto_2
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v2, :cond_5

    const/4 v4, 0x1

    :goto_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTypes:[I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;[I)V

    .line 545
    const/4 v8, -0x3

    :goto_4
    const/4 v1, 0x3

    if-gt v8, v1, :cond_6

    .line 546
    invoke-direct {p0, v8}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 545
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 542
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 549
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v9

    .line 553
    .local v9, isDeleting:Z
    if-eqz v13, :cond_7

    if-nez v9, :cond_7

    .line 554
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 556
    .local v11, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v11, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 560
    .end local v11           #m:Landroid/os/Message;
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 561
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 573
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 574
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 575
    return-void
.end method

.method protected onGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1251
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1252
    .local v1, vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1253
    .local v0, hscroll:F
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1259
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_0

    .line 1260
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_3

    .line 1261
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->zoomOutView()V

    goto :goto_0

    .line 1263
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->zoomInView()V

    goto :goto_0

    .line 1247
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x51

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    .line 1286
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->zoomInView()V

    .line 1290
    :cond_2
    :goto_0
    return-void

    .line 1287
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_2

    .line 1288
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->zoomOutView()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 590
    sub-int v7, p4, p2

    .line 591
    .local v7, w:I
    sub-int v2, p5, p3

    .line 593
    .local v2, h:I
    int-to-float v8, v2

    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenCenterY:F

    .line 594
    int-to-float v8, v7

    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenCenterX:F

    .line 596
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 597
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 598
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 599
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {v8, v9, v10, v7, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 602
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    if-eqz v8, :cond_0

    .line 603
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 604
    sub-int v8, p4, p2

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 605
    .local v4, leftGap:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    add-int v9, p2, v4

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    const/16 v10, 0x64

    sub-int v11, p4, v4

    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v12

    iget-object v13, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    add-int/lit8 v12, v12, 0x64

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 610
    .end local v4           #leftGap:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v6

    .line 611
    .local v6, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 612
    .local v1, displayRotation:I
    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 613
    .local v0, compensation:I
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v8, v1, :cond_1

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v8, v0, :cond_3

    .line 615
    :cond_1
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 616
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 621
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v8, 0x3

    if-gt v3, v8, :cond_3

    .line 622
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 623
    .local v5, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v5}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 624
    invoke-interface {v5}, Lcom/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 621
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    .end local v3           #i:I
    .end local v5           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 630
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 631
    if-eqz p1, :cond_4

    .line 632
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 634
    :cond_4
    return-void
.end method

.method public onResetZoomedState()Z
    .locals 3

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 2418
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v1

    .line 2419
    .local v1, scale:F
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    .line 2421
    const/4 v2, 0x1

    return v2
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1237
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1796
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v1, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    .line 1801
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1802
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1803
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 1804
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1806
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    if-eqz v1, :cond_1

    .line 1808
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setPanoramaScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1803
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1812
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1815
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1816
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->stopPanoramaAutoPlayBack()V

    .line 1819
    :cond_3
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1894
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v0

    .line 1895
    .local v0, center:Z
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v5

    .line 1896
    .local v5, minimalScale:Z
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    move v1, v10

    .line 1897
    .local v1, full:Z
    :goto_0
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v1, v9, :cond_3

    .line 1898
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 1899
    iput-boolean v11, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    .line 1902
    const/4 v8, 0x0

    .line 1903
    .local v8, type:I
    if-eqz v0, :cond_1

    .line 1904
    or-int/lit8 v8, v8, 0x2

    .line 1906
    :cond_1
    if-eqz v5, :cond_2

    .line 1907
    or-int/lit8 v8, v8, 0x1

    .line 1909
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v9, v1, v8}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(ZI)V

    .line 1912
    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1917
    .end local v8           #type:I
    :cond_3
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mRenderFullPictureOnly:Z

    if-eqz v9, :cond_5

    .line 1918
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 1919
    .local v7, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v9, p1, v7}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1955
    .end local v7           #r:Landroid/graphics/Rect;
    :goto_1
    return-void

    .end local v1           #full:Z
    :cond_4
    move v1, v11

    .line 1896
    goto :goto_0

    .line 1926
    .restart local v1       #full:Z
    :cond_5
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v9, :cond_6

    .line 1927
    const/4 v6, 0x0

    .line 1942
    .local v6, neighbors:I
    :goto_2
    move v2, v6

    .local v2, i:I
    :goto_3
    neg-int v9, v6

    if-lt v2, v9, :cond_a

    .line 1943
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 1944
    .restart local v7       #r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v9, p1, v7}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1942
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1931
    .end local v2           #i:I
    .end local v6           #neighbors:I
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v9

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-nez v9, :cond_7

    move v4, v10

    .line 1932
    .local v4, inPageMode:Z
    :goto_4
    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    move v3, v10

    .line 1934
    .local v3, inCaptureAnimation:Z
    :goto_5
    if-eqz v4, :cond_9

    if-nez v3, :cond_9

    .line 1935
    const/4 v6, 0x1

    .restart local v6       #neighbors:I
    goto :goto_2

    .end local v3           #inCaptureAnimation:Z
    .end local v4           #inPageMode:Z
    .end local v6           #neighbors:I
    :cond_7
    move v4, v11

    .line 1931
    goto :goto_4

    .restart local v4       #inPageMode:Z
    :cond_8
    move v3, v11

    .line 1932
    goto :goto_5

    .line 1937
    .restart local v3       #inCaptureAnimation:Z
    :cond_9
    const/4 v6, 0x3

    .restart local v6       #neighbors:I
    goto :goto_2

    .line 1947
    .end local v3           #inCaptureAnimation:Z
    .end local v4           #inPageMode:Z
    .restart local v2       #i:I
    :cond_a
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v9}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1948
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v9}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1950
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 1951
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 1954
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->mtkPostRender()V

    goto :goto_1
.end method

.method public renderFullPictureOnly(Z)V
    .locals 0
    .parameter "fullPictureOnly"

    .prologue
    .line 2494
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mRenderFullPictureOnly:Z

    .line 2495
    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1828
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1829
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1830
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1823
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    .line 1824
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 668
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 680
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1768
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_0

    .line 1783
    :goto_0
    return-void

    .line 1769
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1770
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1771
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1772
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1774
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateActionBar()V

    .line 1777
    if-eqz p1, :cond_1

    .line 1778
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsMavLoadingFinished:Z

    .line 1780
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFilmModeChanged(Z)V

    .line 1782
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-nez p1, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onMavSeekBarAllowed(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1771
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1772
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1782
    goto :goto_3
.end method

.method public setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2322
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    .line 2323
    return-void
.end method

.method public setMavLoadingFinished(Z)V
    .locals 0
    .parameter "isFinished"

    .prologue
    .line 2446
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsMavLoadingFinished:Z

    .line 2447
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 2448
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 3
    .parameter "model"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PositionController;->setIsCamera(Z)V

    .line 419
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 2156
    return-void
.end method

.method public setPanoramaFrame(I)Z
    .locals 4
    .parameter "frame"

    .prologue
    const/4 v1, 0x1

    .line 2516
    sget-boolean v0, Lcom/android/gallery3d/ui/PhotoView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaAutoPlaying:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2517
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/ui/PhotoView;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameCount:I

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2518
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    if-le p1, v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaForward:Z

    .line 2519
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    .line 2520
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaCurrentFrame:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameDegreeGap:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/TileImageView;->setPanoramaDegree(F)V

    .line 2521
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 2522
    return v1

    .line 2518
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScaleGestureEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setScaleGestureEnabled(Z)V

    .line 1750
    return-void
.end method

.method public setStereoMode(Z)V
    .locals 4
    .parameter "stereoMode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2388
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez v0, :cond_1

    .line 2402
    :cond_0
    :goto_0
    return-void

    .line 2389
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mValidPositionForStereoMode:Z

    if-nez v0, :cond_3

    .line 2392
    :cond_2
    const/4 p1, 0x0

    .line 2394
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eq v0, p1, :cond_0

    .line 2395
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    .line 2397
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2398
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0, v2}, Lcom/android/gallery3d/ui/GLRoot;->setStereoMode(ZZ)V

    .line 2399
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;->onChangedToStereoMode(Z)V

    .line 2401
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2398
    goto :goto_1

    :cond_5
    move v1, v2

    .line 2399
    goto :goto_2
.end method

.method public setStereoModeChangeListener(Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;)V
    .locals 0
    .parameter "stereoListener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

    .line 162
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1746
    return-void
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0
    .parameter "wanted"

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 502
    return-void
.end method

.method public startPanoramaAutoPlayback()V
    .locals 7

    .prologue
    .line 2534
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView;->getIsColorPanorama()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2555
    :cond_0
    :goto_0
    return-void

    .line 2535
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaAutoPlaying:Z

    if-nez v4, :cond_0

    .line 2536
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2537
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaAutoPlaying:Z

    .line 2540
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 2541
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_3

    .line 2542
    :cond_2
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 2543
    .local v1, height:I
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    .line 2548
    .local v3, width:I
    :goto_1
    invoke-static {v3, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getProperRatioBitmapWidth(II)I

    move-result v3

    .line 2549
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailWidth()I

    move-result v4

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailHeight()I

    move-result v5

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIII)V

    .line 2552
    .local v0, config:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    iget v4, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameCount:I

    .line 2553
    iget v4, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTimeGap:I

    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameTimeGap:I

    .line 2554
    iget v4, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameDegreeGap:F

    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaFrameDegreeGap:F

    goto :goto_0

    .line 2545
    .end local v0           #config:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_3
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    .line 2546
    .restart local v1       #height:I
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    .restart local v3       #width:I
    goto :goto_1
.end method

.method public stopPanoramaAutoPlayBack()V
    .locals 2

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPanoramaAutoPlaying:Z

    .line 2560
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 412
    return-void
.end method

.method public switchToImage(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2133
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 2163
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 2164
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 2169
    :goto_0
    return v1

    .line 2165
    :cond_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2169
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected zoomInView()V
    .locals 7

    .prologue
    const/high16 v6, 0x3fc0

    .line 1293
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v0

    .line 1297
    .local v0, scale:F
    const/high16 v1, 0x3f40

    cmpg-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenCenterX:F

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenCenterY:F

    mul-float v4, v0, v6

    const/high16 v5, 0x4080

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    goto :goto_0
.end method

.method protected zoomOutView()V
    .locals 3

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v0

    .line 1307
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    goto :goto_0
.end method
