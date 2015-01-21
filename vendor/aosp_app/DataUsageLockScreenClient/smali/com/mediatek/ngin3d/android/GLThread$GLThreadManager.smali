.class Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/android/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThreadManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/android/GLThread;


# direct methods
.method private constructor <init>(Lcom/mediatek/ngin3d/android/GLThread;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ngin3d/android/GLThread;Lcom/mediatek/ngin3d/android/GLThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;-><init>(Lcom/mediatek/ngin3d/android/GLThread;)V

    return-void
.end method


# virtual methods
.method public releaseEglSurface(Lcom/mediatek/ngin3d/android/GLThread;)V
    .locals 2
    .parameter "thread"

    .prologue
    .line 903
    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    #getter for: Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;
    invoke-static {v0}, Lcom/mediatek/ngin3d/android/GLThread;->access$100(Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 905
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/android/GLThread;->access$102(Lcom/mediatek/ngin3d/android/GLThread;Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;

    .line 907
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 908
    monitor-exit p0

    .line 909
    return-void

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public threadExiting(Lcom/mediatek/ngin3d/android/GLThread;)V
    .locals 2
    .parameter "thread"

    .prologue
    .line 871
    monitor-enter p0

    .line 875
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/mediatek/ngin3d/android/GLThread;->mDone:Z

    .line 877
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    #getter for: Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;
    invoke-static {v0}, Lcom/mediatek/ngin3d/android/GLThread;->access$100(Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 878
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/android/GLThread;->access$102(Lcom/mediatek/ngin3d/android/GLThread;Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;

    .line 880
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 881
    monitor-exit p0

    .line 882
    return-void

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryAcquireEglSurface(Lcom/mediatek/ngin3d/android/GLThread;)Z
    .locals 1
    .parameter "thread"

    .prologue
    .line 891
    monitor-enter p0

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    #getter for: Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;
    invoke-static {v0}, Lcom/mediatek/ngin3d/android/GLThread;->access$100(Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    #getter for: Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;
    invoke-static {v0}, Lcom/mediatek/ngin3d/android/GLThread;->access$100(Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->this$0:Lcom/mediatek/ngin3d/android/GLThread;

    #setter for: Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;
    invoke-static {v0, p1}, Lcom/mediatek/ngin3d/android/GLThread;->access$102(Lcom/mediatek/ngin3d/android/GLThread;Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;

    .line 894
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 895
    const/4 v0, 0x1

    monitor-exit p0

    .line 897
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
