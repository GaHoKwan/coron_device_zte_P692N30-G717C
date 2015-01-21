.class public Lcom/mediatek/videofavorites/VideoFavoritesRootView;
.super Landroid/widget/RelativeLayout;
.source "VideoFavoritesRootView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/common/widget/IMtkWidget;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final ACTION_DATA_UPDATE:Ljava/lang/String; = "com.mediatek.videofavorites.DATA_UPDATE"

.field private static final DETACHED:I = 0x0

.field private static final DRAG:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final INTERCEPT_THRESHOLD:I = 0xa

.field private static final MAX_ALLOWED_WIDGET_COUNT:I = 0x5

.field private static final MAX_VIDEO_CAN_PLAY:I = 0x2

.field private static final MAX_VIDEO_VIEW:I = 0x4

.field private static final MOVING_OUT:I = 0x3

.field private static final MSG_BROCAST_REFRESH:I = 0x4

.field private static final MSG_ENABLE_DELETE_MODE:I = 0x5

.field private static final MSG_PAGE_SWITCH_OUT:I = 0x3

.field private static final MSG_START_NEXT_VIDEO_VIEW:I = 0x2

.field private static final MSG_START_RANDOM_PLAY:I = 0x1

.field private static final PAUSED:I = 0x4

.field private static final PROJ_COLS:[Ljava/lang/String; = null

.field private static final STOP_VIDEO_ABRUPT_WHEN_PAGE_SWITCH:Z = false

.field private static final TAG:Ljava/lang/String; = "VFRootView"

.field private static final VIDEO_DELAY_TIME_MS:I = 0xc8

.field private static final VIDEO_DELAY_TIME_MS_RESUME:I = 0x12c

.field private static final VIDEO_DELAY_TIME_MS_SHORT:I = 0x32

.field private static final VIDEO_DElAY_REFRESH_PLAY:I = 0x3e8


# instance fields
.field private mDeleteIconId:I

.field private final mDeleteIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteModeViewId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mIsDeleteMode:Z

.field private mIsListeningIntent:Z

.field private mIsUnmounting:Z

.field private mLastY:F

.field private mListView:Landroid/widget/AbsListView;

.field private mNumOfEmptyView:I

.field private mNumOfImgView:I

.field private mRandom:Ljava/util/Random;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshWhenBackToLauncher:Z

.field private mScreenIndex:I

.field private mState:I

.field private final mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

.field private mVideoActiveCount:I

.field private final mVideoCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mVideoViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/videofavorites/VideoTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 879
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->PROJ_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 184
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/videofavorites/VideoTextureView;

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    .line 100
    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteModeViewId:I

    .line 101
    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIconId:I

    .line 112
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIcons:Ljava/util/ArrayList;

    .line 715
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 789
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 819
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/videofavorites/VideoTextureView;

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    .line 100
    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteModeViewId:I

    .line 101
    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIconId:I

    .line 112
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIcons:Ljava/util/ArrayList;

    .line 715
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 789
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 819
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/videofavorites/VideoTextureView;

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    .line 100
    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteModeViewId:I

    .line 101
    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIconId:I

    .line 112
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIcons:Ljava/util/ArrayList;

    .line 715
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 789
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 819
    new-instance v0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;-><init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->buildVideoViewList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getFavoriteCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setRecordButtonStatus(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setEditButtonStatus(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRefreshWhenBackToLauncher:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/videofavorites/VideoFavoritesRootView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->restartVideoViews()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)[Lcom/mediatek/videofavorites/VideoTextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    return-object v0
.end method

.method static synthetic access$1910(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->showVideoAndRandomStrart()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->onPageSwitchOutInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setDeleteMode(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoView()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsUnmounting:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsUnmounting:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    return v0
.end method

.method private addVideoToActiveList(Lcom/mediatek/videofavorites/RemoteVideoView;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    .line 398
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 399
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 404
    :cond_0
    if-lt v0, v2, :cond_2

    .line 405
    const-string v1, "VFRootView"

    const-string v2, "unable to add Video into Active List"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_1
    return-void

    .line 398
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aput-object p1, v1, v0

    .line 409
    iget v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    goto :goto_1
.end method

.method private addVideoViews(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 261
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 262
    check-cast v2, Landroid/view/ViewGroup;

    .line 263
    .local v2, vg:Landroid/view/ViewGroup;
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090007

    if-ne v3, v4, :cond_1

    .line 265
    iget v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfEmptyView:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfEmptyView:I

    .line 277
    .end local v2           #vg:Landroid/view/ViewGroup;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v2       #vg:Landroid/view/ViewGroup;
    .restart local p1
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 269
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 270
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->addVideoViews(Landroid/view/View;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_2
    instance-of v3, p1, Lcom/mediatek/videofavorites/VideoTextureView;

    if-eqz v3, :cond_3

    .line 273
    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    check-cast p1, Lcom/mediatek/videofavorites/VideoTextureView;

    .end local p1
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .restart local p1
    :cond_3
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 275
    iget v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I

    goto :goto_0
.end method

.method private addViews(Landroid/view/View;ILjava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter "viewId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 637
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 641
    check-cast v2, Landroid/view/ViewGroup;

    .line 642
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 643
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 644
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->addViews(Landroid/view/View;ILjava/util/ArrayList;)V

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private buildVideoViewList()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 300
    .local v0, rootView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 301
    const-string v1, "VFRootView"

    const-string v2, "rootview not found"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return v3

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 305
    iput v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I

    .line 306
    iput v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfEmptyView:I

    .line 307
    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->addVideoViews(Landroid/view/View;)V

    .line 313
    const-string v1, "VFRootView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numofImgView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfEmptyView:I

    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setEditButtonStatus(Z)V

    .line 315
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I

    iget v5, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfEmptyView:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    if-eq v1, v4, :cond_1

    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfEmptyView:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    if-ne v1, v4, :cond_3

    :cond_1
    move v3, v2

    .line 319
    goto :goto_0

    :cond_2
    move v1, v3

    .line 314
    goto :goto_1

    .line 322
    :cond_3
    const-string v1, "VFRootView"

    const-string v2, "not all videoViews being found, Retry later"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findAllViewsById(ILjava/util/ArrayList;)V
    .locals 3
    .parameter "viewId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p2, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 653
    .local v0, rootView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 654
    const-string v1, "VFRootView"

    const-string v2, "rootview not found"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 658
    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->addViews(Landroid/view/View;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private findFirstAbsListView()Landroid/widget/AbsListView;
    .locals 5

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 239
    .local v1, imax:I
    const-string v3, "VFRootView"

    const-string v4, "findFirstAbsListView()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 241
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 242
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/AbsListView;

    if-eqz v3, :cond_0

    .line 243
    check-cast v2, Landroid/widget/AbsListView;

    .line 246
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 240
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFavoriteCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 881
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->PROJ_COLS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 884
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 885
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 886
    .local v6, cnt:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 887
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFavoriteCount():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return v6
.end method

.method private getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mListView:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->findFirstAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mListView:Landroid/widget/AbsListView;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private installIntentFilter()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 210
    const-string v5, "VFRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installIntentFilter(): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsListeningIntent:Z

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-boolean v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsListeningIntent:Z

    if-nez v3, :cond_0

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 214
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.videofavorites.REFRESH"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, intentRefresh:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.videofavorites.DATA_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, intentUpdate:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    iput-boolean v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsListeningIntent:Z

    .line 227
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v1           #intentRefresh:Landroid/content/IntentFilter;
    .end local v2           #intentUpdate:Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 210
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInActiveList(Lcom/mediatek/videofavorites/RemoteVideoView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onPageSwitchIn()V
    .locals 1

    .prologue
    .line 595
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->onPageSwitchIn(I)V

    .line 596
    return-void
.end method

.method private onPageSwitchIn(I)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 584
    const-string v0, "VFRootView"

    const-string v1, "onPageSwitchIn"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 586
    :cond_0
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    .line 590
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    invoke-virtual {p0, v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    goto :goto_0
.end method

.method private onPageSwitchOut()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 578
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V

    .line 579
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 580
    invoke-virtual {p0, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    .line 581
    return-void
.end method

.method private onPageSwitchOutInternal()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoViewAsync()V

    .line 572
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setDeleteMode(Z)V

    .line 575
    :cond_0
    return-void
.end method

.method private pauseAllVideoView()V
    .locals 3

    .prologue
    .line 371
    const-string v1, "VFRootView"

    const-string v2, "pauseAllVideoView()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 372
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/videofavorites/VideoTextureView;->pause()V

    goto :goto_1

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V

    .line 379
    return-void
.end method

.method private removePlaybackMessages()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    return-void
.end method

.method private restartVideoViews()V
    .locals 3

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoView()V

    .line 708
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 709
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resumeAllVideoView()V
    .locals 3

    .prologue
    .line 382
    const-string v1, "VFRootView"

    const-string v2, "resumeAllVideoView()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 383
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    goto :goto_1

    .line 389
    :cond_1
    return-void
.end method

.method public static final sendDataUpdateBroadcast(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.videofavorites.DATA_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 905
    return-void
.end method

.method private sendRefreshBroadcast()V
    .locals 2

    .prologue
    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.videofavorites.REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 475
    return-void
.end method

.method private sendRefreshBroadcast(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x4

    .line 196
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    if-nez p1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast()V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setDeleteMode(Z)V
    .locals 6
    .parameter "isDelete"

    .prologue
    .line 669
    const-string v3, "VFRootView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDeleteMode(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoViewAsync()V

    .line 671
    iput-boolean p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    .line 672
    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIcons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 673
    iget v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIconId:I

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIcons:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->findAllViewsById(ILjava/util/ArrayList;)V

    .line 675
    iget-boolean v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 676
    .local v2, visibility:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIcons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 677
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 675
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #v:Landroid/view/View;
    .end local v2           #visibility:I
    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    .line 679
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #visibility:I
    :cond_1
    return-void
.end method

.method private setEditButtonStatus(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 289
    const-string v1, "VFRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seteditButtonsStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, edit:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    return-void
.end method

.method private setRecordButtonStatus(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 280
    const-string v1, "VFRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordButtonStatus():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, recordBtn:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method private showVideoAndRandomStrart()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    .line 413
    iget-object v8, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 414
    .local v0, availableVideos:I
    if-le v0, v9, :cond_1

    move v8, v9

    :goto_0
    iget v10, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    sub-int v1, v8, v10

    .line 416
    .local v1, count:I
    const-string v8, "VFRootView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showVideoAndRandomStrart, available:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Active"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " count:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-gtz v1, :cond_2

    .line 469
    :cond_0
    :goto_1
    return-void

    .end local v1           #count:I
    :cond_1
    move v8, v0

    .line 414
    goto :goto_0

    .line 423
    .restart local v1       #count:I
    :cond_2
    const/4 v6, 0x6

    .line 426
    .local v6, trial:I
    :cond_3
    iget-object v8, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRandom:Ljava/util/Random;

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 427
    .local v4, r:I
    iget-object v8, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/videofavorites/RemoteVideoView;

    .line 428
    .local v7, v:Lcom/mediatek/videofavorites/RemoteVideoView;
    add-int/lit8 v6, v6, -0x1

    .line 429
    if-nez v6, :cond_4

    .line 430
    const-string v8, "VFRootView"

    const-string v9, "cannot find a different video after trying"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 433
    :cond_4
    invoke-virtual {v7}, Lcom/mediatek/videofavorites/RemoteVideoView;->isUriAvailable()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v7}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->isInActiveList(Lcom/mediatek/videofavorites/RemoteVideoView;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 435
    invoke-virtual {v7}, Lcom/mediatek/videofavorites/RemoteVideoView;->getUriPath()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 437
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 439
    invoke-virtual {v7}, Lcom/mediatek/videofavorites/RemoteVideoView;->getUriScheme()Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, scheme:Ljava/lang/String;
    const-string v8, "android.resource"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 441
    const-string v8, "VFRootView"

    const-string v9, "file is not found"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast()V

    goto :goto_1

    .line 448
    .end local v2           #f:Ljava/io/File;
    .end local v5           #scheme:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v7, v8}, Lcom/mediatek/videofavorites/VideoTextureView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 449
    iget-object v8, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v7, v8}, Lcom/mediatek/videofavorites/VideoTextureView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 450
    invoke-virtual {v7}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v8

    if-nez v8, :cond_6

    .line 451
    const-string v8, "VFRootView"

    const-string v10, "openVideo()"

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v7}, Lcom/mediatek/videofavorites/RemoteVideoView;->openVideo()V

    .line 455
    :cond_6
    const-string v8, "VFRootView"

    const-string v10, "start()"

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v7}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    .line 458
    invoke-virtual {v7}, Lcom/mediatek/videofavorites/VideoTextureView;->isInErrorState()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 459
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/mediatek/videofavorites/RemoteVideoView;->setVisibility(I)V

    .line 465
    :goto_2
    const/4 v8, 0x1

    if-le v1, v8, :cond_0

    .line 466
    iget-object v8, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object v8, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 461
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/mediatek/videofavorites/RemoteVideoView;->setVisibility(I)V

    .line 462
    invoke-direct {p0, v7}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->addVideoToActiveList(Lcom/mediatek/videofavorites/RemoteVideoView;)V

    goto :goto_2
.end method

.method private stopAllVideoView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 348
    const-string v2, "VFRootView"

    const-string v3, "stopAllVideoView()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V

    .line 350
    iget v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    if-nez v2, :cond_0

    .line 368
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 355
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aget-object v1, v2, v0

    .line 356
    .local v1, v:Lcom/mediatek/videofavorites/VideoTextureView;
    if-nez v1, :cond_1

    .line 354
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/videofavorites/VideoTextureView;->pause()V

    .line 360
    invoke-virtual {v1, v4}, Lcom/mediatek/videofavorites/VideoTextureView;->seekTo(I)V

    .line 361
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 363
    invoke-virtual {v1}, Lcom/mediatek/videofavorites/VideoTextureView;->stopPlayback()V

    goto :goto_2

    .line 365
    .end local v1           #v:Lcom/mediatek/videofavorites/VideoTextureView;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V

    .line 366
    iput v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    .line 367
    const-string v2, "VFRootView"

    const-string v3, "stopAllVideoView() done"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopAllVideoViewAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 327
    const-string v2, "VFRootView"

    const-string v3, "stopAllVideoView()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V

    .line 329
    iget v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    if-nez v2, :cond_0

    .line 345
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    aget-object v1, v2, v0

    .line 335
    .local v1, v:Lcom/mediatek/videofavorites/VideoTextureView;
    if-nez v1, :cond_1

    .line 333
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/videofavorites/VideoTextureView;->pause()V

    .line 339
    invoke-virtual {v1, v4}, Lcom/mediatek/videofavorites/VideoTextureView;->seekTo(I)V

    .line 340
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 342
    invoke-virtual {v1}, Lcom/mediatek/videofavorites/VideoTextureView;->stopPlaybackAsync()V

    goto :goto_2

    .line 344
    .end local v1           #v:Lcom/mediatek/videofavorites/VideoTextureView;
    :cond_2
    iput v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActiveCount:I

    goto :goto_0
.end method

.method private switchDeleteMode()V
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setDeleteMode(Z)V

    .line 663
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    if-nez v0, :cond_0

    .line 664
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    .line 666
    :cond_0
    return-void

    .line 662
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uninstallIntentFilter()V
    .locals 3

    .prologue
    .line 230
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstallIntentFilter(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsListeningIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsListeningIntent:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsListeningIntent:Z

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public enterAppwidgetScreen()V
    .locals 2

    .prologue
    .line 620
    const-string v0, "VFRootView"

    const-string v1, "enterAppwidgetScreen()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->onPageSwitchIn()V

    .line 624
    return-void
.end method

.method public getPermittedCount()I
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x5

    return v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mScreenIndex:I

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mWidgetId:I

    return v0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    return v0
.end method

.method public leaveAppwidgetScreen()V
    .locals 2

    .prologue
    .line 613
    const-string v0, "VFRootView"

    const-string v1, "leaveAppwidgetScreen()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->onPageSwitchOut()V

    .line 617
    return-void
.end method

.method public moveIn(I)V
    .locals 0
    .parameter "curScreen"

    .prologue
    .line 610
    return-void
.end method

.method public moveOut(I)Z
    .locals 1
    .parameter "curScreen"

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 738
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 740
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 741
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attched again after onResume, remain in current State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRandom:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRandom:Ljava/util/Random;

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 750
    const-string v0, "VFRootView"

    const-string v1, "Failed to set onChildViewChangeListener"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->installIntentFilter()V

    .line 756
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 757
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    if-ne v0, v3, :cond_3

    .line 758
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast(I)V

    .line 764
    :goto_2
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    goto :goto_0

    .line 752
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_1

    .line 762
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRefreshWhenBackToLauncher:Z

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 683
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewId clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteModeViewId:I

    if-ne v0, v1, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->switchDeleteMode()V

    .line 687
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 767
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->uninstallIntentFilter()V

    .line 769
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoView()V

    .line 770
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    .line 772
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 775
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 844
    .local v0, action:I
    and-int/lit16 v2, v0, 0xff

    sparse-switch v2, :sswitch_data_0

    .line 861
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :sswitch_0
    return v1

    .line 846
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mLastY:F

    goto :goto_0

    .line 850
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mLastY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_1

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPauseWhenShown(I)V
    .locals 2
    .parameter "curScreen"

    .prologue
    .line 544
    const-string v0, "VFRootView"

    const-string v1, "onPauseWhenShown()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoViewAsync()V

    .line 546
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setDeleteMode(Z)V

    .line 549
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    .line 550
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 632
    return-void
.end method

.method public onResumeWhenShown(I)V
    .locals 3
    .parameter "curScreen"

    .prologue
    const/4 v2, 0x0

    .line 553
    const-string v0, "VFRootView"

    const-string v1, "onResumeWhenShown()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 555
    iput-boolean v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    .line 557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    .line 558
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRefreshWhenBackToLauncher:Z

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "VFRootView"

    const-string v1, "enqueue sendRefreshBroadcast"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast(I)V

    .line 562
    iput-boolean v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRefreshWhenBackToLauncher:Z

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outSate"

    .prologue
    .line 628
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 867
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 874
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 876
    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 867
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDeleteIconId(I)V
    .locals 0
    .parameter "viewId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 703
    iput p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteIconId:I

    .line 704
    return-void
.end method

.method public setDeleteModeViewId(I)V
    .locals 3
    .parameter "viewId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 691
    iput p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mDeleteModeViewId:I

    .line 692
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 694
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 695
    const-string v1, "VFRootView"

    const-string v2, "delete view not found!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 496
    iput p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mScreenIndex:I

    .line 497
    return-void
.end method

.method public setState(I)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 504
    const-string v0, "VFRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iput p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    .line 506
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0
    .parameter "widgetId"

    .prologue
    .line 488
    iput p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mWidgetId:I

    .line 489
    return-void
.end method

.method public startCovered(I)V
    .locals 2
    .parameter "curScreen"

    .prologue
    .line 525
    const-string v0, "VFRootView"

    const-string v1, "startCovered()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    .line 527
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->onPageSwitchOut()V

    .line 528
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setDeleteMode(Z)V

    .line 531
    :cond_0
    return-void
.end method

.method public startDrag()V
    .locals 2

    .prologue
    .line 509
    const-string v0, "VFRootView"

    const-string v1, "startDrag()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoView()V

    .line 512
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    .line 513
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setDeleteMode(Z)V

    .line 516
    :cond_0
    return-void
.end method

.method public startPlayVideoRandomly(I)V
    .locals 4
    .parameter "delay"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 779
    const-string v0, "VFRootView"

    const-string v1, "startvideoplay"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V

    .line 782
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsUnmounting:Z

    if-eqz v0, :cond_0

    .line 783
    const-string v0, "VFRootView"

    const-string v1, "some media is ejecting, return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public stopCovered(I)V
    .locals 2
    .parameter "curScreen"

    .prologue
    .line 534
    iget v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 535
    const-string v0, "VFRootView"

    const-string v1, "stopCovered() ignored"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    const-string v0, "VFRootView"

    const-string v1, "stopCovered()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->onPageSwitchIn(I)V

    goto :goto_0
.end method

.method public stopDrag()V
    .locals 2

    .prologue
    .line 519
    const-string v0, "VFRootView"

    const-string v1, "stopDrag()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    .line 521
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setState(I)V

    .line 522
    return-void
.end method
