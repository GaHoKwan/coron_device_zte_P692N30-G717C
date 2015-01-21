.class public Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;
.implements Lcom/android/gallery3d/app/AppBridge$Server;
.implements Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
.implements Lcom/android/gallery3d/app/OrientationManager$Listener;
.implements Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;
.implements Lcom/android/gallery3d/ui/PhotoView$Listener;
.implements Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field public static final ACTION_NEXTGEN_EDIT:Ljava/lang/String; = "action_nextgen_edit"

.field private static final CAMERA_SWITCH_CUTOFF_THRESHOLD_MS:J = 0x12cL

.field private static final DEFERRED_UPDATE_MS:J = 0xfaL

.field private static final DIALOG_TAG_GENERATING_PROGRESS:Ljava/lang/String; = "DIALOG_TAG_GENERATING_PROGRESS"

.field private static final DIALOG_TAG_SELECT_SHARE_TYPE:Ljava/lang/String; = "DIALOG_TAG_SELECT_SHARE_TYPE"

.field private static final HIDE_BARS_TIMEOUT:I = 0xdac

.field public static final KEY_ALBUMPAGE_TRANSITION:Ljava/lang/String; = "albumpage-transition"

.field public static final KEY_APP_BRIDGE:Ljava/lang/String; = "app-bridge"

.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_IN_CAMERA_ROLL:Ljava/lang/String; = "in_camera_roll"

.field public static final KEY_IS_OPEN_FROM_LOCAL:Ljava/lang/String; = "is_open_from_local"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "show_when_locked"

.field public static final KEY_START_IN_FILMSTRIP:Ljava/lang/String; = "start-in-filmstrip"

.field public static final KEY_TREAT_BACK_AS_UP:Ljava/lang/String; = "treat-back-as-up"

.field public static final MSG_ALBUMPAGE_NONE:I = 0x0

.field public static final MSG_ALBUMPAGE_PICKED:I = 0x4

.field public static final MSG_ALBUMPAGE_RESUMED:I = 0x2

.field public static final MSG_ALBUMPAGE_STARTED:I = 0x1

.field private static final MSG_ENTER_CONTAINER_PAGE:I = 0x85

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_LOCK_ORIENTATION:I = 0x2

.field private static final MSG_ON_CAMERA_CENTER:I = 0x9

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field private static final MSG_ON_PICTURE_CENTER:I = 0xa

.field private static final MSG_REFRESH_BOTTOM_CONTROLS:I = 0x8

.field private static final MSG_REFRESH_IMAGE:I = 0xb

.field private static final MSG_RELOAD_SEEKBAR:I = 0x84

.field private static final MSG_SHARE_AS_VIDEO:I = 0x35f7

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UNLOCK_ORIENTATION:I = 0x3

.field private static final MSG_UPDATE_ACTION_BAR:I = 0x5

.field private static final MSG_UPDATE_DEFERRED:I = 0xe

.field private static final MSG_UPDATE_MAVSEEKBAR:I = 0x83

.field private static final MSG_UPDATE_MAV_PROGRESS:I = 0x82

.field private static final MSG_UPDATE_MENU:I = 0x81

.field private static final MSG_UPDATE_PANORAMA_UI:I = 0x10

.field private static final MSG_UPDATE_PHOTO_UI:I = 0xc

.field private static final MSG_UPDATE_PROGRESS:I = 0xd

.field private static final MSG_UPDATE_SHARE_URI:I = 0xf

.field private static final MSG_WANT_BARS:I = 0x7

.field private static final REQUEST_CROP:I = 0x2

.field private static final REQUEST_CROP_PICASA:I = 0x3

.field private static final REQUEST_EDIT:I = 0x4

.field public static final REQUEST_PLAY_VIDEO:I = 0x5

.field private static final REQUEST_PQ:I = 0x7

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field public static final REQUEST_TRIM:I = 0x6

.field private static final STEREO_MODE_2D:I = 0x0

.field private static final STEREO_MODE_3D:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/PhotoPage"

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa

.field private static mDrmMicroThumbDim:I

.field private static final mIsDrmSupported:Z

.field private static final mIsMavSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field private angle:[F

.field private isLockCameraOritation:Z

.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAppBridge:Lcom/android/gallery3d/app/AppBridge;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

.field private mCameraSwitchCutoff:J

.field private mCanSlideToPrePicture:Z

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mConvertEditTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mConvertIntentTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDeferUpdateUntil:J

.field private mDeferredUpdateWaiting:Z

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/android/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDisableBarChanges:Z

.field mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterFilmMode:Z

.field private mFirstTime:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mHaveImageEditor:Z

.field private mIsActive:Z

.field private mIsMavSeekBarAllowed:Z

.field private mIsMenuVisible:Z

.field private mIsOpenFromLocal:Z

.field private mIsPanorama:Z

.field private mIsPanorama360:Z

.field private mLastIndex:I

.field public mLoadingFinished:Z

.field private mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field private mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

.field private mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private final mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mMtkInclusion:I

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOrientation:I

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPanoramaSeekBar:Landroid/widget/SeekBar;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

.field private mRecenterCameraOnResume:Z

.field private final mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

.field private mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mShareType:I

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowSpinner:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mSnailSetPath:Lcom/android/gallery3d/data/Path;

.field private mStartInFilmstrip:Z

.field private mStereoMode:I

.field private mTreatBackAsUp:Z

.field private final mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private mValue:F

.field private final reShareLock:Ljava/lang/Object;

.field private timestamp:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    .line 219
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    .line 222
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMAVSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 216
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    .line 227
    iput v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    .line 247
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 249
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 250
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 256
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 269
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 270
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 271
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCanSlideToPrePicture:Z

    .line 277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    .line 278
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 283
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 291
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 294
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSeekBarAllowed:Z

    .line 295
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 300
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mEnterFilmMode:Z

    .line 304
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 308
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 319
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 330
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 401
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 1059
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 1697
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$13;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$13;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 2961
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLoadingFinished:Z

    .line 2962
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    .line 3065
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->reShareLock:Ljava/lang/Object;

    .line 3208
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    .line 3209
    iput v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    .line 3210
    iput v5, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    .line 3211
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    .line 3212
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    .line 3213
    const v0, 0xffff

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    .line 3311
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->isLockCameraOritation:Z

    return-void

    .line 3211
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/gallery3d/app/PhotoPage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showEmptyAlbumToast(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V

    return-void
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/mediatek/gallery3d/mpo/MavSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMavSeekBar()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoPage;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->reloadSeekBar(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->enterContainerPage()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->onShareAsVideoRequested(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return v0
.end method

.method static synthetic access$4200()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/PhotoPage;)[Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->startCropIntent(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->convertAndEdit(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoPage;->startEditIntent(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoPage;->convertAndShare(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->safeStartIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/gallery3d/app/PhotoPage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->reShareLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareType:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareType:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->tryToShareAsVideo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method private addShareSelectedListener()V
    .locals 2

    .prologue
    .line 3196
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$26;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$26;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 3203
    .local v0, listener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->setShareActionProviderListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 3204
    return-void
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1422
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return v0

    .line 1426
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1430
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpSource;->isMtpPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1433
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1481
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return v0

    .line 1485
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 1487
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowMavSeekBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1512
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return v0

    .line 1514
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSeekBarAllowed:Z

    if-eqz v1, :cond_0

    .line 1516
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 5
    .parameter "intent"
    .parameter "item"

    .prologue
    .line 2851
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2852
    :cond_0
    const-string v2, "Gallery2/PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStereoIntent:invalid intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :goto_0
    return-void

    .line 2856
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2857
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "Gallery2/PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStereoIntent:packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    const-string v2, "com.android.mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2860
    .local v0, onlyShareAs2D:Z
    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/app/PhotoPage;->showStereoShareDialog(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V

    goto :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;)Z
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 2810
    if-nez p1, :cond_1

    .line 2846
    :cond_0
    :goto_0
    return v5

    .line 2811
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SEND"

    if-eq v6, v7, :cond_2

    .line 2812
    const-string v6, "Gallery2/PhotoPage"

    const-string v7, "checkIntent: unintented action type"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2815
    :cond_2
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 2816
    .local v4, uri:Landroid/net/Uri;
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    if-nez v4, :cond_3

    .line 2818
    const-string v6, "Gallery2/PhotoPage"

    const-string v7, "checkIntent:got null uri"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2821
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 2822
    .local v2, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 2823
    .local v1, itemPath:Lcom/android/gallery3d/data/Path;
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:itemPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    if-eqz v1, :cond_0

    .line 2829
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 2830
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:item="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    if-eqz v0, :cond_0

    .line 2835
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    .line 2836
    .local v3, support:I
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:support:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    const/high16 v6, 0x1

    and-int/2addr v6, v3

    if-eqz v6, :cond_0

    const/high16 v6, 0x8

    and-int/2addr v6, v3

    if-nez v6, :cond_0

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 2840
    const-string v5, "Gallery2/PhotoPage"

    const-string v6, "checkIntent:found a stereo image"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage;->checkIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V

    .line 2842
    invoke-static {p1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->makeShareProviderIgnorAction(Landroid/content/Intent;)V

    .line 2843
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private convertAndEdit(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 2741
    const-string v1, "Gallery2/PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAndEdit(item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertEditTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 2743
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertEditTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 2746
    :cond_0
    const v0, 0x7f0c00c5

    .line 2747
    .local v0, messageId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2750
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$21;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$21;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertEditTask:Lcom/android/gallery3d/util/Future;

    .line 2774
    return-void
.end method

.method private convertAndShare(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "intent"
    .parameter "item"

    .prologue
    .line 2919
    const-string v1, "Gallery2/PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAndShare(intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 2921
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 2924
    :cond_0
    const v0, 0x7f0c00c5

    .line 2925
    .local v0, messageId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2928
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$23;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/gallery3d/app/PhotoPage$23;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    .line 2953
    return-void
.end method

.method private static createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 4
    .parameter "mediaObject"

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    .line 1199
    .local v0, type:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "contentUri"

    .prologue
    .line 1206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private enterContainerPage()V
    .locals 5

    .prologue
    .line 3043
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3055
    :goto_0
    return-void

    .line 3045
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRelatedMediaSet()Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3046
    .local v1, mediaPaths:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3047
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isMotion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3049
    const-string v2, "motion_select_enable"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3053
    :goto_1
    const-string v2, "Gallery2/PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterContainerPage, isMotion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->isMotion()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3051
    :cond_1
    const-string v2, "motion_select_enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private hideBars()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1460
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    if-eqz v0, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 1465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1466
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1467
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1468
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1911
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1912
    return-void
.end method

.method private isStereoStateReady()Z
    .locals 2

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2637
    :cond_0
    const/4 v0, 0x0

    .line 2639
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1236
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    .line 1238
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1241
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCanSlideToPrePicture:Z

    .line 1243
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1244
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mEnterFilmMode:Z

    .line 1246
    :cond_0
    return-void
.end method

.method private launchPhotoEditor()V
    .locals 5

    .prologue
    .line 1249
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1250
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_nextgen_edit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1259
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1261
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    :cond_2
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1265
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1267
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    goto :goto_0
.end method

.method private launchTinyPlanet()V
    .locals 4

    .prologue
    .line 1219
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1220
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.TINY_PLANET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1222
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1224
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1226
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1227
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    .line 1228
    return-void
.end method

.method private onShareAsVideoRequested(Landroid/content/Intent;)V
    .locals 3
    .parameter "finalIntent"

    .prologue
    .line 3074
    const-string v1, "DIALOG_TAG_GENERATING_PROGRESS"

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 3075
    new-instance v0, Lcom/mediatek/gallery3d/util/RotateProgressFragment;

    const v1, 0x7f0c0265

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/util/RotateProgressFragment;-><init>(I)V

    .line 3076
    .local v0, genProgressDialog:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 3077
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG_GENERATING_PROGRESS"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3080
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$24;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage$24;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Landroid/app/DialogFragment;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3133
    return-void
.end method

.method private onUpPressed()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1572
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1574
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1632
    :cond_1
    :goto_0
    return-void

    .line 1578
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v6

    if-le v6, v7, :cond_3

    .line 1579
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1580
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1584
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1586
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v6, :cond_5

    .line 1588
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1589
    .local v1, data:Landroid/os/Bundle;
    const-string v6, "media-path"

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v6, "parent-media-path"

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1595
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-virtual {v6, p0, v7, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1597
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v6, p0, v7, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1604
    .end local v1           #data:Landroid/os/Bundle;
    :cond_5
    const/4 v0, 0x0

    .line 1605
    .local v0, bucketId:I
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1607
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1608
    .local v4, segments:[Ljava/lang/String;
    if-eqz v4, :cond_6

    array-length v6, v4

    if-lez v6, :cond_6

    .line 1610
    :try_start_0
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1617
    .end local v4           #segments:[Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpPressed: orig set path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parsed bucketId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const/4 v5, 0x0

    .line 1620
    .local v5, uri:Landroid/net/Uri;
    if-eqz v0, :cond_7

    .line 1621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/file?bucketId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1627
    :goto_2
    const/4 v3, 0x0

    .line 1629
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1630
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1611
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v4       #segments:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1612
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpPressed: cannot parse a valid id from original set path("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1624
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v4           #segments:[Ljava/lang/String;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/file?bucketId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2
.end method

.method private overrideTransitionToEditor()V
    .locals 3

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x10a0002

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1215
    return-void
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1473
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1474
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1477
    :cond_0
    return-void
.end method

.method private reloadSeekBar(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "bar"

    .prologue
    .line 2991
    if-nez p1, :cond_0

    .line 3001
    :goto_0
    return-void

    .line 2992
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/app/Config$PhotoPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$PhotoPage;

    move-result-object v0

    .line 2993
    .local v0, config:Lcom/android/gallery3d/app/Config$PhotoPage;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2994
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2996
    iget v2, v0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInPortrait:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3000
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2998
    :cond_1
    iget v2, v0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInLandscape:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private removeOldFragmentByTag(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 3136
    const-string v2, "Gallery2/PhotoPage"

    const-string v3, "<removeOldFragmentByTag> start"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3138
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 3139
    .local v1, oldFragment:Landroid/app/DialogFragment;
    const-string v2, "Gallery2/PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<removeOldFragmentByTag> oldFragment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    if-eqz v1, :cond_0

    .line 3141
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 3142
    const-string v2, "Gallery2/PhotoPage"

    const-string v3, "<removeOldFragmentByTag> remove oldFragment success"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    :cond_0
    const-string v2, "Gallery2/PhotoPage"

    const-string v3, "<removeOldFragmentByTag> end"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    return-void
.end method

.method private requestDeferredUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 1271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 1272
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    if-nez v0, :cond_0

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 1274
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1276
    :cond_0
    return-void
.end method

.method private resumePendingRequestForVideoShare()V
    .locals 2

    .prologue
    .line 3068
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->reShareLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3069
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->reShareLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3070
    monitor-exit v1

    .line 3071
    return-void

    .line 3070
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private safeStartIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2910
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    :goto_0
    return-void

    .line 2911
    :catch_0
    move-exception v0

    .line 2912
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0c0339

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 2214
    if-nez p1, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2215
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 2217
    .local v2, path:Lcom/android/gallery3d/data/Path;
    if-eqz v2, :cond_0

    .line 2218
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2219
    .local v0, albumPath:Lcom/android/gallery3d/data/Path;
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2222
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2223
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "media-set-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string v3, "media-item-path"

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v4, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2228
    .end local v1           #data:Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setMTKCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 2233
    if-nez p1, :cond_1

    .line 2249
    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2236
    .local v0, photoEditPath:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 2237
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2238
    .local v1, string:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2239
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v2, :cond_3

    .line 2240
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-static {v1, v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    .line 2246
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/DataManager;->broadcastUpdatePicture()V

    goto :goto_0

    .line 2243
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_1
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1195
    return-void
.end method

.method private setPhotoViewStereoMode(II)V
    .locals 4
    .parameter "stereoMode"
    .parameter "supportedOperations"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2662
    if-ne v2, p1, :cond_0

    const/high16 v0, 0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 2664
    const-string v0, "Gallery2/PhotoPage"

    const-string v1, "setPhotoViewStereoMode:now in 3D mode, show stereo"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 2666
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 2672
    :goto_0
    return-void

    .line 2668
    :cond_0
    const-string v0, "Gallery2/PhotoPage"

    const-string v1, "setPhotoViewStereoMode:now in 2D mode, stop stereo"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 2670
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    goto :goto_0
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 1635
    const/4 v0, 0x0

    .line 1636
    .local v0, result:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1637
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1638
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/ActivityState;->setStateResult(ILandroid/content/Intent;)V

    .line 1639
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1162
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1165
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 1166
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 1176
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$12;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$12;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showBars()V
    .locals 2

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    if-eqz v0, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 1447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1449
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isSmartBookConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1450
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 1453
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1454
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1455
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private showConvertCropDialog(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 2675
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2678
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$19;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$19;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 2690
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0c02d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2691
    .local v3, crop:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0c0232

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2694
    .local v2, convertCrop:Ljava/lang/String;
    const v5, 0x104000a

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2695
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2696
    const v5, 0x7f0c00c4

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2698
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 2699
    .local v4, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 2700
    return-void
.end method

.method private showConvertEditDialog(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 2715
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2718
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$20;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$20;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 2728
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0c02ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2729
    .local v4, edit:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0c0232

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2732
    .local v2, convertEdit:Ljava/lang/String;
    const v5, 0x104000a

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2733
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2734
    const v5, 0x7f0c00c4

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2736
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 2737
    .local v3, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2738
    return-void
.end method

.method private showDetails()V
    .locals 5

    .prologue
    .line 1915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1916
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1917
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1918
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$14;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$14;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1926
    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 4
    .parameter "toastLength"

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 1064
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1072
    :goto_0
    return-void

    .line 1069
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0c02e6

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1070
    .restart local v0       #toast:Landroid/widget/Toast;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 1071
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showStereoShareDialog(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 10
    .parameter "intent"
    .parameter "item"
    .parameter "shareAs2D"

    .prologue
    .line 2865
    const/4 v6, 0x0

    .line 2866
    .local v6, positiveCap:I
    const/4 v4, 0x0

    .line 2867
    .local v4, negativeCap:I
    const/4 v8, 0x0

    .line 2868
    .local v8, title:I
    const/4 v3, 0x0

    .line 2869
    .local v3, message:I
    if-eqz p3, :cond_0

    .line 2870
    const v6, 0x104000a

    .line 2871
    const/high16 v4, 0x104

    .line 2872
    const v8, 0x7f0c00c4

    .line 2873
    const v3, 0x7f0c0235

    .line 2880
    :goto_0
    move-object v7, p1

    .line 2881
    .local v7, shareIntent:Landroid/content/Intent;
    move v5, p3

    .line 2882
    .local v5, onlyShareAs2D:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2885
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$22;

    invoke-direct {v1, p0, v7, p2, v5}, Lcom/android/gallery3d/app/PhotoPage$22;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V

    .line 2900
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2901
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2902
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2904
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2905
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2906
    return-void

    .line 2875
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v5           #onlyShareAs2D:Z
    .end local v7           #shareIntent:Landroid/content/Intent;
    :cond_0
    const v6, 0x7f0c0238

    .line 2876
    const v4, 0x7f0c0239

    .line 2877
    const v8, 0x7f0c0236

    .line 2878
    const v3, 0x7f0c0237

    goto :goto_0
.end method

.method private startCropIntent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 2704
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2705
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2706
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 2707
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->addMtkInclusion(Landroid/net/Uri;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    .line 2708
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2709
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2712
    return-void

    .line 2709
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private startEditIntent(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"
    .parameter "originUri"

    .prologue
    .line 2777
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2785
    :cond_0
    :goto_0
    return-void

    .line 2778
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "UriForSaving"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2783
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private switchStereoMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2645
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->isStereoStateReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2659
    :goto_0
    return-void

    .line 2650
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-nez v2, :cond_1

    .line 2651
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->onResetZoomedState()Z

    .line 2653
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    .line 2654
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v2, :cond_2

    .line 2655
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-ne v1, v3, :cond_3

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->updateMavStereoMode(Z)V

    .line 2657
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    .line 2658
    .local v0, supportedOperations:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setPhotoViewStereoMode(II)V

    goto :goto_0

    .line 2655
    .end local v0           #supportedOperations:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private switchToGrid()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1720
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1721
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1724
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_2

    .line 1725
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1726
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1728
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1729
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-path"

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v2, "parent-media-path"

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    .line 1737
    .local v1, inAlbum:Z
    const-string v5, "cluster-menu"

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1740
    const-string v2, "app-bridge"

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1743
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "return-index-hint"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1746
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_6

    .line 1747
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1737
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1740
    goto :goto_2

    .line 1743
    :cond_5
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    goto :goto_3

    .line 1749
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private toggleBars()V
    .locals 1

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_1

    .line 1496
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2395
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 2397
    .local v2, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v3, "albumpage-transition"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2400
    .local v0, albumPageTransition:I
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v3, :cond_3

    .line 2404
    iput v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 2405
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 2420
    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 2421
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2425
    :cond_2
    :goto_2
    return-void

    .line 2407
    :cond_3
    const-string v3, "index-hint"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2408
    .local v1, resumeIndex:I
    if-ltz v1, :cond_0

    .line 2409
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_4

    .line 2411
    add-int/lit8 v1, v1, 0x1

    .line 2413
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2414
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 2415
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v5}, Lcom/android/gallery3d/app/PhotoPage$Model;->moveTo(I)V

    goto :goto_0

    .end local v1           #resumeIndex:I
    :cond_5
    move v3, v4

    .line 2421
    goto :goto_1

    .line 2422
    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 2423
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_2
.end method

.method private tryToShareAsVideo(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 3148
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {p1, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getVideoSharableImageFromIntent(Landroid/content/Intent;Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/android/gallery3d/data/LocalMediaItem;

    move-result-object v8

    .line 3150
    .local v8, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v8, :cond_0

    .line 3151
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3193
    :goto_0
    return-void

    .line 3155
    :cond_0
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3156
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3157
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3160
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35f7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3164
    :cond_2
    const-string v2, "DIALOG_TAG_SELECT_SHARE_TYPE"

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 3166
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 3167
    .local v0, shareFormats:[I
    const/4 v6, 0x1

    .line 3168
    .local v6, SHARE_TYPE_VIDEO:I
    const v2, 0x7f0c0262

    const/4 v3, 0x1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->newInstance([I[Ljava/lang/CharSequence;IZI[Z)Lcom/mediatek/gallery3d/util/SelectDialogFragment;

    move-result-object v9

    .line 3171
    .local v9, shareTypeSelectDialog:Lcom/mediatek/gallery3d/util/SelectDialogFragment;
    move-object v7, p1

    .line 3172
    .local v7, finalIntent:Landroid/content/Intent;
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$25;

    invoke-direct {v1, p0, v0, v9, v7}, Lcom/android/gallery3d/app/PhotoPage$25;-><init>(Lcom/android/gallery3d/app/PhotoPage;[ILcom/mediatek/gallery3d/util/SelectDialogFragment;Landroid/content/Intent;)V

    invoke-virtual {v9, v1}, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 3190
    iput v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareType:I

    .line 3191
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG_SELECT_SHARE_TYPE"

    invoke-virtual {v9, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 3166
    :array_0
    .array-data 0x4
        0x63t 0x2t 0xct 0x7ft
        0x64t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method private updateActionBarTitle()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3006
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-nez v3, :cond_1

    .line 3028
    :cond_0
    :goto_0
    return-void

    .line 3011
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 3019
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3020
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 3022
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 3014
    :catch_0
    move-exception v0

    .line 3015
    .local v0, e:Ljava/lang/AssertionError;
    const-string v1, "Gallery2/PhotoPage"

    const-string v2, "no state in State Manager when updates actionbar title"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/AssertionError;
    :cond_2
    move v1, v2

    .line 3020
    goto :goto_1

    .line 3022
    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 3024
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v4, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v3, v2, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 3026
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, ""

    goto :goto_3
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 1503
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1506
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateActionBarTitle()V

    .line 1507
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "photo"

    .prologue
    const/4 v3, 0x0

    .line 1314
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v1, p1, :cond_0

    .line 1346
    :goto_0
    return-void

    .line 1317
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSupported:Z

    if-eqz v1, :cond_1

    .line 1318
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1319
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V

    .line 1326
    :cond_1
    :goto_1
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1327
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->stopPanoramaAutoPlayBack()V

    .line 1328
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/PhotoView;->setPanoramaFrame(I)Z

    .line 1332
    :cond_2
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1333
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v1, :cond_3

    .line 1334
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    .line 1335
    .local v0, supportedOperations:I
    const/high16 v1, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    .line 1336
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 1341
    .end local v0           #supportedOperations:I
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1342
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->requestDeferredUpdate()V

    goto :goto_0

    .line 1321
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->removeGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V

    goto :goto_1

    .line 1338
    .restart local v0       #supportedOperations:I
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    goto :goto_2

    .line 1344
    .end local v0           #supportedOperations:I
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    goto :goto_0
.end method

.method private updateMavProcess(II)V
    .locals 2
    .parameter "process"
    .parameter "animationMode"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setImageBitmap(II)V

    .line 1525
    :cond_0
    return-void
.end method

.method private updateMavSeekBar()V
    .locals 2

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowMavSeekBar()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1535
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setVisibility(I)V

    goto :goto_0

    .line 1537
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMenuOperations()V
    .locals 7

    .prologue
    const v6, -0x100001

    const/4 v4, 0x1

    .line 1362
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1365
    .local v1, menu:Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    const v3, 0x7f0b0162

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1368
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1369
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1371
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    .line 1373
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    .line 1374
    .local v2, supportedOperations:I
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_a

    .line 1375
    and-int/lit8 v2, v2, 0x1

    .line 1381
    :cond_3
    :goto_2
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v5

    if-ne v3, v5, :cond_c

    .line 1387
    sget-boolean v3, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    if-ne v4, v3, :cond_4

    .line 1388
    const/high16 v3, 0x2000

    or-int/2addr v2, v3

    .line 1390
    :cond_4
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v3, :cond_5

    const/high16 v3, 0x1

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 1392
    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-ne v3, v4, :cond_b

    const/high16 v3, 0x2

    :goto_3
    or-int/2addr v2, v3

    .line 1400
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/quicktime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1404
    :cond_6
    and-int/2addr v2, v6

    .line 1407
    :cond_7
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 1408
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    check-cast v3, Lcom/android/gallery3d/data/LocalVideo;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/LocalVideo;->getIsLivePhoto()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1409
    and-int/2addr v2, v6

    .line 1410
    const-string v3, "Gallery2/PhotoPage"

    const-string v4, "updateMenuOperations: disable livephoto trim menu"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_8
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 1414
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 1416
    if-nez v2, :cond_0

    .line 1417
    invoke-interface {v1}, Landroid/view/Menu;->close()V

    goto/16 :goto_0

    .line 1369
    .end local v2           #supportedOperations:I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1376
    .restart local v2       #supportedOperations:I
    :cond_a
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-nez v3, :cond_3

    .line 1377
    and-int/lit16 v2, v2, -0x201

    goto/16 :goto_2

    .line 1392
    :cond_b
    const/high16 v3, 0x4

    goto :goto_3

    .line 1397
    :cond_c
    const v3, -0x10001

    and-int/2addr v2, v3

    goto :goto_4
.end method

.method private updatePanoramaSeekBar()V
    .locals 2

    .prologue
    .line 2114
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2121
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 2123
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePanoramaUI(Z)V
    .locals 4
    .parameter "isPanorama360"

    .prologue
    const v3, 0x7f0b0186

    .line 2550
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2553
    .local v1, menu:Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 2572
    :cond_0
    :goto_0
    return-void

    .line 2557
    :cond_1
    invoke-static {v1, p1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuForPanorama(Landroid/view/Menu;ZZ)V

    .line 2559
    if-eqz p1, :cond_2

    .line 2560
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2561
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2562
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2563
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 2565
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 2566
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2567
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2568
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2569
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    .line 1349
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_0

    .line 1350
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1351
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 1352
    .local v1, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    .line 1353
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 1354
    .local v0, progress:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->setProgress(I)V

    .line 1359
    .end local v0           #progress:Ljava/lang/Integer;
    .end local v1           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_0
    return-void
.end method

.method private updateScaleGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1542
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setScaleGestureEnabled(Z)V

    goto :goto_0

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setScaleGestureEnabled(Z)V

    goto :goto_0
.end method

.method private updateUIForCurrentPhoto()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 1289
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1290
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1291
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 1292
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails()V

    .line 1294
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1296
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 1298
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    .line 1301
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMavSeekBar()V

    .line 1304
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    .line 1305
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1310
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateScaleGesture()V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 1491
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 1492
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/data/SecureAlbum;->addMediaItem(ZI)V

    .line 1682
    return-void
.end method

.method public canDisplayBottomControl(I)Z
    .locals 4
    .parameter "control"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1081
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_1

    move v0, v1

    .line 1110
    :cond_0
    :goto_0
    return v0

    .line 1084
    :cond_1
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1110
    goto :goto_0

    .line 1086
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1092
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1099
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    goto :goto_0

    .line 1101
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 1105
    :pswitch_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto/16 :goto_0

    .line 1107
    :pswitch_5
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isMotion()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    .line 1084
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00e5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public canDisplayBottomControls()Z
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSlideToPrePicture()Z
    .locals 1

    .prologue
    .line 3031
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCanSlideToPrePicture:Z

    return v0
.end method

.method public disableBarChanges(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 2965
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    .line 2966
    return-void
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 398
    const v0, 0x7f09000e

    return v0
.end method

.method public getSecureAlbumCount()I
    .locals 2

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SecureAlbum;->getExistingItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 2015
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->isLockCameraOritation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2018
    :cond_0
    return-void
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1671
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 1672
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 2028
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 2029
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2030
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2035
    return-void
.end method

.method public onAlbumModeSelected(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2531
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2532
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->switchToGrid()V

    .line 2534
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 1557
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1561
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1562
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_0

    .line 1563
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_4

    .line 1564
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 1566
    :cond_4
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onBottomControlClicked(I)V
    .locals 2
    .parameter "control"

    .prologue
    .line 1132
    packed-switch p1, :pswitch_data_0

    .line 1156
    :goto_0
    return-void

    .line 1134
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    goto :goto_0

    .line 1138
    :pswitch_1
    const-string v0, "Gallery2/PhotoPage"

    const-string v1, "jason onBottomControlClicked delete"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onItemDeleted()V

    goto :goto_0

    .line 1143
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPanoramaViewHelper()Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->showPanorama(Landroid/net/Uri;)V

    goto :goto_0

    .line 1147
    :pswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchTinyPlanet()V

    goto :goto_0

    .line 1152
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1132
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00e5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCalculateAngle(Landroid/hardware/SensorEvent;)F
    .locals 14
    .parameter "event"

    .prologue
    .line 3236
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 3237
    :cond_0
    const/high16 v1, -0x4080

    .line 3309
    :goto_0
    return v1

    .line 3241
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->isMavLoadingFinished()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->isMavLoadingSuccess()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3243
    :cond_2
    const/high16 v1, -0x4080

    goto :goto_0

    .line 3250
    :cond_3
    const v5, 0x3d4ccccd

    .line 3255
    .local v5, xSmallRotateTH:F
    const/4 v4, 0x0

    .line 3256
    .local v4, valueToUse:F
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 3257
    .local v2, newRotation:I
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    if-eq v6, v2, :cond_4

    .line 3259
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    .line 3260
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    .line 3261
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3262
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3263
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3264
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    .line 3266
    :cond_4
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 3282
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v4, v6, v7

    .line 3284
    :goto_1
    const/4 v6, 0x0

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    .line 3285
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 3286
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v6, v6

    iget v7, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    sub-float/2addr v6, v7

    const v7, 0x3089705f

    mul-float v0, v6, v7

    .line 3288
    .local v0, dT:F
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v8, v6, v7

    float-to-double v8, v8

    iget v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    mul-float/2addr v10, v0

    const/high16 v11, 0x4334

    mul-float/2addr v10, v11

    float-to-double v10, v10

    const-wide v12, 0x400921fb54442d18L

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 3289
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    if-eqz v6, :cond_6

    .line 3290
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const/high16 v9, 0x4148

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 3291
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const/high16 v9, 0x4148

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 3292
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    .line 3301
    .end local v0           #dT:F
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->getTotalFrameCount()I

    move-result v3

    .line 3303
    .local v3, totalCount:I
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    .line 3304
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float v1, v6, v7

    .line 3308
    .local v1, mAngle:F
    :goto_3
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v6, v6

    iput v6, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    goto/16 :goto_0

    .line 3268
    .end local v1           #mAngle:F
    .end local v3           #totalCount:I
    :pswitch_0
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 3269
    goto/16 :goto_1

    .line 3272
    :pswitch_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v4, v6, v7

    .line 3273
    goto/16 :goto_1

    .line 3276
    :pswitch_2
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-float v4, v6

    .line 3277
    goto/16 :goto_1

    .line 3279
    :pswitch_3
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    neg-float v4, v6

    .line 3280
    goto/16 :goto_1

    .line 3293
    .restart local v0       #dT:F
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_7

    .line 3294
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 3295
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const/high16 v9, 0x41c8

    add-float/2addr v8, v9

    aput v8, v6, v7

    goto :goto_2

    .line 3296
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 3297
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 3298
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    const/high16 v9, 0x41c8

    sub-float/2addr v8, v9

    aput v8, v6, v7

    goto/16 :goto_2

    .line 3306
    .end local v0           #dT:F
    .restart local v3       #totalCount:I
    :cond_8
    const/high16 v1, -0x4080

    .restart local v1       #mAngle:F
    goto :goto_3

    .line 3266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onChangedToStereoMode(Z)V
    .locals 3
    .parameter "stereoMode"

    .prologue
    .line 2615
    const-string v0, "Gallery2/PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedToStereoMode(stereoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 2627
    :cond_1
    :goto_0
    return-void

    .line 2622
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-nez v0, :cond_3

    .line 2623
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->onResetZoomedState()Z

    .line 2625
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    .line 2626
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperationsInViewThread()V

    goto :goto_0
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2085
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2090
    :goto_0
    return-void

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2087
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 2088
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f0b018b

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 2089
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2958
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 23
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 414
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageOnCreate()V

    .line 415
    invoke-super/range {p0 .. p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 417
    new-instance v3, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 418
    new-instance v3, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 420
    new-instance v3, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 422
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v3, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setStereoModeChangeListener(Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;)V

    .line 426
    :cond_0
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v3, :cond_2

    .line 427
    :cond_1
    const-string v3, "GalleryDrmInclusion"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmMicroThumbDim(Landroid/app/Activity;)I

    move-result v3

    sput v3, Lcom/android/gallery3d/app/PhotoPage;->mDrmMicroThumbDim:I

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/OrientationManager;->addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 438
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$5;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 609
    const-string v3, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 611
    const-string v3, "is_open_from_local"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mIsOpenFromLocal:Z

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 613
    const-string v3, "Gallery2/PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: original set path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->setupNfcBeamPush()V

    .line 615
    const-string v3, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 616
    .local v15, itemPathString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 617
    .local v6, itemPath:Lcom/android/gallery3d/data/Path;
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v3, :cond_16

    .line 618
    :cond_3
    if-eqz v15, :cond_15

    const-string v3, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 626
    :goto_0
    const-string v3, "treat-back-as-up"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 627
    const-string v3, "start-in-filmstrip"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    .line 628
    const-string v3, "in_camera_roll"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 629
    .local v14, inCameraRoll:Z
    const-string v3, "index-hint"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 635
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSupported:Z

    if-eqz v3, :cond_4

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0b0071

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/app/PhotoPage;->reloadSeekBar(Landroid/widget/SeekBar;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    if-eqz v3, :cond_4

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 666
    :cond_4
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0b0072

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/app/PhotoPage;->reloadSeekBar(Landroid/widget/SeekBar;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_5

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 696
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 697
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 698
    const-string v3, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_18

    .line 700
    const-string v3, "Gallery2/PhotoPage"

    const-string v4, "onCreate: app bridge not null, is from camera!"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 702
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isSmartBookConnected()Z

    move-result v3

    if-nez v3, :cond_6

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 710
    :cond_6
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v13

    .line 711
    .local v13, id:I
    invoke-static {v13}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v21

    .line 713
    .local v21, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mSnailSetPath:Lcom/android/gallery3d/data/Path;

    .line 715
    invoke-static {v13}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 716
    .local v20, screenNailItemPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/SnailAlbum;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 722
    const-string v3, "show_when_locked"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 724
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 728
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v4, "/local/all/0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/data/SecureSource;->isSecurePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    .line 733
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 735
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/filter/empty/{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 740
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/combo/item/{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 744
    move-object/from16 v6, v20

    .line 753
    .end local v13           #id:I
    .end local v20           #screenNailItemPath:Lcom/android/gallery3d/data/Path;
    .end local v21           #screenNailSetPath:Lcom/android/gallery3d/data/Path;
    :cond_a
    :goto_1
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v3, :cond_b

    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v3, :cond_19

    .line 754
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v18

    .line 760
    .local v18, originalSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/gallery3d/data/ComboAlbum;

    if-eqz v3, :cond_c

    move-object/from16 v3, v18

    .line 763
    check-cast v3, Lcom/android/gallery3d/data/ComboAlbum;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 765
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/filter/delete/{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 768
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v3, :cond_1a

    .line 769
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 776
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v3, :cond_e

    .line 777
    const-string v3, "Gallery2/PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_e
    if-nez v6, :cond_10

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v17

    .line 781
    .local v17, mediaItemCount:I
    if-lez v17, :cond_14

    .line 782
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move/from16 v0, v17

    if-lt v3, v0, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 783
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 790
    .end local v17           #mediaItemCount:I
    :cond_10
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v8, :cond_1b

    const/4 v8, -0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v9, :cond_1c

    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v10, :cond_1d

    const/4 v10, 0x0

    :goto_6
    invoke-direct/range {v2 .. v10}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZ)V

    .line 795
    .local v2, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mIsOpenFromLocal:Z

    invoke-interface {v3, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->setIsOpenFromLocal(Z)V

    .line 800
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    if-eqz v3, :cond_11

    .line 871
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 939
    .end local v2           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v18           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_21

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_22

    const v3, 0x7f0b0011

    :goto_9
    invoke-virtual {v4, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 946
    .local v12, galleryRoot:Landroid/view/ViewGroup;
    if-eqz v12, :cond_13

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_12

    .line 948
    new-instance v3, Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v12}, Lcom/android/gallery3d/app/PhotoPageBottomControls;-><init>(Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    .line 950
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v19

    .line 951
    .local v19, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v19, :cond_13

    .line 952
    new-instance v3, Lcom/android/gallery3d/app/PhotoPageProgressBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, v12}, Lcom/android/gallery3d/app/PhotoPageProgressBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    .line 953
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_13

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 960
    .end local v19           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_13
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageOnCreate()V

    .line 961
    .end local v12           #galleryRoot:Landroid/view/ViewGroup;
    :cond_14
    :goto_a
    return-void

    .line 618
    .end local v14           #inCameraRoll:Z
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 622
    :cond_16
    if-eqz v15, :cond_17

    const-string v3, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    :goto_b
    goto/16 :goto_0

    :cond_17
    const/4 v6, 0x0

    goto :goto_b

    .line 745
    .restart local v14       #inCameraRoll:Z
    :cond_18
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/combo/item/{/filter/camera_shortcut,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 748
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 749
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    goto/16 :goto_1

    .line 757
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v18

    .restart local v18       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    goto/16 :goto_2

    .line 772
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    goto/16 :goto_3

    .line 790
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v9

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AppBridge;->isStaticCamera()Z

    move-result v10

    goto/16 :goto_6

    .line 893
    .end local v18           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_1e
    const/16 v16, 0x0

    .line 895
    .local v16, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v16

    .end local v16           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    check-cast v16, Lcom/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .restart local v16       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-nez v16, :cond_1f

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0c02cd

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto/16 :goto_a

    .line 897
    .end local v16           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :catch_0
    move-exception v11

    .line 898
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "Gallery2/PhotoPage"

    const-string v4, "Exception in getMediaObject(): "

    invoke-static {v3, v4, v11}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    const-string v3, "Gallery2/PhotoPage"

    const-string v4, "quitting PhotoPage!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto/16 :goto_a

    .line 913
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v16       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_1f
    new-instance v22, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v4, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    .line 914
    .local v22, spda:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    if-eqz v3, :cond_20

    .line 917
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$10;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 935
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 936
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    goto/16 :goto_7

    .line 939
    .end local v16           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v22           #spda:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 943
    :cond_22
    const v3, 0x7f0b007a

    goto/16 :goto_9
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v1, 0x7f11000c

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->createActionBarMenu(ILandroid/view/Menu;)V

    .line 1687
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "image/*"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 1691
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->addShareSelectedListener()V

    .line 1692
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1693
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateActionBarTitle()V

    .line 1694
    const/4 v0, 0x1

    return v0
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2364
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2062
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 2063
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 2069
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 2071
    return-void

    .line 2063
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2488
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 2490
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 2491
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 2492
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 2493
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 2494
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 2497
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->cleanup()V

    .line 2501
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2502
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2505
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;->removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 2506
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 2507
    return-void
.end method

.method public onFilmModeChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2368
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2369
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_0

    .line 2370
    if-eqz p1, :cond_3

    .line 2371
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 2377
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    .line 2378
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2380
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->isMav(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSupported:Z

    if-eqz v0, :cond_1

    .line 2381
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->cancelCurrentMavDecodeTask()V

    .line 2386
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateActionBarTitle()V

    .line 2388
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2389
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaSeekBar()V

    .line 2392
    :cond_2
    return-void

    .line 2374
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    goto :goto_0

    .line 2384
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_1
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 2039
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2041
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2042
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 2039
    goto :goto_0
.end method

.method public onFullScreenChanged(ZI)V
    .locals 4
    .parameter "full"
    .parameter "type"

    .prologue
    .line 2047
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2049
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2050
    return-void

    .line 2047
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onGyroPositionChanged(F)V
    .locals 5
    .parameter "angle"

    .prologue
    .line 3217
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getTotalFrameCount()I

    move-result v1

    .line 3219
    .local v1, totalCount:I
    const/high16 v2, -0x4080

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 3220
    int-to-float v2, v1

    mul-float/2addr v2, p1

    const/high16 v3, 0x41c8

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 3221
    .local v0, index:I
    if-ltz v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 3222
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    const v3, 0xffff

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    if-eq v2, v0, :cond_1

    .line 3223
    :cond_0
    const-string v2, "Gallery2/PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index========"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/app/PhotoPage;->updateMavProcess(II)V

    .line 3225
    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    .line 3229
    .end local v0           #index:I
    :cond_1
    return-void
.end method

.method public onItemDeleted()V
    .locals 7

    .prologue
    .line 1116
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v4, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 1119
    .local v2, current:Lcom/android/gallery3d/data/MediaItem;
    instance-of v4, v2, Lcom/android/gallery3d/data/SnailItem;

    if-nez v4, :cond_0

    .line 1120
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 1122
    .local v3, path:Lcom/android/gallery3d/data/Path;
    const v0, 0x7f0b018b

    .line 1123
    .local v0, action:I
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f10

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 1125
    .local v1, confirmMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1126
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1127
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked2(ILjava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 16
    .parameter "item"

    .prologue
    .line 1756
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    .line 1905
    :goto_0
    return v13

    .line 1757
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1758
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 1760
    .local v4, current:Lcom/android/gallery3d/data/MediaItem;
    if-nez v4, :cond_1

    .line 1762
    const/4 v13, 0x1

    goto :goto_0

    .line 1765
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v13}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v5

    .line 1766
    .local v5, currentIndex:I
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    .line 1768
    .local v10, path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 1769
    .local v8, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1771
    .local v1, action:I
    const v13, 0x102002c

    if-eq v1, v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mLoadingFinished:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 1772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v15, 0x7f0c0334

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1774
    const/4 v13, 0x1

    goto :goto_0

    .line 1777
    :cond_2
    const/4 v3, 0x0

    .line 1778
    .local v3, confirmMsg:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 1905
    const/4 v13, 0x0

    goto :goto_0

    .line 1780
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1781
    const/4 v13, 0x1

    goto :goto_0

    .line 1784
    :sswitch_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1786
    .local v6, data:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v13}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1787
    .local v9, mediaSetPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mSnailSetPath:Lcom/android/gallery3d/data/Path;

    if-eqz v13, :cond_3

    .line 1788
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mSnailSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1789
    const-string v13, "Gallery2/PhotoPage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action_slideshow | mediaSetPath: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_3
    const-string v13, "media-set-path"

    invoke-virtual {v6, v13, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const-string v13, "media-item-path"

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v13, :cond_4

    .line 1798
    add-int/lit8 v5, v5, -0x1

    .line 1801
    :cond_4
    const-string v13, "photo-index"

    invoke-virtual {v6, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1802
    const-string v13, "repeat"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1804
    sget-boolean v13, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v13, :cond_5

    sget-boolean v13, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v13, :cond_6

    .line 1805
    :cond_5
    const-string v13, "GalleryDrmInclusion"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1807
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v13

    const-class v14, Lcom/android/gallery3d/app/SlideshowPage;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15, v6}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 1809
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1812
    .end local v6           #data:Landroid/os/Bundle;
    .end local v9           #mediaSetPath:Ljava/lang/String;
    :sswitch_2
    sget-boolean v13, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v13, :cond_7

    invoke-static {v4}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->isStereoImage(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1813
    const-string v13, "Gallery2/PhotoPage"

    const-string v14, "onItemSelected:for stereo image, show dialog"

    invoke-static {v13, v14}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/app/PhotoPage;->showConvertCropDialog(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1815
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1817
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1818
    .local v2, activity:Landroid/app/Activity;
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.EDITOR_CROP"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1819
    .local v7, intent:Landroid/content/Intent;
    const-class v13, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v7, v2, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1820
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v12

    .line 1821
    .local v12, uri:Landroid/net/Uri;
    invoke-static {v12, v10}, Lcom/mediatek/gallery3d/util/MediatekFeature;->addMtkInclusion(Landroid/net/Uri;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v12

    .line 1822
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1824
    invoke-static {v4}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x3

    :goto_1
    invoke-virtual {v2, v7, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1827
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1824
    :cond_8
    const/4 v13, 0x2

    goto :goto_1

    .line 1830
    .end local v2           #activity:Landroid/app/Activity;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v12           #uri:Landroid/net/Uri;
    :sswitch_3
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v14, Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {v7, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1831
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1833
    const-string v13, "media-item-path"

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v14, 0x6

    invoke-virtual {v13, v7, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1835
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1838
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1839
    .restart local v2       #activity:Landroid/app/Activity;
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.PQ"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1840
    .restart local v7       #intent:Landroid/content/Intent;
    const-class v13, Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-virtual {v7, v2, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1841
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1842
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1843
    .local v11, pqBundle:Landroid/os/Bundle;
    const-string v13, "PQUri"

    invoke-virtual {v8, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string v13, "PQMineType"

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v13, "PQViewWidth"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v14}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1846
    const-string v13, "PQViewHeight"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v14}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1847
    const-string v13, "PQLevelCount"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v14}, Lcom/android/gallery3d/app/PhotoPage$Model;->getLevelCount()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1848
    invoke-virtual {v7, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1849
    const-string v13, "Gallery2/PhotoPage"

    const-string v14, "startActivity PQ"

    invoke-static {v13, v14}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/4 v13, 0x7

    invoke-virtual {v2, v7, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1851
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1854
    .end local v2           #activity:Landroid/app/Activity;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v11           #pqBundle:Landroid/os/Bundle;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->switchStereoMode()V

    .line 1855
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1856
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1857
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1861
    :sswitch_6
    sget-boolean v13, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v13, :cond_9

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1862
    :cond_9
    const-string v13, "Gallery2/PhotoPage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onItemSelected:call manager to show info for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    .line 1865
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1868
    :sswitch_7
    sget-boolean v13, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v13, :cond_a

    invoke-static {v4}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->isStereoImage(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1869
    const-string v13, "Gallery2/PhotoPage"

    const-string v14, "onItemSelected:for stereo image, show dialog"

    invoke-static {v13, v14}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/app/PhotoPage;->showConvertEditDialog(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1871
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1873
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    .line 1874
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1877
    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v13, :cond_b

    .line 1878
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 1882
    :goto_2
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1880
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->showDetails()V

    goto :goto_2

    .line 1886
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f10

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 1894
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1895
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13, v10}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v3, v14}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 1897
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1899
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13, v10}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v14, Lcom/android/gallery3d/ui/ImportCompleteListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v14, v15}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v3, v14}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 1903
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1778
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0162 -> :sswitch_1
        0x7f0b0189 -> :sswitch_b
        0x7f0b018b -> :sswitch_9
        0x7f0b018c -> :sswitch_7
        0x7f0b018d -> :sswitch_a
        0x7f0b018e -> :sswitch_a
        0x7f0b018f -> :sswitch_a
        0x7f0b0190 -> :sswitch_2
        0x7f0b0191 -> :sswitch_a
        0x7f0b0192 -> :sswitch_8
        0x7f0b0193 -> :sswitch_6
        0x7f0b0194 -> :sswitch_a
        0x7f0b0196 -> :sswitch_3
        0x7f0b0197 -> :sswitch_5
        0x7f0b0198 -> :sswitch_4
    .end sparse-switch
.end method

.method public onLongPress(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onLongPress(II)Z

    .line 2013
    :cond_0
    return-void
.end method

.method public onMavSeekBarAllowed(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 2094
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSeekBarAllowed:Z

    .line 2095
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2096
    return-void
.end method

.method public onOrientationCompensationChanged()V
    .locals 1

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 3038
    return-void
.end method

.method public onPanoramaFrameUpdate(I)V
    .locals 2
    .parameter "frameIndex"

    .prologue
    .line 2101
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 2102
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2103
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2104
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2111
    :cond_0
    :goto_0
    return-void

    .line 2106
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaSeekBar()V

    .line 2107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaFrameCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 2108
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2300
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 2301
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2303
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v2, :cond_0

    .line 2305
    const-string v2, "Gallery2/PhotoPage"

    const-string v3, "onPause:exit stero mode"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 2308
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 2310
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2311
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2313
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 2315
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 2316
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v2, :cond_2

    .line 2317
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 2319
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->pause()V

    .line 2320
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2321
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2322
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2323
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2324
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v2, :cond_3

    .line 2325
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 2327
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2328
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 2329
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v2, :cond_4

    .line 2331
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 2332
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->resetDeletion()V

    .line 2334
    :cond_4
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v2, :cond_5

    .line 2336
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2338
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_5

    .line 2339
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 2340
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    .line 2346
    :cond_5
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v2, :cond_8

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mShouldKeepLightsOutWhenResume:Z

    .line 2348
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    if-eqz v0, :cond_6

    .line 2349
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    invoke-virtual {v0, v4}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setVisibility(I)V

    .line 2350
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->restore()V

    .line 2354
    :cond_6
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_7

    .line 2355
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2358
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->removeGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V

    .line 2359
    return-void

    :cond_8
    move v0, v1

    .line 2346
    goto :goto_0
.end method

.method public onPictureCenter(Z)V
    .locals 4
    .parameter "isCamera"

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 1051
    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1052
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1055
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1056
    return-void

    :cond_1
    move p1, v0

    .line 1051
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1055
    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2429
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->startProfilePhotoPageOnResume()V

    .line 2430
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 2432
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCanSlideToPrePicture:Z

    .line 2434
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mEnterFilmMode:Z

    if-eqz v1, :cond_0

    .line 2435
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2436
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEnterFilmMode:Z

    .line 2439
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v1, :cond_1

    .line 2440
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 2484
    :goto_0
    return-void

    .line 2443
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 2445
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 2446
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->freeze()V

    .line 2447
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2449
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->resumePendingRequestForVideoShare()V

    .line 2450
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/ActivityState;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 2452
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 2453
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 2454
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2455
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateActionBarTitle()V

    .line 2456
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2457
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2458
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v3, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 2461
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v1, :cond_3

    .line 2462
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 2463
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2465
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 2470
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v2, "image/*"

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2471
    .local v0, haveImageEditor:Z
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eq v0, v1, :cond_4

    .line 2472
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 2473
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 2476
    :cond_4
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 2477
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2479
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 2481
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMavSeekBar()V

    .line 2482
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->stopProfilePhotoPageOnResume()V

    .line 2483
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setGyroPositionListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;)V

    goto/16 :goto_0

    .line 2467
    .end local v0           #haveImageEditor:Z
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    goto :goto_1
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 2977
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v2, "index-hint"

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2978
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    .line 2979
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2980
    .local v0, photoPath:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 2981
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    .end local v0           #photoPath:Lcom/android/gallery3d/data/Path;
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1933
    const-string v11, "Gallery2/PhotoPage"

    const-string v12, "<onSingleTapConfirmed>"

    invoke-static {v11, v12}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v11, :cond_1

    .line 1935
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v11, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v11, v10}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 1939
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v4, :cond_0

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v4, v11, :cond_0

    .line 1944
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    .line 1945
    .local v6, supported:I
    const/high16 v11, 0x20

    and-int/2addr v11, v6

    if-eqz v11, :cond_2

    move v7, v9

    .line 1946
    .local v7, unlock:Z
    :goto_1
    const/high16 v11, 0x40

    and-int/2addr v11, v6

    if-eqz v11, :cond_3

    move v1, v9

    .line 1947
    .local v1, goBack:Z
    :goto_2
    const/high16 v11, 0x100

    and-int/2addr v11, v6

    if-eqz v11, :cond_4

    move v5, v9

    .line 1948
    .local v5, launchCamera:Z
    :goto_3
    if-eqz v1, :cond_5

    .line 1949
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto :goto_0

    .end local v1           #goBack:Z
    .end local v5           #launchCamera:Z
    .end local v7           #unlock:Z
    :cond_2
    move v7, v10

    .line 1945
    goto :goto_1

    .restart local v7       #unlock:Z
    :cond_3
    move v1, v10

    .line 1946
    goto :goto_2

    .restart local v1       #goBack:Z
    :cond_4
    move v5, v10

    .line 1947
    goto :goto_3

    .line 1950
    .restart local v5       #launchCamera:Z
    :cond_5
    if-eqz v7, :cond_6

    .line 1951
    new-instance v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v11, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1952
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "dismiss-keyguard"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1953
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1954
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    if-eqz v5, :cond_7

    .line 1957
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/app/PhotoPage;->onPictureCenter(Z)V

    goto :goto_0

    .line 1960
    :cond_7
    sget-boolean v11, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-eqz v11, :cond_8

    .line 1961
    const/4 v0, 0x0

    .line 1963
    .local v0, consume:Z
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v8

    .line 1964
    .local v8, w:I
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    .line 1965
    .local v2, h:I
    div-int/lit8 v11, v8, 0x2

    sub-int v11, p1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sget v12, Lcom/android/gallery3d/app/PhotoPage;->mDrmMicroThumbDim:I

    if-gt v11, v12, :cond_9

    div-int/lit8 v11, v2, 0x2

    sub-int v11, p2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sget v12, Lcom/android/gallery3d/app/PhotoPage;->mDrmMicroThumbDim:I

    if-gt v11, v12, :cond_9

    move v0, v9

    .line 1967
    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/PhotoPage;->tryConsumeDrmRights(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1971
    .end local v0           #consume:Z
    .end local v2           #h:I
    .end local v8           #w:I
    :cond_8
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0

    .restart local v0       #consume:Z
    .restart local v2       #h:I
    .restart local v8       #w:I
    :cond_9
    move v0, v10

    .line 1965
    goto :goto_4
.end method

.method public onSingleTapUp(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1977
    const-string v7, "Gallery2/PhotoPage"

    const-string v8, "<onSingleTapUp>"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v7, :cond_1

    .line 1979
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v7, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2005
    :cond_0
    :goto_0
    return-void

    .line 1981
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v7, v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1982
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v1, v7, :cond_0

    .line 1986
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    .line 1987
    .local v3, supported:I
    and-int/lit16 v7, v3, 0x80

    if-eqz v7, :cond_3

    move v2, v5

    .line 1989
    .local v2, playVideo:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 1992
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v4

    .line 1993
    .local v4, w:I
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    .line 1994
    .local v0, h:I
    div-int/lit8 v7, v4, 0x2

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    if-gt v7, v4, :cond_4

    div-int/lit8 v7, v0, 0x2

    sub-int v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    if-gt v7, v0, :cond_4

    move v2, v5

    .line 1998
    .end local v0           #h:I
    .end local v4           #w:I
    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    .line 1999
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->handleMavPlayback(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2000
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPlayUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #playVideo:Z
    :cond_3
    move v2, v6

    .line 1987
    goto :goto_1

    .restart local v0       #h:I
    .restart local v2       #playVideo:Z
    .restart local v4       #w:I
    :cond_4
    move v2, v6

    .line 1994
    goto :goto_2

    .line 2002
    .end local v0           #h:I
    .end local v4           #w:I
    :cond_5
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 2253
    if-nez p2, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    .line 2297
    :cond_0
    :goto_0
    return-void

    .line 2262
    :cond_1
    iput-boolean v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 2265
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2284
    :pswitch_0
    if-eqz p3, :cond_0

    .line 2285
    const-string v4, "media-item-path"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2286
    .local v3, path:Ljava/lang/String;
    const-string v4, "photo-index"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2287
    .local v1, index:I
    if-eqz v3, :cond_0

    .line 2288
    sget-boolean v4, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v4, :cond_3

    .line 2289
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-static {v3, v5}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 2267
    .end local v1           #index:I
    .end local v3           #path:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setMTKCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2270
    :pswitch_2
    if-ne p2, v5, :cond_0

    .line 2271
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setMTKCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2275
    :pswitch_3
    if-ne p2, v5, :cond_0

    .line 2276
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2277
    .local v0, context:Landroid/content/Context;
    const v4, 0x7f0c02e4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0c032a

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2279
    .local v2, message:Ljava/lang/String;
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2292
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #message:Ljava/lang/String;
    .restart local v1       #index:I
    .restart local v3       #path:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 2265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 2576
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2577
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2081
    :goto_0
    return-void

    .line 2078
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcom/android/gallery3d/data/Path;)V

    .line 2079
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcom/android/gallery3d/data/Path;)V

    .line 2080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "uri"
    .parameter "title"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2129
    const-string v4, "Gallery2/PhotoPage"

    const-string v5, "playVideo()"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "video/*"

    invoke-virtual {v4, p2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "come-from-camera"

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v6, :cond_0

    :goto_0
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "treat-up-as-back"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2136
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "mediatek.intent.extra.ENABLE_VIDEO_LIST"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2137
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 2131
    goto :goto_0

    .line 2138
    :catch_0
    move-exception v0

    .line 2139
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0c02d4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public refreshBottomControlsWhenReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2538
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-nez v1, :cond_0

    .line 2547
    :goto_0
    return-void

    .line 2541
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 2542
    .local v0, currentPhoto:Lcom/android/gallery3d/data/MediaObject;
    if-nez v0, :cond_1

    .line 2543
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2545
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0
.end method

.method public renderFullPictureOnly(Z)V
    .locals 1
    .parameter "fullPictureOnly"

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->renderFullPictureOnly(Z)V

    .line 2972
    return-void
.end method

.method public setCameraPath(Ljava/lang/String;)V
    .locals 11
    .parameter "setPath"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 967
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v6, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v6, :cond_2

    .line 971
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 973
    :cond_2
    const/4 v1, 0x0

    .line 974
    .local v1, itemPath:Lcom/android/gallery3d/data/Path;
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 978
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v0

    .line 979
    .local v0, id:I
    invoke-static {v0}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 980
    .local v5, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v0}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 981
    .local v4, screenNailItemPath:Lcom/android/gallery3d/data/Path;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/SnailAlbum;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 983
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/SnailItem;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 985
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 988
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v7, "/local/all/0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 990
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/data/SecureSource;->isSecurePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 991
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/SecureAlbum;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    .line 993
    iput-boolean v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 995
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/filter/empty/{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 999
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/combo/item/{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 1002
    move-object v1, v4

    .line 1004
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v6, :cond_b

    .line 1005
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    iget v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1011
    .local v3, originalSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v6, :cond_6

    instance-of v6, v3, Lcom/android/gallery3d/data/ComboAlbum;

    if-eqz v6, :cond_6

    move-object v6, v3

    .line 1014
    check-cast v6, Lcom/android/gallery3d/data/ComboAlbum;

    invoke-virtual {v6, v10}, Lcom/android/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 1016
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v3}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 1017
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/filter/delete/{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 1019
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->mIsStereoDisplaySupported:Z

    if-eqz v6, :cond_c

    .line 1020
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    iget v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/FilterDeleteSet;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 1026
    :goto_2
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCameraPath:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v6, :cond_8

    .line 1029
    const-string v6, "Gallery2/PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to restore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_8
    if-nez v1, :cond_a

    .line 1032
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    .line 1033
    .local v2, mediaItemCount:I
    if-lez v2, :cond_0

    .line 1034
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lt v6, v2, :cond_9

    iput v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 1035
    :cond_9
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v6, v7, v10}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1043
    .end local v2           #mediaItemCount:I
    :cond_a
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v6, :cond_0

    .line 1044
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-interface {v6, v7, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setSourceAndItem(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V

    .line 1045
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    goto/16 :goto_0

    .line 1008
    .end local v3           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_b
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .restart local v3       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    goto/16 :goto_1

    .line 1023
    :cond_c
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/FilterDeleteSet;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    goto/16 :goto_2
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 1648
    return-void
.end method

.method public setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method public setOritationTag(ZI)V
    .locals 1
    .parameter "lock"
    .parameter "oritationNum"

    .prologue
    .line 3313
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3314
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 3318
    :goto_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->isLockCameraOritation:Z

    .line 3319
    return-void

    .line 3316
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1666
    return-void
.end method

.method public showDrmDialog(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    .line 2158
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2159
    :cond_0
    const-string v3, "Gallery2/PhotoPage"

    const-string v4, "showDrmDialog() is call for non-drm media!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :goto_0
    return-void

    .line 2162
    :cond_1
    instance-of v3, p2, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v3, :cond_2

    .line 2163
    const-string v3, "Gallery2/PhotoPage"

    const-string v4, "showDrmDialog:encoutered LocalVideo, ignor"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 2167
    check-cast v1, Lcom/android/gallery3d/data/LocalImage;

    .line 2169
    .local v1, imageItem:Lcom/android/gallery3d/data/LocalImage;
    iget-object v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-static {p1, v3, v4}, Lcom/mediatek/gallery3d/drm/DrmHelper;->checkRightsStatusForTap(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 2171
    .local v2, rights:I
    invoke-static {p1}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmManagerClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    .line 2174
    .local v0, drmManagerClient:Lcom/mediatek/drm/OmaDrmClient;
    if-nez v2, :cond_3

    .line 2175
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$15;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/gallery3d/app/PhotoPage$15;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/mediatek/drm/OmaDrmClient;Lcom/android/gallery3d/data/LocalImage;)V

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$16;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/PhotoPage$16;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-static {p1, v3, v4}, Lcom/mediatek/drm/OmaDrmUiUtils;->showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 2194
    :cond_3
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4

    .line 2195
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$17;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$17;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$18;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/PhotoPage$18;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-static {p1, v3, v4}, Lcom/mediatek/drm/OmaDrmUiUtils;->showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 2206
    :cond_4
    iget-object v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, p1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    .line 1652
    const-string v0, "Gallery2/PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchWithCaptureAnimation: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orig set path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isFirstBoxReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1657
    const/4 v0, 0x0

    .line 1660
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    goto :goto_0
.end method

.method public tryConsumeDrmRights(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 2145
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v1, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return v0

    .line 2148
    :cond_1
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->mIsDrmSupported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->enteredConsumeMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    .line 2150
    const-string v0, "Gallery2/PhotoPage"

    const-string v1, "tryConsumeDrmRights:show drm dialog"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showDrmDialog(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)V

    .line 2152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 2021
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->isLockCameraOritation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2024
    :cond_0
    return-void
.end method

.method public updateMenuOperationsInViewThread()V
    .locals 2

    .prologue
    const/16 v1, 0x81

    .line 2630
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2631
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2632
    return-void
.end method
