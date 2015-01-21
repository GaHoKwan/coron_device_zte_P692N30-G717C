.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
.implements Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieActivity$SmartBookBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final COOKIE:Ljava/lang/String; = "Cookie"

.field public static final KEY_COME_FROM_CAMERA:Ljava/lang/String; = "come-from-camera"

.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field private static final LOG:Z = true

.field private static final SCREEN_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "SCREEN_ORIENTATION_LANDSCAPE"

.field private static final STREAMING_VIDEO_TITLE:Ljava/lang/String; = "STREAMING_VIDEO_TITLE"

.field private static final TAG:Ljava/lang/String; = "Gallery2/MovieActivity"

.field private static final VIDEO_CONTENT_SCHEMA:Ljava/lang/String; = "content"

.field private static final VIDEO_FILE_SCHEMA:Ljava/lang/String; = "file"

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/*"

.field private static final VIDEO_SDP_MIME_TYPE:Ljava/lang/String; = "application/sdp"

.field private static final VIDEO_SDP_TITLE:Ljava/lang/String; = "rtsp://"


# instance fields
.field private mBeamVideoIsPlaying:Z

.field private mChangeAudioTrackMenu:Landroid/view/MenuItem;

.field private mControlResumed:Z

.field private mFinishOnCompletion:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsLandscape:Z

.field private mIsSmartBookPlugged:Z

.field private mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

.field private mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

.field public mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

.field private mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mPauseVideoRunnable:Ljava/lang/Runnable;

.field private final mPlayVideoRunnable:Ljava/lang/Runnable;

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResumed:Z

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mShareMenu:Landroid/view/MenuItem;

.field private mShareProvider:Landroid/widget/ShareActionProvider;

.field private final mSmartBookReceiver:Landroid/content/BroadcastReceiver;

.field private mTreatUpAsBack:Z

.field private mVideoTitle:Ljava/lang/String;

.field private onBackKeyPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsLandscape:Z

    .line 101
    iput-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mVideoTitle:Ljava/lang/String;

    .line 104
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsSmartBookPlugged:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->onBackKeyPressed:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mBeamVideoIsPlaying:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$1;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayVideoRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$2;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPauseVideoRunnable:Ljava/lang/Runnable;

    .line 503
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$SmartBookBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MovieActivity$SmartBookBroadcastReceiver;-><init>(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MovieActivity$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    .line 614
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$6;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mBeamVideoIsPlaying:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mBeamVideoIsPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayVideoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsSmartBookPlugged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsSmartBookPlugged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MovieActivity;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    return-object v0
.end method

.method private collapseShareMenu()V
    .locals 4

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ActivityChooserView;

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserView;

    .line 755
    .local v0, chooserView:Landroid/widget/ActivityChooserView;
    const-string v1, "Gallery2/MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapseShareMenu() chooserView.isShowingPopup()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 759
    .end local v0           #chooserView:Landroid/widget/ActivityChooserView;
    :cond_0
    return-void
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 402
    return-object v0
.end method

.method private enhanceActionBar()V
    .locals 7

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 650
    .local v1, movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 651
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, scheme:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, authority:Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/app/MovieActivity$7;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/gallery3d/app/MovieActivity$7;-><init>(Lcom/android/gallery3d/app/MovieActivity;Ljava/lang/String;Landroid/net/Uri;Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 697
    const-string v4, "Gallery2/MovieActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enhanceActionBar() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void
.end method

.method private initMovieInfo(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 597
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 598
    .local v1, original:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, mimeType:Ljava/lang/String;
    const-string v2, "application/sdp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    new-instance v2, Lcom/mediatek/gallery3d/ext/MovieItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v5}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 605
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2, v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setOriginalUri(Landroid/net/Uri;)V

    .line 607
    const-string v2, "Gallery2/MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMovieInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mMovieInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 603
    :cond_0
    new-instance v2, Lcom/mediatek/gallery3d/ext/MovieItem;

    invoke-direct {v2, v1, v0, v5}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    goto :goto_0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x4

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 285
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->setActionBarLogoFromIntent(Landroid/content/Intent;)V

    .line 286
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 289
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 322
    const-string v1, "Gallery2/MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeActionBar() mMovieInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private isVoiceBusy()Z
    .locals 5

    .prologue
    .line 248
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 249
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 250
    .local v0, mCallState:I
    const-string v2, "Gallery2/MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceBusy(): mCallState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v0, :cond_0

    .line 252
    const/4 v2, 0x1

    .line 254
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshShareProvider(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v1, "android.intent.extra.STREAM"

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 737
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 740
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "Gallery2/MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshShareProvider() mShareProvider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void

    .line 734
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v1, "android.intent.extra.TEXT"

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerScreenOff()V
    .locals 2

    .prologue
    .line 635
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 636
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    return-void
.end method

.method private registerSmartBookReceiver()V
    .locals 3

    .prologue
    .line 507
    const-string v1, "Gallery2/MovieActivity"

    const-string v2, "registerSmartBookReceiver "

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 510
    .local v0, mSmartBookIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 512
    return-void
.end method

.method private screenOffForSmartBook()V
    .locals 3

    .prologue
    .line 487
    const-string v0, "Gallery2/MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenOffForSmartBook, mIsSmartBookPlugged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsSmartBookPlugged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPowerManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsSmartBookPlugged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->sbGoToSleep(J)V

    .line 492
    :cond_0
    return-void
.end method

.method private screenOnForSmartBook()V
    .locals 2

    .prologue
    .line 474
    const-string v0, "Gallery2/MovieActivity"

    const-string v1, "prepareSmartBookScreenOn,FO is :false"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method private setActionBarLogoFromIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 259
    const-string v2, "logo-bitmap"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 260
    .local v1, logo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 266
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_1

    .line 267
    const-string v2, "Gallery2/MovieActivity"

    const-string v3, "NFC not available!"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, p0, p0}, Landroid/nfc/NfcAdapter;->setMtkBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 271
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$4;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    .line 278
    .local v0, completeCallBack:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/app/Activity;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, p0, v3}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private setSystemUiVisibility(Landroid/view/View;)V
    .locals 1
    .parameter "rootView"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v0, :cond_0

    .line 135
    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method

.method private showDialogFromPlayer(I)V
    .locals 1
    .parameter "Type"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->showDialogForTrack(I)V

    .line 331
    return-void
.end method

.method private unregisterScreenOff()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 644
    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 4
    .parameter "event"

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPauseVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 771
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPauseVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 772
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    .line 773
    .local v0, currentUri:Landroid/net/Uri;
    const-string v1, "Gallery2/MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC call for uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 501
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const-string v0, "Gallery2/MovieActivity"

    const-string v3, "onCreate() 1"

    invoke-static {v0, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isVoiceBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const v0, 0x7f0c026a

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 184
    :cond_0
    const-string v0, "Gallery2/MovieActivity"

    const-string v3, "onCreate() 2"

    invoke-static {v0, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 186
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 187
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 188
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 189
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, rootView:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieActivity;->setSystemUiVisibility(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 194
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getHooker(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IActivityHooker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 195
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/MovieActivity;->initMovieInfo(Landroid/content/Intent;)V

    .line 196
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    .line 197
    const-string v0, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 199
    const-string v0, "treat-up-as-back"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    .line 200
    new-instance v0, Lcom/mediatek/gallery3d/ext/MovieListLoader;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/ext/MovieListLoader;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0, p0, v8, p0, v3}, Lcom/mediatek/gallery3d/ext/IMovieListLoader;->fillVideoList(Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 204
    const-string v0, "SCREEN_ORIENTATION_LANDSCAPE"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsLandscape:Z

    .line 205
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 208
    :cond_1
    const-string v0, "STREAMING_VIDEO_TITLE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mVideoTitle:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$3;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v3, :cond_3

    :goto_0
    const-string v1, "Cookie"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/app/MovieActivity$3;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Landroid/os/Bundle;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 223
    const-string v0, "android.intent.extra.screenOrientation"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    const-string v0, "android.intent.extra.screenOrientation"

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 227
    .local v9, orientation:I
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq v9, v0, :cond_2

    .line 228
    invoke-virtual {p0, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 231
    .end local v9           #orientation:I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 232
    .local v10, win:Landroid/view/Window;
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 233
    .local v11, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v0, 0x0

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 234
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 235
    invoke-virtual {v10, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    invoke-virtual {v10, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0, p0, v8}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->init(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getMoviePlayerExt()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0, v12, v1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoSurface()Landroid/view/SurfaceView;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onCreate(Landroid/os/Bundle;)V

    .line 245
    return-void

    .end local v10           #win:Landroid/view/Window;
    .end local v11           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    move v6, v1

    .line 210
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 347
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 349
    .local v0, local:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MtkUtils;->canShare(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieDrmExtension(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2, p0, v3}, Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;->canShare(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 375
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v2, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 353
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f110009

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    const v2, 0x7f0b0186

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    .line 355
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 356
    .local v1, provider:Landroid/widget/ShareActionProvider;
    iput-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    .line 357
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieActivity;->refreshShareProvider(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 578
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onDestroy()V

    .line 580
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListLoaded(Lcom/mediatek/gallery3d/ext/IMovieList;)V
    .locals 3
    .parameter "movieList"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    .line 158
    const-string v1, "Gallery2/MovieActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListLoaded() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 158
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 408
    .local v0, id:I
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 409
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 421
    :goto_0
    return v1

    .line 412
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 413
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 416
    :cond_1
    const v2, 0x7f0b0186

    if-ne v0, v2, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f0c02be

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v1, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 454
    const-string v1, "Gallery2/MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() , mResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mControlResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    .line 463
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 468
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->collapseShareMenu()V

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onPause()V

    .line 470
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 533
    const-string v0, "Gallery2/MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() , mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mControlResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->screenOnForSmartBook()V

    .line 537
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->registerSmartBookReceiver()V

    .line 538
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 540
    const-string v0, "Gallery2/MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemService,mPowerManager ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    .line 544
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 546
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 551
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->enhanceActionBar()V

    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 553
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onResume()V

    .line 554
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 571
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 573
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onStart()V

    .line 428
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->registerScreenOff()V

    .line 430
    const-string v0, "Gallery2/MovieActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 436
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 438
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 439
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onStop()V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onStop()V

    .line 444
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterScreenOff()V

    .line 446
    const-string v0, "Gallery2/MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() , mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mControlResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 560
    const-string v0, "Gallery2/MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mControlResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 567
    :cond_0
    return-void
.end method

.method public refreshMovieInfo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 714
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 715
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->refreshShareProvider(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 716
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    const-string v0, "Gallery2/MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshMovieInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 703
    const-string v1, "Gallery2/MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActionBarTitle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 706
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 709
    :cond_0
    return-void
.end method

.method public setAudioMenuItemVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mChangeAudioTrackMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mChangeAudioTrackMenu:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    :cond_0
    return-void
.end method
