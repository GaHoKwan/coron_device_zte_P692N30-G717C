.class public Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
.super Landroid/app/Fragment;
.source "VoicemailPlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$1;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final HAS_CONTENT_PROJECTION:[Ljava/lang/String; = null

.field private static final NUMBER_OF_THREADS_IN_POOL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VoicemailPlaybackFragment"


# instance fields
.field private mOnNearTimes:J

.field private mOnPausedTimes:J

.field private mPlaybackLayout:Landroid/view/View;

.field private mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "has_content"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 497
    iput-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnNearTimes:J

    .line 498
    iput-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnPausedTimes:J

    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private createMediaPlayer(Ljava/util/concurrent/ExecutorService;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 1
    .parameter "executorService"

    .prologue
    .line 147
    invoke-static {p1}, Lcom/android/ex/variablespeed/VariableSpeed;->createVariableSpeed(Ljava/util/concurrent/Executor;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v0

    return-object v0
.end method

.method private createPlaybackViewImpl()Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$1;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPlaybackLayout:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static formatAsMinutesAndSeconds(I)Ljava/lang/String;
    .locals 6
    .parameter "millis"

    .prologue
    .line 161
    div-int/lit16 v1, p0, 0x3e8

    .line 162
    .local v1, seconds:I
    div-int/lit8 v0, v1, 0x3c

    .line 163
    .local v0, minutes:I
    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    .line 164
    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    .line 165
    const/16 v0, 0x63

    .line 167
    :cond_0
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clearNearTimes()V
    .locals 2

    .prologue
    .line 507
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnNearTimes:J

    .line 508
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 91
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 92
    .local v7, arguments:Landroid/os/Bundle;
    const-string v0, "fragment must be started with arguments"

    invoke-static {v7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 94
    .local v2, voicemailUri:Landroid/net/Uri;
    const-string v0, "fragment must contain EXTRA_VOICEMAIL_URI"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 96
    .local v4, startPlayback:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 98
    .local v8, powerManager:Landroid/os/PowerManager;
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 105
    .local v6, wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->createPlaybackViewImpl()Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->createMediaPlayer(Ljava/util/concurrent/ExecutorService;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->getInstance(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/contacts/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .line 109
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const v0, 0x7f0400a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPlaybackLayout:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPlaybackLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "VoicemailPlaybackFragment"

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 126
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 130
    const-string v0, "VoicemailPlaybackFragment"

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnPausedTimes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnPausedTimes:J

    .line 133
    iget-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnNearTimes:J

    iget-wide v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnPausedTimes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 135
    iget-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnNearTimes:J

    iput-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnPausedTimes:J

    .line 138
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "VoicemailPlaybackFragment"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 514
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onResume()V

    .line 515
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public setIsPausedBySensor(Z)V
    .locals 4
    .parameter "isPausedBySensor"

    .prologue
    .line 501
    if-eqz p1, :cond_0

    .line 502
    iget-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnNearTimes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->mOnNearTimes:J

    .line 504
    :cond_0
    return-void
.end method