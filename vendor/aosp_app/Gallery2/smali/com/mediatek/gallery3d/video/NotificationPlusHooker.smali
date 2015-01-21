.class public Lcom/mediatek/gallery3d/video/NotificationPlusHooker;
.super Lcom/mediatek/gallery3d/video/MovieHooker;
.source "NotificationPlusHooker.java"


# static fields
.field private static final EXTRA_FULLSCREEN_NOTIFICATION:Ljava/lang/String; = "mediatek.intent.extra.FULLSCREEN_NOTIFICATION"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/NotificationPlusHooker"


# instance fields
.field private mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;-><init>()V

    return-void
.end method

.method private clearNotifications()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-virtual {v0}, Lcom/mediatek/notification/NotificationManagerPlus;->clearAll()V

    .line 80
    :cond_0
    const-string v0, "Gallery2/VideoPlayer/NotificationPlusHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNotifications() mPlusNotification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private enableNMP()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, extraEnable:Z
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v2, "mediatek.intent.extra.FULLSCREEN_NOTIFICATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableNMP(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    :cond_1
    new-instance v2, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->setOnFirstShowListener(Lcom/mediatek/notification/NotificationManagerPlus$OnFirstShowListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->setOnLastDismissListener(Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->create()Lcom/mediatek/notification/NotificationManagerPlus;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    .line 53
    :cond_2
    const-string v2, "Gallery2/VideoPlayer/NotificationPlusHooker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableNMP() extraEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-virtual {v0}, Lcom/mediatek/notification/NotificationManagerPlus;->startListening()V

    .line 62
    :cond_0
    const-string v0, "Gallery2/VideoPlayer/NotificationPlusHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListening() mPlusNotification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method private stopListening()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-virtual {v0}, Lcom/mediatek/notification/NotificationManagerPlus;->stopListening()V

    .line 71
    :cond_0
    const-string v0, "Gallery2/VideoPlayer/NotificationPlusHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopListening() mPlusNotification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->mPlusNotification:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->enableNMP()V

    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onDestroy()V

    .line 34
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->clearNotifications()V

    .line 35
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onStart()V

    .line 24
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->startListening()V

    .line 25
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onStop()V

    .line 29
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;->stopListening()V

    .line 30
    return-void
.end method
