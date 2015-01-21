.class public Lcom/mediatek/vlw/VideoEditor;
.super Landroid/app/Activity;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vlw/VideoEditor$SelectVideo;
    }
.end annotation


# static fields
.field private static final ACTION_PICK_FOLDER:Ljava/lang/String; = "com.mediatek.action.PICK_VIDEO_FOLDER"

.field private static final ACTION_SMARTBOOK_PLUG:Ljava/lang/String; = "android.intent.action.SMARTBOOK_PLUG"

.field private static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DIALOG_SELECT_VIDEO:I = 0x1

.field private static final EXTRA_SMARTBOOK_PLUG_STATE:Ljava/lang/String; = "state"

.field private static final FILE:Ljava/lang/String; = "file"

.field private static final HTML_BOLD:Ljava/lang/String; = "<b>"

.field private static final LEFT_BRACKET:Ljava/lang/String; = "("

.field private static final PICK_CAMERA_REQUEST:I = 0x2

.field private static final PICK_FOLDER_REQUEST:I = 0x1

.field private static final PICK_VIDEO_REQUEST:I = 0x0

.field private static final RIGHT_BRACKET:Ljava/lang/String; = ")"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x4

.field private static final STATE_PLAYING:I = 0x1

.field private static final STATE_PREPARED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoEditor"

.field private static final TYPE:Ljava/lang/String; = "video/*"

.field private static final VIDEO_LIVE_WALLPAPER_CLASS:Ljava/lang/String; = "com.mediatek.vlw.VideoLiveWallpaper"

.field private static final VIDEO_LIVE_WALLPAPER_PACKAGE:Ljava/lang/String; = "com.mediatek.vlw"


# instance fields
.field private mBucketId:Ljava/lang/String;

.field private final mCallback:Lcom/mediatek/vlw/VLWMediaController$Callback;

.field private mClosed:Z

.field private mCurrentPos:I

.field private mCurrentState:I

.field private mEndTime:I

.field private mFolderInfo:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHavaUnmountedData:Z

.field private mIsOpening:Z

.field private mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

.field private mMediaController:Lcom/mediatek/vlw/VLWMediaController;

.field private mMode:I

.field private final mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPlayer:Landroid/widget/VideoView;

.field private mPrevBucketId:Ljava/lang/String;

.field private mPrevCurrentPos:I

.field private mPrevEndTime:I

.field private mPrevStartTime:I

.field private mPrevUri:Landroid/net/Uri;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetWallpaper:Landroid/widget/Button;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mStartTime:I

.field private mTargetState:I

.field private mUnMounted:Z

.field private mUri:Landroid/net/Uri;

.field private mUriInvalid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEditorReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoTitle:Landroid/widget/TextView;

.field private mWallpaperIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    sget-object v0, Lcom/mediatek/vlw/Utils$LoopMode;->ALL:Lcom/mediatek/vlw/Utils$LoopMode;

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

    .line 159
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    .line 160
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/mediatek/vlw/VideoEditor$1;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoEditor$1;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCallback:Lcom/mediatek/vlw/VLWMediaController$Callback;

    .line 177
    new-instance v0, Lcom/mediatek/vlw/VideoEditor$2;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoEditor$2;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 216
    new-instance v0, Lcom/mediatek/vlw/VideoEditor$3;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoEditor$3;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 264
    new-instance v0, Lcom/mediatek/vlw/VideoEditor$4;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoEditor$4;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 338
    new-instance v0, Lcom/mediatek/vlw/VideoEditor$5;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoEditor$5;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mVideoEditorReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v0, Lcom/mediatek/vlw/VideoEditor$6;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoEditor$6;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1166
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/vlw/VideoEditor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoEditor;->updatePausePlay(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/vlw/VideoEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/vlw/VideoEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/vlw/VideoEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/vlw/VideoEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/vlw/VideoEditor;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/mediatek/vlw/VideoEditor;->clear(ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->startPlayback()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/vlw/VideoEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/vlw/VideoEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/vlw/VideoEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoEditor;->mIsOpening:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/vlw/VideoEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoEditor;->mIsOpening:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mediatek/vlw/VideoEditor;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->play()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/vlw/VideoEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/vlw/VideoEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/vlw/VideoEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/vlw/VideoEditor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/vlw/VideoEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->stopPlayback()V

    return-void
.end method

.method static synthetic access$2202(Lcom/mediatek/vlw/VideoEditor;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->loadSettings()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/vlw/VideoEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoEditor;->mHavaUnmountedData:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/mediatek/vlw/VideoEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoEditor;->mHavaUnmountedData:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevBucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->restoreMountedData()V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/vlw/VideoEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUnMounted:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/vlw/VideoEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoEditor;->mUnMounted:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->updateInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->saveUnmountedData()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/vlw/VideoEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mVideoTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/vlw/VideoEditor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/vlw/VideoEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/vlw/VideoEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/vlw/VideoEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/vlw/VideoEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/Utils$LoopMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/vlw/VideoEditor;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/vlw/VideoEditor;->clear(ZZZ)V

    return-void
.end method

.method private checkThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 814
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 815
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v0, 0x0

    .line 817
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v4, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 818
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v0

    .line 833
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 840
    :goto_0
    const/4 v2, 0x0

    .line 841
    .local v2, findInvalidVideo:Z
    if-nez v0, :cond_4

    .line 842
    const-string v6, "VideoEditor"

    const-string v7, "thumbnail bitmap == null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v2, 0x1

    .line 854
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 855
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 856
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    .line 858
    :cond_1
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 859
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_2
    const-string v6, "VideoEditor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thumbnail find unsuport video: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 865
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    .line 866
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

    iget v7, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    iget-object v8, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    invoke-static {v6, v7, v8, v9}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    .line 867
    iget v6, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    if-ltz v6, :cond_5

    .line 868
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 869
    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v6}, Lcom/mediatek/vlw/VideoEditor;->checkThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 876
    .end local p2
    :cond_3
    :goto_2
    return-object p2

    .line 834
    .end local v2           #findInvalidVideo:Z
    .restart local p2
    :catch_0
    move-exception v1

    .line 836
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v6, "VideoEditor"

    const-string v7, "error when release retriver"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 821
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v6, "VideoEditor"

    const-string v7, "corrupt video file "

    invoke-static {v6, v7, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 833
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 834
    :catch_2
    move-exception v1

    .line 836
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v6, "VideoEditor"

    const-string v7, "error when release retriver"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 822
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 824
    .local v1, ex:Ljava/lang/SecurityException;
    :try_start_4
    const-string v6, "VideoEditor"

    const-string v7, "corrupt video file "

    invoke-static {v6, v7, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 833
    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 834
    :catch_4
    move-exception v1

    .line 836
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v6, "VideoEditor"

    const-string v7, "error when release retriver"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 825
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v1

    .line 827
    .local v1, ex:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v6, "VideoEditor"

    const-string v7, "corrupt video file "

    invoke-static {v6, v7, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 833
    :try_start_7
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 834
    :catch_6
    move-exception v1

    .line 836
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v6, "VideoEditor"

    const-string v7, "error when release retriver"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 828
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_7
    move-exception v1

    .line 830
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v6, "VideoEditor"

    const-string v7, "error: "

    invoke-static {v6, v7, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 833
    :try_start_9
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    .line 834
    :catch_8
    move-exception v1

    .line 836
    const-string v6, "VideoEditor"

    const-string v7, "error when release retriver"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 832
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    .line 833
    :try_start_a
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9

    .line 837
    :goto_3
    throw v6

    .line 834
    :catch_9
    move-exception v1

    .line 836
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    const-string v7, "VideoEditor"

    const-string v8, "error when release retriver"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 845
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v2       #findInvalidVideo:Z
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 846
    .local v5, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 847
    .local v3, height:I
    const-string v6, "VideoEditor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thumbnail bitmap.getWidth() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",bitmap.getHeight()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 851
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 871
    .end local v3           #height:I
    .end local v5           #width:I
    :cond_5
    const-string v6, "VideoEditor"

    const-string v7, "Error: No valid videos, the folder cann\'t be set as wallpaper"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkUri()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1274
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return v0

    .line 1277
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clear(ZZ)V
    .locals 4
    .parameter "clearPrefs"
    .parameter "clearBucketId"

    .prologue
    const/4 v3, 0x0

    .line 1002
    if-eqz p2, :cond_0

    .line 1003
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    .line 1006
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 1007
    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    .line 1008
    const v1, 0x927c0

    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    .line 1009
    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    .line 1010
    if-eqz p1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 1013
    const-string v1, "VideoEditor"

    const-string v2, "we lost the shared preferences"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_1
    :goto_0
    return-void

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1018
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "bucketId"

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1019
    const-string v1, "uri"

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1020
    const-string v1, "start"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1021
    const-string v1, "end"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1022
    const-string v1, "pos"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1023
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1025
    const-string v1, "VideoEditor"

    const-string v2, "clear(), reset the default state into shared_prefs"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clear(ZZZ)V
    .locals 1
    .parameter "clearPrefs"
    .parameter "clearBucketId"
    .parameter "clearList"

    .prologue
    .line 987
    if-eqz p3, :cond_1

    .line 988
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 995
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/vlw/VideoEditor;->clear(ZZ)V

    .line 996
    return-void
.end method

.method private findLiveWallpaper()V
    .locals 15

    .prologue
    .line 1032
    iget-object v12, p0, Lcom/mediatek/vlw/VideoEditor;->mWallpaperIntent:Landroid/content/Intent;

    if-eqz v12, :cond_0

    .line 1033
    iget-object v12, p0, Lcom/mediatek/vlw/VideoEditor;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1034
    .local v11, vlw:Landroid/content/ComponentName;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.mediatek.vlw"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.mediatek.vlw.VideoLiveWallpaper"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1073
    .end local v11           #vlw:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 1040
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1041
    .local v9, pkgmgr:Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.service.wallpaper.WallpaperService"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x80

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1045
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1046
    .local v7, listSize:I
    const/4 v10, 0x0

    .line 1047
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 1048
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    const/4 v4, 0x0

    .line 1049
    .local v4, info:Landroid/app/WallpaperInfo;
    const/4 v8, 0x0

    .line 1050
    .local v8, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1051
    .local v1, className:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    move-object v5, v4

    .end local v4           #info:Landroid/app/WallpaperInfo;
    .local v5, info:Landroid/app/WallpaperInfo;
    :goto_1
    if-ge v3, v7, :cond_2

    .line 1052
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 1053
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1055
    :try_start_0
    new-instance v4, Landroid/app/WallpaperInfo;

    invoke-direct {v4, p0, v10}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1064
    .end local v5           #info:Landroid/app/WallpaperInfo;
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1065
    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    .line 1066
    const-string v12, "com.mediatek.vlw"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "com.mediatek.vlw.VideoLiveWallpaper"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1068
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.service.wallpaper.WallpaperService"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/mediatek/vlw/VideoEditor;->mWallpaperIntent:Landroid/content/Intent;

    .line 1069
    iget-object v12, p0, Lcom/mediatek/vlw/VideoEditor;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v12, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1056
    .end local v4           #info:Landroid/app/WallpaperInfo;
    .restart local v5       #info:Landroid/app/WallpaperInfo;
    :catch_0
    move-exception v2

    .line 1057
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "VideoEditor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping wallpaper "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 1051
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5           #info:Landroid/app/WallpaperInfo;
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #info:Landroid/app/WallpaperInfo;
    .restart local v5       #info:Landroid/app/WallpaperInfo;
    goto :goto_1

    .line 1059
    :catch_1
    move-exception v2

    .line 1060
    .local v2, e:Ljava/io/IOException;
    const-string v12, "VideoEditor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping wallpaper "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 1061
    .end local v5           #info:Landroid/app/WallpaperInfo;
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    goto :goto_2

    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #info:Landroid/app/WallpaperInfo;
    .restart local v5       #info:Landroid/app/WallpaperInfo;
    :cond_2
    move-object v4, v5

    .end local v5           #info:Landroid/app/WallpaperInfo;
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    goto/16 :goto_0
.end method

.method private isInPlaybackState()Z
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmartBookPluggedIn()Z
    .locals 2

    .prologue
    .line 1388
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1389
    .local v0, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v1

    return v1
.end method

.method private loadSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 923
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 926
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 927
    const-string v3, "VideoEditor"

    const-string v4, "has no SharedPreferences, use default"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 929
    iput v7, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    .line 930
    const v3, 0x927c0

    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    .line 931
    iput v7, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    .line 948
    :goto_0
    const-string v3, "VideoEditor"

    const-string v4, "restore from preference, bucket id %s, Uri %s, start time %d, end time %d, paused position %d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget v7, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 954
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    .line 955
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 956
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 957
    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    .line 962
    .end local v0           #index:I
    :cond_0
    return-void

    .line 933
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "bucketId"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    .line 934
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, uriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 937
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "start"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    .line 939
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "end"

    const-wide/32 v5, 0x927c0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    .line 942
    iget v3, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    goto/16 :goto_0

    .line 955
    .end local v2           #uriString:Ljava/lang/String;
    .restart local v0       #index:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private pause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 676
    const-string v1, "VideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() mCurrentPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCurrentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mTargetState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 682
    .local v0, pos:I
    if-eqz v0, :cond_1

    .end local v0           #pos:I
    :goto_0
    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    .line 683
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    if-eqz v1, :cond_2

    .line 684
    iget v1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    if-ne v1, v4, :cond_0

    .line 685
    iput v5, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 686
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VLWMediaController;->pause()V

    .line 695
    :cond_0
    :goto_1
    return-void

    .line 682
    .restart local v0       #pos:I
    :cond_1
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    goto :goto_0

    .line 689
    .end local v0           #pos:I
    :cond_2
    iget v1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    if-ne v1, v4, :cond_3

    .line 690
    iput v5, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 691
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 693
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/vlw/VideoEditor;->updatePausePlay(Z)V

    goto :goto_1
.end method

.method private play()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 699
    const-string v0, "VideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() mCurrentPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTargetState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    if-eqz v0, :cond_2

    .line 705
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    if-ne v0, v3, :cond_1

    .line 706
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 708
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoEditor$7;

    invoke-direct {v1, p0}, Lcom/mediatek/vlw/VideoEditor$7;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 717
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->play()V

    goto :goto_0

    .line 720
    :cond_2
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    if-eq v0, v3, :cond_3

    .line 721
    iput v3, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 722
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 724
    :cond_3
    invoke-direct {p0, v3}, Lcom/mediatek/vlw/VideoEditor;->updatePausePlay(Z)V

    goto :goto_0
.end method

.method private queryTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 886
    if-nez p2, :cond_1

    .line 887
    const-string v3, "VideoEditor"

    const-string v4, "Uri is null, return null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v2, 0x0

    .line 915
    :cond_0
    :goto_0
    return-object v2

    .line 890
    :cond_1
    const/4 v2, 0x0

    .line 892
    .local v2, title:Ljava/lang/String;
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query Uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 896
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 897
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 906
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 912
    :goto_1
    if-nez v2, :cond_0

    .line 913
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 909
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "VideoEditor"

    const-string v4, "error when release retriver"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 898
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 900
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v3, "VideoEditor"

    const-string v4, "corrupt video file "

    invoke-static {v3, v4, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 907
    :catch_2
    move-exception v0

    .line 909
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "VideoEditor"

    const-string v4, "error when release retriver"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 901
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 903
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v3, "VideoEditor"

    const-string v4, "error: "

    invoke-static {v3, v4, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 906
    :try_start_5
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 907
    :catch_4
    move-exception v0

    .line 909
    const-string v3, "VideoEditor"

    const-string v4, "error when release retriver"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 905
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 906
    :try_start_6
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 910
    :goto_2
    throw v3

    .line 907
    :catch_5
    move-exception v0

    .line 909
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v4, "VideoEditor"

    const-string v5, "error when release retriver"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private queryTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 782
    if-nez p1, :cond_1

    .line 783
    const-string v1, "VideoEditor"

    const-string v3, "Uri is null, return null"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    :goto_0
    return-object v8

    .line 786
    :cond_1
    const/4 v8, 0x0

    .line 787
    .local v8, title:Ljava/lang/String;
    const/4 v6, 0x0

    .line 790
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    .line 791
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 792
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 793
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 794
    const-string v1, "_display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 796
    .local v7, displayIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 802
    .end local v7           #displayIndex:I
    :goto_1
    if-eqz v6, :cond_0

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 799
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 802
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private queryTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bucketId"

    .prologue
    .line 760
    const-string v1, "VideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryTitle, bucketId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, title:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/mediatek/vlw/Utils;->queryFolderInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_0

    .line 764
    iget v1, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    if-ltz v1, :cond_1

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_0
    :goto_0
    return-object v0

    .line 768
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resetInfoPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mSetWallpaper:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mSetWallpaper:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 628
    const-string v0, "VideoEditor"

    const-string v1, "resetInfoPanel, show folder info"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iput-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    .line 633
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 637
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;

    .line 638
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_2
    :goto_0
    return-void

    .line 641
    :cond_3
    const-string v0, "VideoEditor"

    const-string v1, "resetInfoPanel, show media controller"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 643
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iput-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;

    .line 647
    :cond_4
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    if-nez v0, :cond_2

    .line 648
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vlw/VLWMediaController;

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    .line 649
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 651
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->setAnchorView(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mCallback:Lcom/mediatek/vlw/VLWMediaController$Callback;

    invoke-virtual {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->addCallback(Lcom/mediatek/vlw/VLWMediaController$Callback;)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0
.end method

.method private restoreMountedData()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 618
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevStartTime:I

    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    .line 619
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevEndTime:I

    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    .line 620
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevCurrentPos:I

    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    .line 621
    return-void
.end method

.method private restoreSavedInstance(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 572
    const-string v4, "uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, uriString:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 574
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 575
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 576
    iput-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 578
    const-string v4, "VideoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() restore saved uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, BucketId:Ljava/lang/String;
    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    .line 585
    const-string v4, "VideoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() restore saved BucketId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, pos:I
    const-string v4, "start"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 589
    iget v4, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    if-eq v4, v1, :cond_1

    if-eqz v1, :cond_1

    .line 590
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    .line 592
    const-string v4, "VideoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() restore saved start time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_1
    const-string v4, "end"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 596
    iget v4, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    if-eq v4, v1, :cond_2

    const v4, 0x927c0

    if-eq v1, v4, :cond_2

    .line 597
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    .line 599
    const-string v4, "VideoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() restore saved end time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_2
    iget v4, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    iput v4, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    .line 604
    return-void
.end method

.method private saveSettings()V
    .locals 6

    .prologue
    .line 971
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 972
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "bucketId"

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 973
    const-string v1, "uri"

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 974
    const-string v1, "start"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 975
    const-string v1, "end"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 976
    const-string v1, "pos"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 977
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 980
    const-string v1, "VideoEditor"

    const-string v2, "save settings, bucketId %s, Uri %s, start time %d, end time %d, paused position %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void
.end method

.method private saveUnmountedData()V
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevBucketId:Ljava/lang/String;

    .line 608
    const-string v0, "VideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUnmountedData, mPrevBucketId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevUri:Landroid/net/Uri;

    .line 610
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevStartTime:I

    .line 611
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevEndTime:I

    .line 612
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPrevCurrentPos:I

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/vlw/VideoEditor;->mHavaUnmountedData:Z

    .line 614
    return-void
.end method

.method private startPlayback()V
    .locals 3

    .prologue
    .line 734
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p0, v1}, Lcom/mediatek/vlw/VideoEditor;->checkThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 736
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->resetInfoPanel()V

    .line 737
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 738
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/vlw/VideoEditor;->mIsOpening:Z

    .line 740
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 741
    .local v0, hd:Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    new-instance v2, Lcom/mediatek/vlw/VideoEditor$8;

    invoke-direct {v2, p0}, Lcom/mediatek/vlw/VideoEditor$8;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 748
    .end local v0           #hd:Landroid/view/SurfaceHolder;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->updateInfo()V

    .line 749
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 752
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 755
    :cond_0
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    .line 756
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 757
    return-void
.end method

.method private updateInfo()V
    .locals 7

    .prologue
    .line 1285
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1287
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    .line 1289
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/mediatek/vlw/Utils;->queryFolderInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, info:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1291
    .local v0, count:I
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1292
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1294
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1297
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 1299
    .local v2, span:Landroid/text/Spanned;
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/vlw/VideoEditor;->queryTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/vlw/VideoEditor$9;

    invoke-direct {v5, p0, v3, v2}, Lcom/mediatek/vlw/VideoEditor$9;-><init>(Lcom/mediatek/vlw/VideoEditor;Ljava/lang/String;Landroid/text/Spanned;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1325
    .end local v0           #count:I
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #span:Landroid/text/Spanned;
    :goto_0
    return-void

    .line 1314
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/mediatek/vlw/VideoEditor;->queryTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1315
    .restart local v3       #title:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/vlw/VideoEditor$10;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/vlw/VideoEditor$10;-><init>(Lcom/mediatek/vlw/VideoEditor;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updatePausePlay(Z)V
    .locals 2
    .parameter "isPlaying"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 659
    if-eqz p1, :cond_1

    .line 660
    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    .line 661
    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 662
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    .line 667
    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mTargetState:I

    .line 668
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public captureVideo(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1346
    invoke-static {p0}, Lcom/mediatek/vlw/Utils;->queryResolutionRatio(Landroid/content/Context;)F

    move-result v1

    .line 1347
    .local v1, ratio:F
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To captureVideo, ratio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v3, "identity"

    const-string v4, "com.mediatek.vlw"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    const-string v3, "ratio"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 1352
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 1353
    .local v2, wrapperIntent:Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1354
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1078
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult request code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 1082
    const/4 v1, 0x0

    .line 1083
    .local v1, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 1147
    const-string v3, "VideoEditor"

    const-string v4, "unknown request"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1085
    .restart local v1       #uri:Landroid/net/Uri;
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1088
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1090
    :cond_1
    invoke-direct {p0, v6, v7, v7}, Lcom/mediatek/vlw/VideoEditor;->clear(ZZZ)V

    .line 1091
    const/4 v2, 0x0

    .line 1092
    .local v2, videoPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/vlw/Utils;->isDefaultVideo(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1093
    invoke-static {p0, v1}, Lcom/mediatek/vlw/Utils;->getVideoPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    if-eqz v2, :cond_2

    .line 1095
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 1101
    :cond_2
    :goto_1
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PICK_VIDEO_REQUEST, uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->startPlayback()V

    goto :goto_0

    .line 1098
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1099
    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 1108
    .end local v2           #videoPath:Ljava/lang/String;
    :pswitch_1
    const-string v3, "bucketId"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, bucketId:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1110
    iput-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    .line 1111
    invoke-static {p0, v0}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    .line 1112
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1113
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 1115
    .restart local v1       #uri:Landroid/net/Uri;
    iput v6, p0, Lcom/mediatek/vlw/VideoEditor;->mMode:I

    .line 1117
    :cond_4
    if-eqz v1, :cond_0

    .line 1119
    invoke-direct {p0, v6, v6}, Lcom/mediatek/vlw/VideoEditor;->clear(ZZ)V

    .line 1120
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 1121
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1123
    :cond_5
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PICK_FOLDER_REQUEST,  bucketId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " videos selected, uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 1127
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->startPlayback()V

    goto/16 :goto_0

    .line 1133
    .end local v0           #bucketId:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1134
    if-eqz v1, :cond_6

    invoke-static {p0, v1}, Lcom/mediatek/vlw/Utils;->getVideoPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1136
    .restart local v2       #videoPath:Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1138
    invoke-direct {p0, v6, v7}, Lcom/mediatek/vlw/VideoEditor;->clear(ZZ)V

    .line 1139
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    .line 1140
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PICK_CAMERA_REQUEST, uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->startPlayback()V

    goto/16 :goto_0

    .line 1134
    .end local v2           #videoPath:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1370
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1374
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 437
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 438
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 439
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 440
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mWallpaperIntent:Landroid/content/Intent;

    .line 441
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->isSmartBookPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    const-string v1, "VideoEditor"

    const-string v2, "oncreate(),Smart book is plug in"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v1, "smartbook_vlw"

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    .line 447
    :goto_0
    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    .line 448
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 449
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 450
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 452
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mVideoTitle:Landroid/widget/TextView;

    .line 453
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    .line 454
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 455
    const v1, 0x7f0a000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mSetWallpaper:Landroid/widget/Button;

    .line 457
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->loadSettings()V

    .line 460
    if-eqz p1, :cond_0

    .line 461
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoEditor;->restoreSavedInstance(Landroid/os/Bundle;)V

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->startPlayback()V

    .line 466
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 467
    const-string v1, "VideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() register receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 445
    :cond_2
    const-string v1, "vlw"

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 1155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1156
    new-instance v0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/vlw/VideoEditor$SelectVideo;-><init>(Lcom/mediatek/vlw/VideoEditor;Lcom/mediatek/vlw/VideoEditor$1;)V

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1159
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    const-string v0, "VideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() unregister receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->stopPlayback()V

    .line 544
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 545
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 490
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->pause()V

    .line 496
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 505
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->updateTrimTime()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->pause()V

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->resetInfoPanel()V

    .line 522
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->updateInfo()V

    .line 523
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 551
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 552
    .local v0, pos:I
    if-eqz v0, :cond_1

    .end local v0           #pos:I
    :goto_0
    iput v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    .line 554
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VLWMediaController;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "VideoEditor"

    const-string v2, "Player in edit mode"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget v1, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    iput v1, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    .line 559
    :cond_0
    const-string v1, "uri"

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "start"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string v1, "end"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v1, "pos"

    iget v2, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const-string v1, "bucketId"

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "VideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState() mUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/vlw/VideoEditor;->mStartTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEndTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/vlw/VideoEditor;->mEndTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void

    .line 552
    .restart local v0       #pos:I
    :cond_1
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I

    goto/16 :goto_0
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1382
    return-void
.end method

.method public selectDefaultVideo(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/vlw/VideoChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1339
    .local v0, pickIntent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1340
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1341
    return-void
.end method

.method public selectVideo(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoEditor;->mClosed:Z

    if-nez v0, :cond_0

    .line 1331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1333
    :cond_0
    return-void
.end method

.method public setLiveWallpaper(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 1239
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->checkUri()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1240
    const v2, 0x7f08000a

    invoke-static {p0, v2, v5}, Lcom/mediatek/vlw/Utils;->showInfo(Landroid/content/Context;IZ)V

    .line 1242
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mSetWallpaper:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1270
    :goto_0
    return-void

    .line 1246
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->saveSettings()V

    .line 1248
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->findLiveWallpaper()V

    .line 1249
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor;->mWallpaperIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 1250
    const-string v2, "VideoEditor"

    const-string v3, "Can not find Video Live Wallpaper package."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->stopPlayback()V

    .line 1257
    :try_start_0
    const-string v2, "VideoEditor"

    const-string v3, "Set Video Live Wallpaper."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 1259
    .local v1, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 1261
    const/high16 v2, 0x3f00

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 1262
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1264
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    .end local v1           #wpm:Landroid/app/WallpaperManager;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1269
    iput-boolean v5, p0, Lcom/mediatek/vlw/VideoEditor;->mClosed:Z

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VideoEditor"

    const-string v3, "Failure setting wallpaper"

    invoke-static {v2, v3, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updatePausePlay(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1360
    iget v0, p0, Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1361
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->pause()V

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor;->play()V

    goto :goto_0
.end method
