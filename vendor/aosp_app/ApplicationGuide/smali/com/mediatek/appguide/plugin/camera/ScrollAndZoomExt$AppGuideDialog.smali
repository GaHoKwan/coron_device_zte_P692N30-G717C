.class Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;
.super Landroid/app/Dialog;
.source "ScrollAndZoomExt.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppGuideDialog"
.end annotation


# static fields
.field private static final CLEAR_MOTION_DISABLE:I = 0x1

.field private static final CLEAR_MOTION_KEY:I = 0x6a4

.field private static final MULTI_SIM:I = 0x2

.field public static final SCROLL_IN_CAMERA:I = 0x0

.field public static final ZOOM_IN_CAMERA:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentStep:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsSmbPlugged:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mOkListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mPreview:Landroid/view/SurfaceView;

.field private mRightBtn:Landroid/widget/Button;

.field private mSetScreenSize:Z

.field private mTitle:Landroid/widget/TextView;

.field private final mVideoArray:[Ljava/lang/String;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;


# direct methods
.method public constructor <init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;Landroid/app/Activity;)V
    .locals 3
    .parameter
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 179
    iput-object p1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->this$0:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;

    .line 180
    const v0, 0x7f060002

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 133
    iput v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOrientation:I

    .line 134
    iput-boolean v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mSetScreenSize:Z

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "scroll_left_bar.mp4"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "zoom_in_and_out.mp4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mVideoArray:[Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;-><init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)V

    iput-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mNextListener:Landroid/view/View$OnClickListener;

    .line 157
    new-instance v0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$2;

    invoke-direct {v0, p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$2;-><init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)V

    iput-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOkListener:Landroid/view/View$OnClickListener;

    .line 170
    new-instance v0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$3;

    invoke-direct {v0, p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$3;-><init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)V

    iput-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 181
    iput-object p2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    return v0
.end method

.method static synthetic access$208(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->prepareVideo(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->releaseMediaPlayer()V

    return-void
.end method

.method private prepareVideo(I)V
    .locals 8
    .parameter "step"

    .prologue
    .line 279
    const-string v0, "ScrollAndZoomExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareVideo step = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 283
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->this$0:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;

    #getter for: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->access$600(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mVideoArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 284
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    const-string v0, "ScrollAndZoomExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 286
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 288
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0x6a4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 290
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->resizeSurfaceView()V

    .line 292
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "mMediaPlayer prepare()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v7

    .line 295
    .local v7, e:Ljava/io/IOException;
    const-string v0, "ScrollAndZoomExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to open file; error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    invoke-direct {p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->releaseMediaPlayer()V

    goto :goto_0

    .line 297
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 298
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "ScrollAndZoomExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media player is in illegal state; error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    invoke-direct {p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "releaseMediaPlayer"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->onBackPressed()V

    .line 311
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 217
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "onCompletion called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    .line 186
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 187
    .local v0, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mIsSmbPlugged:Z

    .line 188
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOrientation:I

    .line 190
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eq v2, v4, :cond_0

    .line 192
    const-string v2, "ScrollAndZoomExt"

    const-string v3, " fullscreen = false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 197
    :cond_0
    new-instance v1, Lcom/mediatek/pluginmanager/PluginLayoutInflater;

    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->this$0:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;

    #getter for: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->access$600(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/pluginmanager/PluginLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 198
    .local v1, inflater:Lcom/mediatek/pluginmanager/PluginLayoutInflater;
    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/pluginmanager/PluginLayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mView:Landroid/view/View;

    .line 200
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mView:Landroid/view/View;

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    .line 201
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 202
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mView:Landroid/view/View;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mTitle:Landroid/widget/TextView;

    .line 205
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    .line 206
    const-string v2, "ScrollAndZoomExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentStep = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mView:Landroid/view/View;

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mPreview:Landroid/view/SurfaceView;

    .line 209
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mHolder:Landroid/view/SurfaceHolder;

    .line 210
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 211
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 212
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->setContentView(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaplayer"

    .prologue
    .line 230
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "onPrepared called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 232
    return-void
.end method

.method public resizeSurfaceView()V
    .locals 9

    .prologue
    .line 315
    const-string v7, "ScrollAndZoomExt"

    const-string v8, "resizeSurfaceView()"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mSetScreenSize:Z

    if-eqz v7, :cond_0

    .line 339
    :goto_0
    return-void

    .line 319
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mSetScreenSize:Z

    .line 321
    iget-object v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v6

    .line 322
    .local v6, videoW:I
    iget-object v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    .line 323
    .local v4, videoH:I
    iget-object v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 324
    .local v3, screenW:I
    iget-object v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 325
    .local v1, screenH:I
    iget-object v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 327
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    int-to-float v7, v4

    int-to-float v8, v6

    div-float v5, v7, v8

    .line 328
    .local v5, videoScale:F
    int-to-float v7, v1

    int-to-float v8, v3

    div-float v2, v7, v8

    .line 329
    .local v2, screenScale:F
    cmpl-float v7, v2, v5

    if-lez v7, :cond_1

    .line 330
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 331
    int-to-float v7, v3

    mul-float/2addr v7, v5

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    const-string v7, "ScrollAndZoomExt"

    const-string v8, "screenScale > videoScale"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_1
    iget-object v7, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v7, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 334
    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    int-to-float v7, v1

    div-float/2addr v7, v5

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    const-string v7, "ScrollAndZoomExt"

    const-string v8, "screenScale < videoScale"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "surfaceholder"
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    .line 255
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "surfaceChanged called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x1

    .line 236
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "surfaceCreated called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mIsSmbPlugged:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOrientation:I

    if-eq v0, v2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mHolder:Landroid/view/SurfaceHolder;

    .line 243
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 244
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 245
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 247
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    iget v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->prepareVideo(I)V

    .line 251
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceholder"

    .prologue
    .line 260
    const-string v0, "ScrollAndZoomExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed called, mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mHolder:Landroid/view/SurfaceHolder;

    if-eq p1, v0, :cond_1

    .line 262
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "surfaceholder != mHolder, return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mIsSmbPlugged:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 273
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method
