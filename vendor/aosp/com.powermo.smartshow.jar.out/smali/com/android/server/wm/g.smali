.class Lcom/android/server/wm/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/server/wm/f;


# direct methods
.method constructor <init>(Lcom/android/server/wm/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/g;->a:Lcom/android/server/wm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/g;->a:Lcom/android/server/wm/f;

    iget-object v0, v0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/g;->a:Lcom/android/server/wm/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/f;->a(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
