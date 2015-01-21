.class public Lcom/hf/ad/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field public static final INDEX_0:I = 0x0

.field public static final INDEX_1:I = 0x1

.field public static final INDEX_2:I = 0x2

.field private static sInstance:Lcom/hf/ad/AdManager;


# instance fields
.field private mAdBaiDu:Lcom/hf/ad/AdBaiDu;

.field private mBannerSwitch:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/hf/ad/AdManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/hf/ad/AdManager;->mBannerSwitch:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/hf/ad/AdManager;Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hf/ad/AdManager;->addBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V

    return-void
.end method

.method private addBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V
    .locals 4
    .parameter "activity"
    .parameter "rootView"
    .parameter "index"
    .parameter "hiddenCloseButton"

    .prologue
    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    invoke-virtual {v2, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hf/ad/BannerAdLayout;

    .line 72
    .local v0, adLayout:Lcom/hf/ad/BannerAdLayout;
    invoke-virtual {v0, p4}, Lcom/hf/ad/BannerAdLayout;->setHidenCloseButton(Z)V

    .line 73
    invoke-virtual {v0, p3}, Lcom/hf/ad/BannerAdLayout;->setBannerStyle(I)V

    .line 74
    invoke-virtual {v0}, Lcom/hf/ad/BannerAdLayout;->loadAd()V

    .line 76
    return-void
.end method

.method public static declared-synchronized instance()Lcom/hf/ad/AdManager;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/hf/ad/AdManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/ad/AdManager;->sInstance:Lcom/hf/ad/AdManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/hf/ad/AdManager;

    invoke-direct {v0}, Lcom/hf/ad/AdManager;-><init>()V

    sput-object v0, Lcom/hf/ad/AdManager;->sInstance:Lcom/hf/ad/AdManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/hf/ad/AdManager;->sInstance:Lcom/hf/ad/AdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public alloc()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/ad/AdManager;->mBannerSwitch:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public isShow(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 98
    if-ltz p1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/hf/ad/AdManager;->mBannerSwitch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/hf/ad/AdManager;->mBannerSwitch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/hf/ad/AdManager;->mBannerSwitch:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V
    .locals 6
    .parameter "activity"
    .parameter "rootView"
    .parameter "index"
    .parameter "hiddenCloseButton"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hf/ad/AdManager;->mBannerSwitch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/hf/ad/AdManager$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hf/ad/AdManager$1;-><init>(Lcom/hf/ad/AdManager;Landroid/app/Activity;ILandroid/view/ViewGroup;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v0, v1}, Lcom/hf/ad/AdManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0, p3}, Lcom/hf/ad/AdManager;->isShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hf/ad/AdManager;->addBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V

    goto :goto_0
.end method

.method public showVideoAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/AdViewListener;)Z
    .locals 1
    .parameter "context"
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 87
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hf/ad/AdManager;->isShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/hf/ad/AdManager;->mAdBaiDu:Lcom/hf/ad/AdBaiDu;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Lcom/hf/ad/AdBaiDu;

    invoke-direct {v0}, Lcom/hf/ad/AdBaiDu;-><init>()V

    iput-object v0, p0, Lcom/hf/ad/AdManager;->mAdBaiDu:Lcom/hf/ad/AdBaiDu;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/hf/ad/AdManager;->mAdBaiDu:Lcom/hf/ad/AdBaiDu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hf/ad/AdBaiDu;->showVideo(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/AdViewListener;)V

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showWall(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hf/ad/AdManager;->mAdBaiDu:Lcom/hf/ad/AdBaiDu;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/hf/ad/AdBaiDu;

    invoke-direct {v0}, Lcom/hf/ad/AdBaiDu;-><init>()V

    iput-object v0, p0, Lcom/hf/ad/AdManager;->mAdBaiDu:Lcom/hf/ad/AdBaiDu;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/hf/ad/AdManager;->mAdBaiDu:Lcom/hf/ad/AdBaiDu;

    invoke-virtual {v0, p1}, Lcom/hf/ad/AdBaiDu;->showWall(Landroid/content/Context;)V

    .line 84
    return-void
.end method
