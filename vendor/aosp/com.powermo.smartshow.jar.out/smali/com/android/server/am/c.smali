.class public Lcom/android/server/am/c;
.super Ljava/lang/Object;


# static fields
.field public static final CLEAN_TASK_PERIOD:I = 0x3e8

.field public static final DEBUG:Z = false

.field public static final DEBUG_MULTIWINDOW:Z = false

.field public static final TAG:Ljava/lang/String; = "AmStub"


# instance fields
.field a:Z

.field b:Z

.field final c:Ljava/util/ArrayList;

.field d:Lcom/android/server/am/b;

.field final e:Ljava/util/ArrayList;

.field f:Lcom/android/server/wm/e;

.field private g:Ljava/util/ArrayList;

.field private h:Lcom/android/server/am/ActivityManagerService;

.field private i:Lcom/android/server/am/AmSmartShowStub;

.field private j:Landroid/content/Context;

.field private k:Lcom/android/server/am/d;

.field private l:Lcom/android/server/StubFullSmartShowContext;

.field private m:Ljava/util/ArrayList;

.field private n:Lcom/android/server/wm/WindowManagerService;

.field private o:Lcom/android/server/wm/WmStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WmStub;)V
    .locals 9

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcom/android/server/am/c;->b:Z

    iput-boolean v7, p0, Lcom/android/server/am/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/c;->f:Lcom/android/server/wm/e;

    iput-object p3, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    new-instance v0, Lcom/android/server/am/b;

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/b;-><init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/c;)V

    iget-object v1, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iput-object v0, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveServices:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/c;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/c;->e:Ljava/util/ArrayList;

    check-cast p2, Lcom/android/server/StubFullSmartShowContext;

    iput-object p2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    iput-object p1, p0, Lcom/android/server/am/c;->j:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/AmSmartShowStub;

    invoke-direct {v0, p0}, Lcom/android/server/am/AmSmartShowStub;-><init>(Lcom/android/server/am/c;)V

    iput-object v0, p0, Lcom/android/server/am/c;->i:Lcom/android/server/am/AmSmartShowStub;

    iput-object p5, p0, Lcom/android/server/am/c;->o:Lcom/android/server/wm/WmStub;

    new-instance v0, Lcom/android/server/am/d;

    invoke-direct {v0, p0}, Lcom/android/server/am/d;-><init>(Lcom/android/server/am/c;)V

    iput-object v0, p0, Lcom/android/server/am/c;->k:Lcom/android/server/am/d;

    return-void
.end method

.method static synthetic a(Lcom/android/server/am/c;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic b(Lcom/android/server/am/c;)Lcom/android/server/am/d;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/c;->k:Lcom/android/server/am/d;

    return-object v0
.end method

.method private b(III)V
    .locals 3

    if-gez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    if-eq v1, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0, p3}, Lcom/android/server/am/b;->d(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/am/b;->d(I)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/am/b;->d(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/b;->f()V

    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked()Z

    :cond_3
    return-void
.end method

.method private final h()Lcom/android/server/am/b;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getFocusedScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    goto :goto_0
.end method

.method private s(I)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_0

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isMiniLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(III)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    if-gez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/c;->f(II)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/c;->f(II)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/c;->e(II)V

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/c;->b(ILjava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/os/IBinder;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "AmStub"

    const-string v2, "Get context id token null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/server/am/ServiceRecord;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->contextId:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->contextId:I

    goto :goto_0
.end method

.method public a(Lcom/android/server/am/ProcessRecord;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getScreen()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityRecord;
    .locals 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->b(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v3

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/ActivityStack;->getScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v7

    move v4, v5

    move-object v0, v3

    :goto_1
    if-ge v4, v7, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v8

    if-ne v8, v6, :cond_4

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_4
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v1, v2, v5}, Lcom/android/server/am/b;->a(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->fixedScreen:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/b;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    move-object v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v3}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v9, v1, :cond_3

    :cond_6
    iget v0, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/b;->f(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public final a()Lcom/android/server/am/IAmSmartShowStub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/c;->i:Lcom/android/server/am/AmSmartShowStub;

    return-object v0
.end method

.method public final a(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/b;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0, p1}, Lcom/android/server/am/b;->e(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "AmStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get stack null for activity"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " return mainStack"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/android/server/am/a;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/a;->i()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/am/a;->a()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/b;->b(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/b;->a(Lcom/android/server/am/ActivityRecord;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(IIZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/b;->a(IZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(IIZZZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0, p2, v6}, Lcom/android/server/StubFullSmartShowContext;->getDisplayId(ILjava/lang/Object;)I

    move-result v0

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->requestBeginSwitch(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AmStub"

    const-string v1, "wms is busy, skip switch"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-ltz p1, :cond_2

    invoke-virtual {v0, v6}, Lcom/android/server/am/b;->j(Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/am/c;->k(I)Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->f(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    if-eqz p3, :cond_7

    invoke-virtual {v4, v0, p4}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;Z)V

    :goto_2
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/am/c;->b(III)V

    goto :goto_0

    :cond_2
    if-ne p1, v5, :cond_5

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget v0, v0, Lcom/android/server/am/b;->b:I

    if-eq v0, p2, :cond_3

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v1, "0:-1"

    invoke-virtual {v0, v1, v5, v5}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v1, "1:-1"

    invoke-virtual {v0, v1, v5, v5}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v1

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int v0, p1, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p3, 0x1

    :cond_6
    add-int v0, p1, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v3

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v4, v0}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_8
    move-object v0, v3

    goto/16 :goto_1
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 15

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1}, Lcom/android/server/StubFullSmartShowContext;->getFocusedScreen()I

    move-result p1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/StubFullSmartShowContext;->setFocusedScreen(I)V

    iget-object v1, p0, Lcom/android/server/am/c;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/b;->a(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    goto :goto_0
.end method

.method public a(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/high16 v0, 0x80

    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/android/server/am/TaskRecord;->screen:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isHome:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->inIME:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->inSystemUI:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, p2, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.IDLER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object v0, p2, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object p2, v0, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p2, p2}, Lcom/android/server/am/c;->a(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto :goto_0
.end method

.method public a(Lcom/android/server/am/ProcessRecord;I)V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v1, "0:"

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    if-ge v1, v4, :cond_3

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    :cond_4
    return-void
.end method

.method public a(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    iput-object v1, p2, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    iput-object v1, p1, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    :cond_1
    return-void
.end method

.method a(Ljava/util/ArrayList;IZ)V
    .locals 10

    const/4 v9, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1c

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v1, :cond_2

    if-lez p2, :cond_3

    if-nez p3, :cond_5

    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    if-lez p2, :cond_2

    if-nez p3, :cond_2

    :cond_5
    iget v8, v1, Lcom/android/server/am/ServiceRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v1, Lcom/android/server/am/ServiceRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->serviceTasks:Ljava/util/HashSet;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->serviceTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    if-lez p2, :cond_9

    if-nez p3, :cond_b

    :cond_9
    if-nez p2, :cond_a

    if-eqz p3, :cond_b

    :cond_a
    if-lez p2, :cond_8

    if-nez p3, :cond_8

    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    if-eqz v1, :cond_d

    if-lez p2, :cond_e

    if-nez p3, :cond_10

    :cond_e
    if-nez p2, :cond_f

    if-eqz p3, :cond_10

    :cond_f
    if-lez p2, :cond_d

    if-nez p3, :cond_d

    :cond_10
    iget v8, v1, Lcom/android/server/am/ServiceRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    iget v1, v1, Lcom/android/server/am/ServiceRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->servicePids:Ljava/util/HashSet;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->servicePids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_12

    if-lez p2, :cond_13

    if-nez p3, :cond_15

    :cond_13
    if-nez p2, :cond_14

    if-eqz p3, :cond_15

    :cond_14
    if-lez p2, :cond_12

    if-nez p3, :cond_12

    :cond_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1b

    if-lez p2, :cond_17

    if-nez p3, :cond_19

    :cond_17
    if-nez p2, :cond_18

    if-eqz p3, :cond_19

    :cond_18
    if-lez p2, :cond_1b

    if-nez p3, :cond_1b

    :cond_19
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v0, "0:"

    move v1, v2

    :goto_6
    if-ge v1, v4, :cond_1e

    if-eqz v1, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_6

    :cond_1e
    if-lez p2, :cond_1f

    if-nez p3, :cond_20

    :cond_1f
    if-nez p2, :cond_21

    if-nez p3, :cond_21

    :cond_20
    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1, v0, v9, v2}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    :cond_21
    if-lez p2, :cond_22

    if-nez p3, :cond_22

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1, v0, v9, p2}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    :cond_22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v0, "1:"

    move v1, v2

    :goto_7
    if-ge v1, v4, :cond_24

    if-eqz v1, :cond_23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_7

    :cond_24
    if-lez p2, :cond_25

    if-nez p3, :cond_26

    :cond_25
    if-nez p2, :cond_27

    if-nez p3, :cond_27

    :cond_26
    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1, v0, v9, v2}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    :cond_27
    if-lez p2, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1, v0, v9, p2}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    goto/16 :goto_0
.end method

.method final a(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v3, "-1"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(ZIII)V
    .locals 10

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move v3, v2

    :goto_1
    if-ltz v4, :cond_5

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v7, v1, Lcom/android/server/am/ActivityRecord;->contextId:I

    if-ne v7, p2, :cond_3

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v7, p3, :cond_3

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->servicePids:Ljava/util/HashSet;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Lcom/android/server/am/ActivityRecord;->servicePids:Ljava/util/HashSet;

    :cond_2
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->servicePids:Ljava/util/HashSet;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/b;->c()I

    move-result v1

    :goto_3
    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    :cond_4
    if-eqz v3, :cond_8

    :cond_5
    move v0, v3

    if-nez v0, :cond_0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_6
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->servicePids:Ljava/util/HashSet;

    if-eqz v7, :cond_3

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->servicePids:Ljava/util/HashSet;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_1
.end method

.method public final a(ZIIII)V
    .locals 10

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move v3, v2

    :goto_1
    if-ltz v4, :cond_5

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v7, v1, Lcom/android/server/am/ActivityRecord;->contextId:I

    if-ne v7, p2, :cond_3

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v7, p3, :cond_3

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->serviceTasks:Ljava/util/HashSet;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Lcom/android/server/am/ActivityRecord;->serviceTasks:Ljava/util/HashSet;

    :cond_2
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->serviceTasks:Ljava/util/HashSet;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/b;->c()I

    move-result v1

    :goto_3
    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/StubFullSmartShowContext;->bindAudio(Ljava/lang/String;II)I

    :cond_4
    if-eqz v3, :cond_8

    :cond_5
    move v0, v3

    if-nez v0, :cond_0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_6
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->serviceTasks:Ljava/util/HashSet;

    if-eqz v7, :cond_3

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->serviceTasks:Ljava/util/HashSet;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_1
.end method

.method public a(ZILjava/lang/Object;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    move v6, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/c;->b:Z

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mIsMultiWindowMode:Z

    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mInMultiWindowMode:Z

    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->updateMultiWindow()V

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v9

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/c;->b()Lcom/android/server/wm/e;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v1}, Lcom/android/server/wm/e;->a(IIZ)V

    if-ltz p2, :cond_10

    invoke-direct {p0, p2}, Lcom/android/server/am/c;->s(I)Z

    move-result v0

    move v3, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/am/c;->a:Z

    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v5

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_2

    if-eq v4, p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v6, v0}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    move v6, v1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    if-ne p2, v7, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked()Z

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->h()V

    iget-object v0, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->a(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/c;->e(Z)V

    iget-object v0, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v0, v8}, Lcom/android/server/am/b;->g(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/am/c;->b()Lcom/android/server/wm/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/e;->b(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/c;->d(Z)V

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0x200b

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :goto_4
    return-void

    :cond_5
    if-eqz p3, :cond_f

    instance-of v0, p3, Landroid/content/Intent;

    if-eqz v0, :cond_f

    check-cast p3, Landroid/content/Intent;

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v3, "android.intent.extra.init_screen"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_7

    move p2, v0

    :cond_6
    :goto_5
    if-nez v6, :cond_8

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/c;->a(ILandroid/content/Intent;)V

    goto :goto_4

    :cond_7
    if-ne v4, v2, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result p2

    goto :goto_5

    :cond_8
    move v0, p2

    :goto_6
    if-ne v0, v7, :cond_e

    if-eqz v6, :cond_e

    move v7, v2

    :goto_7
    if-nez v7, :cond_9

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/c;->a(IIZZZ)V

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p0, v7, p3}, Lcom/android/server/am/c;->a(ILandroid/content/Intent;)V

    :cond_a
    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, v1}, Lcom/android/server/am/c;->a(IZ)Z

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/c;->f()V

    invoke-virtual {p0, v2}, Lcom/android/server/am/c;->e(Z)V

    move v3, v1

    :goto_8
    if-ge v3, v9, :cond_d

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v3, v0, v10}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0, v8}, Lcom/android/server/am/b;->g(Lcom/android/server/am/ActivityRecord;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_e
    move v7, v0

    goto :goto_7

    :cond_f
    move-object p3, v8

    move v0, p2

    goto :goto_6

    :cond_10
    move v3, v1

    goto/16 :goto_1
.end method

.method public final a(II)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(IILandroid/graphics/Bitmap;Z)Z
    .locals 15

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v1

    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    const-string v2, "android.intent.category.PAUSECOVER"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 v2, 0x3000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "thumbnail"

    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "screen"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "needUncover"

    move/from16 v0, p4

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/c;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    const/16 v4, 0x400

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/b;->a(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const-string v2, "android.intent.category.CONFLICTCOVER"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;I)Z
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/SmartShowEvent;

    invoke-direct {v2}, Lcom/android/server/SmartShowEvent;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/server/SmartShowEvent;->setScreen(I)V

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/server/am/ActivityRecord;

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v0}, Lcom/android/server/SmartShowEvent;->setTaskId(I)V

    :cond_0
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->contextId:I

    invoke-virtual {v2, v0}, Lcom/android/server/SmartShowEvent;->setContextId(I)V

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v0, v2, Lcom/android/server/SmartShowEvent;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/16 v3, 0x65

    invoke-virtual {v0, v3, p3, v2}, Lcom/android/server/StubFullSmartShowContext;->perform(IILjava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    return v0

    :cond_2
    instance-of v0, p2, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/c;->b(IIZ)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "android.intent.extra.init_screen"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_b

    :try_start_2
    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, ":"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v5, :cond_1

    :goto_1
    if-lez v4, :cond_9

    move v4, v1

    move v5, v2

    :goto_2
    if-eq v5, v3, :cond_7

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v3}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v3

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ne v5, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/android/server/StubFullSmartShowContext;->getDisplayId(ILjava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_7

    :cond_0
    :goto_4
    return v0

    :cond_1
    if-ne v5, v1, :cond_a

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v2}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/StubFullSmartShowContext;->allowMultiWindow(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/am/c;->b:Z

    if-nez v3, :cond_4

    const-string v1, "android.intent.extra.init_screen"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.powermo.smartbar.action"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "cmd_show_toast"

    const-string v4, "MultiWindowDeny"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/c;->j:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "AmStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t enter multiwindow due to activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "AmStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStartActivity with intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    if-ne v5, v1, :cond_5

    :try_start_3
    const-string v2, "android.intent.extra.init_screen"

    const-string v3, "0:1:0"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/android/server/am/c;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/server/StubFullSmartShowContext;->perform(IILjava/lang/Object;)I

    move v0, v1

    goto/16 :goto_4

    :cond_5
    if-nez v5, :cond_6

    const-string v2, "android.intent.extra.init_screen"

    const-string v3, "0:0:0"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/android/server/am/c;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/server/StubFullSmartShowContext;->perform(IILjava/lang/Object;)I

    move v0, v1

    goto/16 :goto_4

    :cond_6
    const/4 v2, -0x1

    if-ne v5, v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/am/c;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/server/StubFullSmartShowContext;->perform(IILjava/lang/Object;)I

    move v0, v1

    goto/16 :goto_4

    :cond_7
    if-eqz v6, :cond_0

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.init_screen"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_1
    move-exception v4

    move-object v6, v2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    move-object v6, v2

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_3

    goto/16 :goto_4

    :cond_9
    move v4, v0

    move v5, v2

    goto/16 :goto_2

    :cond_a
    move v2, v3

    goto/16 :goto_1

    :cond_b
    move v4, v0

    move v5, v3

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/server/am/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/am/a;

    invoke-virtual {p1}, Lcom/android/server/am/a;->a()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, v2, Lcom/android/server/am/TaskRecord;->isInBack:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-boolean v0, v2, Lcom/android/server/am/TaskRecord;->isInBack:Z

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getScreen()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/c;->a(IZ)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b(ILjava/lang/String;)I
    .locals 9

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getFocusedScreen()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v5

    if-lez v3, :cond_5

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v8, v3, :cond_4

    move v1, v6

    :goto_1
    if-ge v1, v7, :cond_5

    if-ge v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->getResumedActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    iput-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->isCameraActivity:Z

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->a(Z)V

    :cond_2
    :goto_2
    return v6

    :cond_3
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_5
    move v5, v6

    move v3, v6

    :goto_3
    if-ge v5, v7, :cond_2

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_4
    if-ltz v4, :cond_a

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v8, v1, Lcom/android/server/am/ActivityRecord;->contextId:I

    if-ne v8, p1, :cond_9

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_9

    iput-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->isCameraActivity:Z

    iget-boolean v3, p0, Lcom/android/server/am/c;->b:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v3}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v3

    if-ge v5, v3, :cond_7

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/android/server/StubFullSmartShowContext;->isForcedOrientation(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v3, :cond_8

    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->a(Z)V

    :cond_7
    :goto_5
    move v0, v2

    :goto_6
    if-nez v0, :cond_2

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v0

    goto :goto_3

    :cond_8
    iput-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->isCameraActivity:Z

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_4

    :cond_a
    move v0, v3

    goto :goto_6
.end method

.method public final b(I)Landroid/os/IBinder;
    .locals 4

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v3, p1, :cond_1

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessRecord;->getResumedActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Lcom/android/server/am/b;
    .locals 12

    if-eqz p2, :cond_9

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "android.intent.extra.init_screen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_13

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v2, :cond_1

    :goto_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/c;->h()Lcom/android/server/am/b;

    move-result-object v3

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1, v0}, Lcom/android/server/StubFullSmartShowContext;->setFocusedScreen(I)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "android.intent.extra.fixed_screen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_5

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    :cond_5
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_6
    :try_start_2
    const-string v0, "android.intent.extra.remote_display"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_7

    iget-object v3, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/StubFullSmartShowContext;->getDisplayId(ILjava/lang/Object;)I

    move-result v3

    if-ne v1, v3, :cond_8

    :cond_7
    const-string v1, "android.intent.extra.remote_display"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    :cond_9
    const/4 v0, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_4
    const/4 v0, 0x0

    if-ge v5, v6, :cond_a

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0, p1}, Lcom/android/server/am/b;->a(Landroid/os/IBinder;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    :cond_a
    if-nez v0, :cond_11

    if-nez v3, :cond_0

    if-eqz v2, :cond_e

    move-object v3, v2

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v1, :cond_c

    if-eqz v4, :cond_c

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz p3, :cond_f

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_f

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, v7, :cond_f

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_4

    :cond_c
    const/4 v0, -0x1

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getContextId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->d(I)I

    move-result v0

    move v4, v0

    :goto_6
    if-lez v4, :cond_f

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v8

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v8, :cond_f

    iget-object v9, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/android/server/StubFullSmartShowContext;->getDisplayId(ILjava/lang/Object;)I

    move-result v9

    if-ne v4, v9, :cond_d

    iget-object v2, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    move-object v2, v3

    goto :goto_5

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    invoke-direct {p0}, Lcom/android/server/am/c;->h()Lcom/android/server/am/b;

    move-result-object v3

    goto/16 :goto_1

    :cond_f
    move-object v0, v2

    move-object v2, v3

    goto :goto_5

    :cond_10
    move v4, v0

    goto :goto_6

    :cond_11
    move-object v3, v0

    goto/16 :goto_1

    :cond_12
    move-object v1, v0

    goto/16 :goto_3

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method public b()Lcom/android/server/wm/e;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/c;->f:Lcom/android/server/wm/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->f:Lcom/android/server/wm/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/c;->o:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0}, Lcom/android/server/wm/WmStub;->c()Lcom/android/server/wm/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/android/server/am/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/am/a;->a()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/c;->o:Lcom/android/server/wm/WmStub;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WmStub;->b(Landroid/view/IApplicationToken;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasExternalDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/server/am/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/a;

    invoke-virtual {p1}, Lcom/android/server/am/a;->a()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0, v1}, Lcom/android/server/am/b;->h(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method final b(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->getResumedActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleSensorChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AmStub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear sensor adjustment exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(II)Z
    .locals 4

    const/4 v0, 0x1

    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/am/b;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->fixedScreen:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b(IIZ)Z
    .locals 15

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-nez p3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/am/c;->b:Z

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p1

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/StubFullSmartShowContext;->getDisplayId(ILjava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_3

    const-string v1, "AmStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can NOT start idle on non-existing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v3, "parameter_remote_idler"

    invoke-virtual {v2, v3}, Lcom/android/server/StubFullSmartShowContext;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_4

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "AmStub"

    const-string v2, "remote idler should be forced"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move/from16 v0, p1

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/StubFullSmartShowContext;->getIdlerActivity(II)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_b

    const-string v2, "com.powermo.smartshow.idler_disable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v1, p0, Lcom/android/server/am/c;->b:Z

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_7

    const/4 v1, 0x1

    :goto_3
    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/StubFullSmartShowContext;->perform(IILjava/lang/Object;)I

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/StubFullSmartShowContext;->getIdlerActivity(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_4
    const-string v1, "android.intent.category.IDLER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/c;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x400

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v2, :cond_a

    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/b;->a(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v1, "android.intent.category.IDLER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method

.method b(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->isHome:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v2, "android.intent.category.IDLER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->d(I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/c;->d()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/c;->k:Lcom/android/server/am/d;

    iget-object v1, p0, Lcom/android/server/am/c;->k:Lcom/android/server/am/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/am/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/d;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method c(Lcom/android/server/am/ActivityRecord;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getLastDisplayId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->saveLastDisplayId()V

    iget-object v0, p0, Lcom/android/server/am/c;->o:Lcom/android/server/wm/WmStub;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WmStub;->b(Landroid/view/IApplicationToken;)V

    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppTokenDisplay(Landroid/os/IBinder;I)V

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mScreen:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/am/b;->a(Lcom/android/server/am/ActivityRecord;IIZ)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/StubFullSmartShowContext;->getConfigDiff(IILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->saveLastDisplayId()V

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->refreshScreenForApp(Landroid/os/IBinder;)V

    :cond_2
    return-void
.end method

.method final c(Z)V
    .locals 8

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v4, v1

    :goto_0
    if-eqz p1, :cond_2

    move v1, v0

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_3

    iget-object v0, p0, Lcom/android/server/am/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v7, v0, Lcom/android/server/am/TaskRecord;->screen:I

    if-lt v7, v4, :cond_0

    iget v7, v0, Lcom/android/server/am/TaskRecord;->screen:I

    if-ge v7, v1, :cond_0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v4, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iput v2, v0, Lcom/android/server/am/TaskRecord;->screen:I

    iget-object v4, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    return-void
.end method

.method public c(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public final d(I)I
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveServices;->getServiceByContextIdLocked(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getDisplayId()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_4

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_3
    if-ltz v3, :cond_3

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v6, v1, Lcom/android/server/am/ActivityRecord;->contextId:I

    if-ne v6, p1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->saveLastDisplayId()V

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final d()V
    .locals 9

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move v3, v5

    :goto_1
    if-ltz v4, :cond_0

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->isKeyGuardOn:Z

    if-ne v8, v2, :cond_3

    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->isKeyGuardOn:Z

    move v1, v2

    :goto_2
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    iget-boolean v1, p0, Lcom/android/server/am/c;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/b;->h()V

    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->a(Z)V

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method final d(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->c(Z)V

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    move v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->a(Z)V

    return-void
.end method

.method public d(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/b;->c(I)Z

    move-result v0

    return v0
.end method

.method public final e(I)I
    .locals 10

    const/4 v2, 0x0

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v1, v7

    :goto_0
    if-ltz v6, :cond_8

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_7

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v3, p1, :cond_7

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    move v5, v2

    move v3, v1

    :goto_1
    if-ge v5, v9, :cond_6

    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-ne v3, v7, :cond_5

    if-eq v3, v4, :cond_5

    move v1, v4

    :goto_2
    if-eq v1, v4, :cond_2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v3}, Lcom/android/server/StubFullSmartShowContext;->getFocusedScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessRecord;->getResumedActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessRecord;->getResumedActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    :goto_4
    if-ltz v0, :cond_3

    :goto_5
    :try_start_4
    monitor-exit v8

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    :cond_3
    :goto_6
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_6

    :cond_4
    move-object v0, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_5
.end method

.method public e()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->d(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(II)V
    .locals 6

    const/4 v5, 0x0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/StubFullSmartShowContext;->getDisplayId(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v1, p2, v5}, Lcom/android/server/StubFullSmartShowContext;->getDisplayId(ILjava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->requestBeginSwitch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->requestBeginSwitch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/am/b;->j(Lcom/android/server/am/ActivityRecord;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/am/b;->f(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/b;->j(Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/server/am/b;->f(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/b;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Lcom/android/server/am/b;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v5}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/c;->b(III)V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public final f(I)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/c;->f(Z)V

    return-void
.end method

.method public final f(II)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez p1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/c;->a(IIZZZ)V

    :goto_0
    return-void

    :cond_0
    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/c;->a(IIZZZ)V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->h()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/b;->a(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final g(I)I
    .locals 11

    const/4 v2, 0x0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v1, v6

    :goto_0
    if-ltz v5, :cond_5

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v3, p1, :cond_4

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    move v4, v2

    move v3, v1

    :goto_1
    if-ge v4, v8, :cond_2

    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-ne v3, v6, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getScreen()I

    move-result v3

    :cond_0
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getScreen()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    :try_start_3
    monitor-exit v7

    :cond_1
    :goto_2
    return v0

    :cond_2
    move v0, v3

    :goto_3
    monitor-exit v7

    if-ne v0, v6, :cond_1

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    :goto_4
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->updateMultiWindow()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/c;->f(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/c;->e(Z)V

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->updateFocusedDisplayId()V

    return-void
.end method

.method public g(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/b;->g(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h(I)Lcom/android/server/am/b;
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h(II)V
    .locals 11

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_e

    iget-object v6, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget v0, v0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v6, v0, v3}, Lcom/android/server/StubFullSmartShowContext;->getDstDisplayId(ILjava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    move-object v5, v0

    :goto_1
    if-nez v5, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0, p1}, Lcom/android/server/StubFullSmartShowContext;->getCurrentRemoteDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "AmStub"

    const-string v1, "remote config is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0, p1}, Lcom/android/server/StubFullSmartShowContext;->a(I)Landroid/content/res/Configuration;

    move-result-object v7

    iget v8, v4, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    if-ltz p2, :cond_4

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v10, v9, v0}, Lcom/android/server/StubFullSmartShowContext;->a(Landroid/content/res/Configuration;Z)V

    invoke-virtual {v4, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v9}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iput v8, v4, Landroid/content/res/Configuration;->seq:I

    :cond_4
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->o:Lcom/android/server/wm/WmStub;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WmStub;->a(Landroid/view/IApplicationToken;)I

    move-result v9

    if-nez v9, :cond_a

    move-object v3, v4

    :cond_5
    :goto_4
    if-ltz v9, :cond_0

    if-eqz v7, :cond_6

    invoke-virtual {v7, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    :cond_6
    if-nez v2, :cond_7

    if-nez v7, :cond_0

    :cond_7
    add-int/lit8 v0, v8, 0x1

    iput v0, v4, Landroid/content/res/Configuration;->seq:I

    iget v0, v4, Landroid/content/res/Configuration;->seq:I

    iput v0, v3, Landroid/content/res/Configuration;->seq:I

    if-nez v7, :cond_c

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_5
    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->refreshScreenForApp(Landroid/os/IBinder;)V

    invoke-virtual {v5, v6}, Lcom/android/server/am/b;->k(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isFixed:Z

    if-eqz v2, :cond_8

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->fixedDisplayId:I

    if-eq v2, p1, :cond_d

    :cond_8
    :goto_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    if-lez v9, :cond_5

    iget-object v0, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    :goto_8
    invoke-virtual {v3, v0, v1}, Lcom/android/server/StubFullSmartShowContext;->a(Landroid/content/res/Configuration;Z)V

    move-object v3, v0

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_8

    :cond_c
    invoke-virtual {v7, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_5

    :cond_d
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_8

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/app/IApplicationThread;->scheduleConfigurationChanged(Landroid/content/res/Configuration;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_e
    move-object v5, v3

    goto/16 :goto_1
.end method

.method public final i(I)Lcom/android/server/am/b;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    goto :goto_0
.end method

.method public final j(I)I
    .locals 8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveServices;->getServiceByContextIdLocked(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->taskId:I

    monitor-exit v5

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_2

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_3
    if-ltz v3, :cond_5

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_4

    iget v7, v1, Lcom/android/server/am/ActivityRecord;->contextId:I

    if-ne v7, p1, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v5

    move v0, v2

    goto :goto_1

    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2
.end method

.method public k(I)Lcom/android/server/am/TaskRecord;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_4

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_3

    iget-object v1, v0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p1, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final l(I)Ljava/util/ArrayList;
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isMiniLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/c;->s(I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->h(I)Lcom/android/server/am/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p(I)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/am/c;->b:Z

    if-nez v0, :cond_0

    const-string v0, "AmStub"

    const-string v2, "Not in multi-window mode, should not reach here"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/c;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "AmStub"

    const-string v2, "is exiting multi-window mode, should not call again"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/c;->a:Z

    iget-object v0, p0, Lcom/android/server/am/c;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxLocalScreen()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_6

    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    if-eq v3, p1, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/b;->a(IZ)V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v0, v5}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    :cond_4
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->a(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/c;->n:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientation(Z)V

    move v0, v2

    goto :goto_0
.end method

.method public q(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->g(Lcom/android/server/am/ActivityRecord;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/c;->h:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/b;

    invoke-virtual {v0}, Lcom/android/server/am/b;->h()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
