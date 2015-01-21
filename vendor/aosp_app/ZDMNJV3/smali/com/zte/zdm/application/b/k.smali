.class public Lcom/zte/zdm/application/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/a/c;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:Ljava/lang/String; = "pasue"

.field public static final f:Ljava/lang/String; = "onGoing"

.field public static final g:Ljava/lang/String; = "isMandatory"

.field private static final h:Ljava/lang/String; = "pauseByWho"

.field private static final i:Ljava/lang/String; = "com.zte.zdm.application.STATUS_BAR_COVER_CLICK_ACTION"

.field private static final j:Ljava/lang/String; = "NotifyUserSessionPaused"


# instance fields
.field private k:Landroid/content/BroadcastReceiver;

.field private l:Lcom/zte/zdm/b/b/a;

.field private m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/k;->m:Ljava/lang/Object;

    iput-object p1, p0, Lcom/zte/zdm/application/b/k;->l:Lcom/zte/zdm/b/b/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/app/PendingIntent;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/k;->k:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/k;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Lcom/zte/zdm/application/b/l;

    invoke-direct {v0, p0, p2}, Lcom/zte/zdm/application/b/l;-><init>(Lcom/zte/zdm/application/b/k;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/k;->k:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zte.zdm.application.STATUS_BAR_COVER_CLICK_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/k;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.zdm.application.STATUS_BAR_COVER_CLICK_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/application/b/k;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/k;->l:Lcom/zte/zdm/b/b/a;

    const-string v2, "pauseByWho"

    invoke-virtual {v0, v2, p1}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/k;->l:Lcom/zte/zdm/b/b/a;

    const-string v1, "NotifyUserSessionPaused"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public a()Z
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/zte/zdm/application/b/k;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    if-le v1, v2, :cond_0

    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/application/b/k;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/k;->l:Lcom/zte/zdm/b/b/a;

    const-string v1, "pauseByWho"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/zte/zdm/application/b/k;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/k;->l:Lcom/zte/zdm/b/b/a;

    const-string v1, "NotifyUserSessionPaused"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
