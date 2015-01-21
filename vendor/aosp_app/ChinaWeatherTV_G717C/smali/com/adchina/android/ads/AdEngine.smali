.class public Lcom/adchina/android/ads/AdEngine;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/adchina/android/ads/AdEngine;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/adchina/android/ads/controllers/AdViewController;

.field private f:Lcom/adchina/android/ads/controllers/s;

.field private g:Lcom/adchina/android/ads/controllers/h;

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/adchina/android/ads/AdEngine;->a:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/AdEngine;->b:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/AdEngine;->c:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/AdEngine;->h:Z

    iput-object p1, p0, Lcom/adchina/android/ads/AdEngine;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/AdManager;->setResolution(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/AdManager;->setPhoneUA(Ljava/lang/String;)V

    sput-object p0, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    return-void
.end method

.method public static getAdEngine()Lcom/adchina/android/ads/AdEngine;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    return-object v0
.end method

.method public static initAdEngine(Landroid/content/Context;)Lcom/adchina/android/ads/AdEngine;
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/AdEngine;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/AdEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    new-instance v0, Lcom/adchina/android/ads/x;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/x;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/adchina/android/ads/y;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/y;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V

    :cond_0
    sget-object v0, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    return-object v0
.end method


# virtual methods
.method public addBannerAdView(Lcom/adchina/android/ads/views/AdView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getAdViewController()Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/views/AdView;)V

    return-void
.end method

.method public addBannerAdView(Lcom/adchina/android/ads/views/AdView;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getAdViewController()Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/views/AdView;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->startBannerAd()V

    :cond_0
    return-void
.end method

.method public getAdViewController()Lcom/adchina/android/ads/controllers/AdViewController;
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->e:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->e:Lcom/adchina/android/ads/controllers/AdViewController;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->e:Lcom/adchina/android/ads/controllers/AdViewController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v2, p0, Lcom/adchina/android/ads/AdEngine;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/AdEngine;->e:Lcom/adchina/android/ads/controllers/AdViewController;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->e:Lcom/adchina/android/ads/controllers/AdViewController;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFullScreenAdController()Lcom/adchina/android/ads/controllers/h;
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->g:Lcom/adchina/android/ads/controllers/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->g:Lcom/adchina/android/ads/controllers/h;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->g:Lcom/adchina/android/ads/controllers/h;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/adchina/android/ads/controllers/h;->a(Landroid/content/Context;)Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/AdEngine;->g:Lcom/adchina/android/ads/controllers/h;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->g:Lcom/adchina/android/ads/controllers/h;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVideoAdController()Lcom/adchina/android/ads/controllers/s;
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->f:Lcom/adchina/android/ads/controllers/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->f:Lcom/adchina/android/ads/controllers/s;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/adchina/android/ads/AdEngine;->i:Lcom/adchina/android/ads/AdEngine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->f:Lcom/adchina/android/ads/controllers/s;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/adchina/android/ads/controllers/s;->a(Landroid/content/Context;)Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/AdEngine;->f:Lcom/adchina/android/ads/controllers/s;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/AdEngine;->f:Lcom/adchina/android/ads/controllers/s;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public playVideo(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getVideoAdController()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/s;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public removeBannerAdView(Lcom/adchina/android/ads/views/AdView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getAdViewController()Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->b(Lcom/adchina/android/ads/views/AdView;)V

    return-void
.end method

.method public setAdFsListener(Lcom/adchina/android/ads/AdFsListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getFullScreenAdController()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/AdFsListener;)V

    return-void
.end method

.method public setAdVideoListener(Lcom/adchina/android/ads/AdVideoListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getVideoAdController()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/AdVideoListener;)V

    return-void
.end method

.method public setDefaultUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getAdViewController()Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setFullScreenFinishEvent(Lcom/adchina/android/ads/AdFullScreenFinishListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getFullScreenAdController()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/AdFullScreenFinishListener;)V

    return-void
.end method

.method public setVideoFinishEvent(Lcom/adchina/android/ads/AdVideoFinishListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getVideoAdController()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/AdVideoFinishListener;)V

    return-void
.end method

.method public showFullScreenAd(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getFullScreenAdController()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/h;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public startBannerAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getAdViewController()Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->r()V

    return-void
.end method

.method public startFullScreenAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/AdEngine;->startFullScreenAd(Z)V

    return-void
.end method

.method public startFullScreenAd(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getFullScreenAdController()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/h;->a(Z)V

    return-void
.end method

.method public startVideoAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/AdEngine;->startVideoAd(Z)V

    return-void
.end method

.method public startVideoAd(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getVideoAdController()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/s;->a(Z)V

    return-void
.end method

.method public stopBannerAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getAdViewController()Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/AdEngine;->e:Lcom/adchina/android/ads/controllers/AdViewController;

    return-void
.end method

.method public stopFullScreenAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getFullScreenAdController()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/AdEngine;->g:Lcom/adchina/android/ads/controllers/h;

    return-void
.end method

.method public stopVideoAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/AdEngine;->getVideoAdController()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/s;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/AdEngine;->f:Lcom/adchina/android/ads/controllers/s;

    return-void
.end method
