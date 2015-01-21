.class public Lcom/android/camera/WfdManagerLocal;
.super Ljava/lang/Object;
.source "WfdManagerLocal.java"

# interfaces
.implements Lcom/android/camera/Camera$Resumable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/WfdManagerLocal$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdManagerLocal"


# instance fields
.field private mContext:Lcom/android/camera/Camera;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/WfdManagerLocal$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumed:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/camera/WfdManagerLocal$1;

    invoke-direct {v0, p0}, Lcom/android/camera/WfdManagerLocal$1;-><init>(Lcom/android/camera/WfdManagerLocal;)V

    iput-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    .line 42
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->addResumable(Lcom/android/camera/Camera$Resumable;)Z

    .line 43
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/WfdManagerLocal;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/WfdManagerLocal;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/WfdManagerLocal;->notifyWfdStateChanged(Z)V

    return-void
.end method

.method private notifyWfdStateChanged(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 71
    const-string v2, "WfdManagerLocal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyWfdStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/WfdManagerLocal$Listener;

    .line 73
    .local v1, listener:Lcom/android/camera/WfdManagerLocal$Listener;
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1, p1}, Lcom/android/camera/WfdManagerLocal$Listener;->onStateChanged(Z)V

    goto :goto_0

    .line 77
    .end local v1           #listener:Lcom/android/camera/WfdManagerLocal$Listener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public begin()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public declared-synchronized isWfdEnabled()Z
    .locals 5

    .prologue
    .line 47
    monitor-enter p0

    const/4 v1, 0x0

    .line 48
    .local v1, enabled:Z
    const/4 v0, -0x1

    .line 49
    .local v0, activeDisplayState:I
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 53
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 54
    :goto_0
    const-string v2, "WfdManagerLocal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfdEnabled() mWifiDisplayStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return v1

    .line 53
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 89
    const-string v0, "WfdManagerLocal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    .line 95
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 99
    const-string v1, "WfdManagerLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume() mResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v1, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    if-nez v1, :cond_0

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/WfdManagerLocal;->notifyWfdStateChanged(Z)V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    .line 107
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
