.class Lcom/android/music/MediaPlaybackActivity$Worker;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1969
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    .line 1978
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1979
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1980
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1981
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1982
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1984
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1985
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1988
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 1989
    return-void

    .line 1988
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2006
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1996
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1997
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1998
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    .line 1999
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2000
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2002
    return-void

    .line 2000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
