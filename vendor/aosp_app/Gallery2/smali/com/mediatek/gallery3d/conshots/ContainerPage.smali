.class public Lcom/mediatek/gallery3d/conshots/ContainerPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "ContainerPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;,
        Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_BACK_INDEX:Ljava/lang/String; = "back-index"

.field public static final KEY_BACK_SET_PATH:Ljava/lang/String; = "back-set-path"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_MOTION_SELECT_ENABLE:Ljava/lang/String; = "motion_select_enable"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field private static final MOTION_MANUAL_EDIT_MAX_PIC:I = 0x8

.field private static final MOTION_MANUAL_EDIT_MIN_PIC:I = 0x2

.field private static final MSG_INTO_MOTION_PREVIEW:I = 0x3

.field private static final MSG_PICK_PHOTO:I = 0x1

.field private static final MSG_UP_PRESS:I = 0x2

.field private static final REQUEST_CROP:I = 0x64

.field private static final REQUEST_CROP_WALLPAPER:I = 0x65

.field private static final REQUEST_DO_ANIMATION:I = 0x3

.field private static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/ContainerPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private confirmMsg:Ljava/lang/String;

.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInMotionMode:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/android/gallery3d/data/Path;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

.field private mNeedShowPrevState:Z

.field private mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPickedItem:Lcom/android/gallery3d/data/MediaItem;

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mUserDistance:F

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 94
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mIsActive:Z

    .line 107
    iput v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mFocusIndex:I

    .line 116
    iput v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mLoadingBits:I

    .line 117
    new-instance v0, Lcom/android/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    .line 125
    new-instance v0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 161
    new-instance v0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 796
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onUpPressed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/gallery3d/conshots/ContainerPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/mediatek/gallery3d/conshots/MotionTrack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/RelativePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gallery3d/conshots/ContainerPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method private clearItemsDisable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 885
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 886
    .local v0, count:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 887
    .local v2, mediaItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 888
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaItem;->setDisable(Z)V

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 890
    :cond_0
    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter "loadTaskBit"

    .prologue
    .line 755
    iget v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mLoadingBits:I

    .line 756
    iget v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0c0252

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 760
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 763
    :cond_0
    return-void
.end method

.method private handleMtkCropResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 386
    const-string v2, "Gallery2/ContainerPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMtkCropFlow: request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    packed-switch p1, :pswitch_data_0

    .line 405
    const-string v1, "Gallery2/ContainerPage"

    const-string v2, "unknown MTK crop request!!"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    :goto_1
    return-void

    .line 386
    :cond_1
    const-string v1, "null"

    goto :goto_0

    .line 392
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 397
    .local v0, activity:Landroid/app/Activity;
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mPickedItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mPickedItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    :cond_2
    invoke-virtual {v0, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 401
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mShowDetails:Z

    .line 620
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 621
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 622
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 623
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 585
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    .line 586
    const-string v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mParentMediaSetString:Ljava/lang/String;

    .line 587
    const-string v0, "motion_select_enable"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 589
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 590
    const-string v0, "MediaSet is null. Path = %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 593
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 595
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/mediatek/gallery3d/conshots/ContainerPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 596
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    .line 597
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v0, :cond_1

    .line 598
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mNeedShowPrevState:Z

    .line 599
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->registerStorageReceiver()V

    .line 601
    :cond_1
    const-string v0, "Gallery2/ContainerPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeData, mInMotionMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 543
    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v5}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 544
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 545
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    .line 546
    .local v0, config:Lcom/android/gallery3d/app/Config$AlbumPage;
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 547
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    .line 549
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 550
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 551
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v2, Lcom/mediatek/gallery3d/conshots/ContainerPage$4;

    invoke-direct {v2, p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage$4;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 572
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 573
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/mediatek/gallery3d/conshots/ContainerPage$5;

    invoke-direct {v2, p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage$5;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 581
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 582
    return-void
.end method

.method private markItemsDisable(I)V
    .locals 6
    .parameter "slotIndex"

    .prologue
    .line 872
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 874
    .local v0, count:I
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    invoke-static {p1}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->getDisableArray(I)[I

    move-result-object v3

    .line 875
    .local v3, refImage:[I
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 876
    .local v2, mediaItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 877
    aget v4, v3, v1

    if-nez v4, :cond_0

    .line 878
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaItem;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/MediaItem;->setDisable(Z)V

    .line 876
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    :cond_1
    return-void
.end method

.method private motionTrackBlend()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 945
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 946
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0254

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->confirmMsg:Ljava/lang/String;

    .line 948
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->confirmMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mAlertDialog:Landroid/app/AlertDialog;

    .line 951
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 971
    :goto_0
    return-void

    .line 954
    :cond_0
    new-instance v0, Lcom/mediatek/gallery3d/util/RotateProgressFragment;

    const v1, 0x7f0c0256

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/util/RotateProgressFragment;-><init>(I)V

    .line 956
    .local v0, genProgressDialog:Landroid/app/DialogFragment;
    invoke-virtual {v0, v5}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 957
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 958
    new-instance v1, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Landroid/app/DialogFragment;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private motionTrackInit()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 916
    const-string v1, "Gallery2/ContainerPage"

    const-string v2, "motionTrackInit"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v10}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 918
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 919
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 920
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v10, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    new-instance v1, Lcom/mediatek/gallery3d/conshots/MotionTrack;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/conshots/MotionTrack;-><init>()V

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    .line 926
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v7

    .line 927
    .local v7, itemCount:I
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v10, v7}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    .line 928
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaItem;

    .line 929
    .local v9, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/mediatek/gallery3d/conshots/MotionSet;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/conshots/MotionSet;->getWorkPath()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, workPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    const/16 v4, 0x14

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->init(Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 933
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mNeedShowPrevState:Z

    if-eqz v1, :cond_0

    .line 934
    iput-boolean v10, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mNeedShowPrevState:Z

    .line 935
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->showPrevState()V

    goto :goto_0
.end method

.method private motionTrackRelease()V
    .locals 2

    .prologue
    .line 940
    const-string v0, "Gallery2/ContainerPage"

    const-string v1, "motionTrackRelease"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->release()V

    .line 942
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 235
    return-void
.end method

.method private onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 325
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 326
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 327
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 329
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->startMtkCropFlow(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 332
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 335
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 336
    const-string v4, "return-data"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 339
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 346
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 344
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 6
    .parameter "slotIndex"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 247
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 248
    const-string v1, "Gallery2/ContainerPage"

    const-string v2, "not active, ignore the click"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 252
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 253
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_2

    .line 254
    const-string v1, "Gallery2/ContainerPage"

    const-string v2, "Item not ready yet, ignore the click"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v1, :cond_4

    .line 260
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    if-lt v1, v4, :cond_3

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->contains(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0255

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->confirmMsg:Ljava/lang/String;

    .line 265
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->confirmMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mAlertDialog:Landroid/app/AlertDialog;

    .line 269
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 272
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->markItemsDisable(I)V

    .line 278
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsSource:Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->findIndex(I)I

    .line 280
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_0

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->contains(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->clearItemsDisable()V

    goto :goto_1

    .line 283
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_6
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 284
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 286
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 224
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 227
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-set-path"

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private pickPhoto(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 296
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mIsActive:Z

    if-nez v2, :cond_0

    .line 297
    const-string v2, "Gallery2/ContainerPage"

    const-string v3, "not active, ignore the click"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 301
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_1

    .line 302
    const-string v2, "Gallery2/ContainerPage"

    const-string v3, "Item not ready yet, ignore the click"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mGetContent:Z

    if-eqz v2, :cond_2

    .line 306
    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 308
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "index-hint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v2, "open-animation-rect"

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v2, "media-item-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "albumpage-transition"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v2, "in_camera_roll"

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private registerStorageReceiver()V
    .locals 3

    .prologue
    .line 975
    const-string v1, "Gallery2/ContainerPage"

    const-string v2, ">> registerStorageReceiver"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 978
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 979
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 980
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 981
    new-instance v1, Lcom/mediatek/gallery3d/conshots/ContainerPage$8;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage$8;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 994
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 995
    const-string v1, "Gallery2/ContainerPage"

    const-string v2, "<< registerStorageReceiver: receiver registered"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadTaskBit"

    .prologue
    .line 751
    iget v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mLoadingBits:I

    .line 752
    return-void
.end method

.method private showConShotsIcon()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 867
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setLogo(I)V

    .line 869
    :cond_0
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mShowDetails:Z

    .line 606
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsSource:Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 609
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/mediatek/gallery3d/conshots/ContainerPage$6;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage$6;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 616
    return-void
.end method

.method private showPrevState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 895
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    .line 896
    .local v2, itmeCount:I
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v8, v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 899
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->getPrevFocusArray()[I

    move-result-object v4

    .line 900
    .local v4, prevFocus:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 901
    aget v5, v4, v0

    if-ne v5, v7, :cond_0

    .line 902
    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 900
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->getPrevDisableArray()[I

    move-result-object v3

    .line 907
    .local v3, prevDisable:[I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 908
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/data/MediaItem;->setDisable(Z)V

    .line 909
    aget v5, v3, v0

    if-nez v5, :cond_2

    aget v5, v4, v0

    if-eq v5, v7, :cond_2

    .line 910
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/MediaItem;->setDisable(Z)V

    .line 907
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    :cond_3
    return-void
.end method

.method private startMtkCropFlow(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 354
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mPickedItem:Lcom/android/gallery3d/data/MediaItem;

    .line 355
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 356
    .local v2, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 357
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    .line 360
    .local v5, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v7, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 362
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "Gallery2/ContainerPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startMtkCropFlow: EXTRA_OUTPUT="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v10, "output"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v7, "crop-for-wallpaper"

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v9, "crop"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 365
    .local v1, cropForWallpaper:Z
    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "output"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    if-nez v7, :cond_1

    move v4, v6

    .line 367
    .local v4, shouldReturnData:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 368
    const-string v7, "return-data"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    const-string v7, "Gallery2/ContainerPage"

    const-string v8, "startMtkCropFlow: KEY_RETURN_DATA"

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    if-eqz v1, :cond_2

    .line 373
    const/16 v7, 0x65

    invoke-virtual {v0, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 374
    const-string v7, "Gallery2/ContainerPage"

    const-string v8, "startMtkCropFlow: start for result: REQUEST_CROP_WALLPAPER"

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_1
    return v6

    .line 365
    .end local v4           #shouldReturnData:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 376
    .restart local v4       #shouldReturnData:Z
    :cond_2
    const/16 v7, 0x64

    invoke-virtual {v0, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 377
    const-string v7, "Gallery2/ContainerPage"

    const-string v8, "startMtkCropFlow: start for result: REQUEST_CROP"

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private unregisterStorageReceiver()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1002
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllNotBestShotInConShots()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v4, notBestShot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    .line 151
    .local v5, total:I
    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 153
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getIsBestShot()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 154
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 155
    .local v1, id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    return-object v4
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->hideDetails()V

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onUpPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v4, 0x0

    .line 423
    const-string v2, "Gallery2/ContainerPage"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const v2, 0x3e99999a

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mUserDistance:F

    .line 425
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->initializeViews()V

    .line 426
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->initializeData(Landroid/os/Bundle;)V

    .line 427
    const-string v2, "get-content"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mGetContent:Z

    .line 429
    new-instance v2, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/mediatek/gallery3d/conshots/ContainerPage$1;)V

    iput-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsSource:Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;

    .line 430
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 431
    .local v1, context:Landroid/content/Context;
    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mVibrator:Landroid/os/Vibrator;

    .line 435
    const-string v2, "auto-select-all"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 440
    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 441
    const-string v2, "set-center"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 442
    .local v0, center:[I
    if-eqz v0, :cond_1

    .line 443
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    aget v3, v0, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/ui/RelativePosition;->setAbsolutePosition(II)V

    .line 444
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->startScatteringAnimation(Lcom/android/gallery3d/ui/RelativePosition;)V

    .line 448
    .end local v0           #center:[I
    :cond_1
    new-instance v2, Lcom/mediatek/gallery3d/conshots/ContainerPage$3;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage$3;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    .line 468
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 628
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 629
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 630
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 631
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->showConShotsIcon()V

    .line 634
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mGetContent:Z

    if-eqz v2, :cond_0

    .line 635
    const v2, 0x7f11000d

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 640
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 637
    :cond_0
    const v2, 0x7f110002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 638
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->updateBestShotMenu(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 529
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setLogo(I)V

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 536
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v0, :cond_3

    .line 537
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->unregisterStorageReceiver()V

    .line 540
    :cond_3
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 645
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 675
    :goto_0
    return v0

    .line 647
    :sswitch_0
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->onUpPressed()V

    goto :goto_0

    .line 651
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 652
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 656
    :sswitch_2
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mShowDetails:Z

    if-eqz v1, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->hideDetails()V

    goto :goto_0

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->showDetails()V

    goto :goto_0

    .line 664
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->confirmMsg:Ljava/lang/String;

    .line 666
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->getAllNotBestShotInConShots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setPrepared(Ljava/util/ArrayList;)V

    .line 667
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->confirmMsg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0

    .line 671
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->motionTrackBlend()V

    goto :goto_0

    .line 645
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0163 -> :sswitch_1
        0x7f0b0166 -> :sswitch_3
        0x7f0b0192 -> :sswitch_2
        0x7f0b0195 -> :sswitch_4
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 410
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 412
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 416
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 417
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsSource:Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->findIndex(I)I

    .line 418
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 508
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mIsActive:Z

    .line 510
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 511
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->pause()V

    .line 512
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 513
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 514
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 515
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setLogo(I)V

    .line 518
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v0, :cond_1

    .line 519
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->motionTrackRelease()V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->saveSelection()V

    .line 524
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 472
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 473
    const-string v1, "Gallery2/ContainerPage"

    const-string v4, "onResume"

    invoke-static {v1, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mIsActive:Z

    .line 476
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->showConShotsIcon()V

    .line 478
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v4, "resume_animation"

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 480
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 482
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 483
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v1}, Lcom/android/gallery3d/anim/Animation;->start()V

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/ActivityState;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 488
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    if-le v1, v2, :cond_3

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    or-int v0, v1, v3

    .line 490
    .local v0, enableHomeButton:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 495
    invoke-direct {p0, v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->setLoadingBit(I)V

    .line 496
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->resume()V

    .line 498
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 499
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 501
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v1, :cond_2

    .line 502
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->motionTrackInit()V

    .line 504
    :cond_2
    return-void

    .end local v0           #enableHomeButton:Z
    :cond_3
    move v1, v3

    .line 488
    goto :goto_0
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 6
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 736
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 737
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 741
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 706
    packed-switch p1, :pswitch_data_0

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 708
    :pswitch_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionModeForMotion()V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()V

    .line 712
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 717
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 718
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 719
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 726
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 727
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onSelectionRestoreDone()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 747
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 748
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 681
    packed-switch p1, :pswitch_data_0

    .line 701
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->handleMtkCropResult(IILandroid/content/Intent;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 684
    :pswitch_0
    if-eqz p3, :cond_0

    .line 685
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mFocusIndex:I

    .line 686
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 690
    :pswitch_1
    if-eqz p3, :cond_0

    .line 691
    const-string v0, "return-index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mFocusIndex:I

    .line 692
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 696
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
