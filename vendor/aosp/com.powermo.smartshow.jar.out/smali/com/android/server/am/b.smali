.class public Lcom/android/server/am/b;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityStackStub"


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:I

.field c:Lcom/android/server/am/ActivityStack;

.field d:Landroid/graphics/Bitmap;

.field private e:Z

.field private f:Z

.field private final g:Ljava/lang/String;

.field private h:Lcom/android/server/am/c;

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Lcom/android/server/am/ActivityManagerService;

.field private l:Lcom/android/server/StubFullSmartShowContext;

.field private m:Lcom/android/server/wm/WmStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/am/b;->e:Z

    iput-boolean v0, p0, Lcom/android/server/am/b;->f:Z

    const-string v0, "force_update_multiwindow"

    iput-object v0, p0, Lcom/android/server/am/b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/b;->d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mScreen:I

    iput v0, p0, Lcom/android/server/am/b;->b:I

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    iput-boolean v0, p0, Lcom/android/server/am/b;->j:Z

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    check-cast p2, Lcom/android/server/StubFullSmartShowContext;

    iput-object p2, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    iput-object p1, p0, Lcom/android/server/am/b;->i:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getWmSmartShowStub()Lcom/android/server/wm/IWmSmartShowStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WmStub;

    iput-object v0, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 12

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v10, v3

    move v8, v3

    move-object v9, v4

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_5

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v9, :cond_3

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v11, v0

    move-object v1, v4

    move v5, v3

    :goto_1
    if-ltz v11, :cond_7

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v7, v1, :cond_0

    move-object v0, v1

    move v1, v5

    :goto_2
    add-int/lit8 v5, v11, -0x1

    move v11, v5

    move v5, v1

    move-object v1, v0

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v9, v8, :cond_6

    iget v0, v8, Lcom/android/server/am/TaskRecord;->screen:I

    iget v1, p0, Lcom/android/server/am/b;->b:I

    if-ne v0, v1, :cond_6

    iget v0, v8, Lcom/android/server/am/TaskRecord;->userId:I

    iget v1, v9, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v0, v1, :cond_6

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget-object v1, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const-string v5, "replace"

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-object v0, v8

    move v1, v6

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const-string v5, "replace"

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    :cond_4
    move v5, v8

    move-object v0, v9

    :goto_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v8, v5

    move-object v9, v0

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    move-object v0, v8

    move v1, v5

    goto :goto_2

    :cond_7
    move-object v0, v9

    goto :goto_3
.end method

.method private d(Ljava/util/ArrayList;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v9, v3

    move-object v1, v4

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_5

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->screen:I

    iget v6, p0, Lcom/android/server/am/b;->b:I

    if-ne v5, v6, :cond_2

    iget v5, v0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v6, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const-string v5, "replace"

    const/4 v6, 0x1

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    move-object v0, v8

    goto :goto_2
.end method

.method private h(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->k(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->isInBack:Z

    return-void
.end method

.method private i(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->k(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->isInBack:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    return v0
.end method

.method final a(Landroid/os/IBinder;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method a(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->getActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/util/ArrayList;I)Lcom/android/server/am/ActivityRecord;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/am/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v1, v2

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object v1, v2

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->d(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iput-object v2, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_3
    :goto_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method a()V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/b;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    move v8, v0

    :goto_0
    if-ltz v8, :cond_2

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-eq v1, v9, :cond_1

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.category.IDLER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const-string v5, "replace"

    const/4 v6, 0x1

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    :cond_1
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->getMaxScreen()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/b;->b:I

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/b;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "ActivityStackStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freezeLocked call for screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    iget v1, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v0, v1}, Lcom/android/server/StubFullSmartShowContext;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/b;->h()V

    iget-object v0, p0, Lcom/android/server/am/b;->d:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v2, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/android/server/am/c;->a(IILandroid/graphics/Bitmap;Z)Z

    goto :goto_0
.end method

.method final a(Lcom/android/server/am/ActivityRecord;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/res/Configuration;

    iget-object v7, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final a(Lcom/android/server/am/ActivityRecord;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    return-void
.end method

.method public a(Lcom/android/server/am/ActivityRecord;IIZ)V
    .locals 11

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Lcom/android/server/StubFullSmartShowContext;->getConfigDiff(IILjava/lang/Object;)I

    move-result v6

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/StubFullSmartShowContext;->isForcedOrientation(ILjava/lang/Object;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v2, "CONFIG_FORCE"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v3, "CONFIG_AUTO"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v5, "CONFIG_NERVER"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v2, :cond_0

    if-eqz v3, :cond_a

    :cond_0
    if-nez v5, :cond_a

    move v0, v1

    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v3, "RELAUNCH_FORCE"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    iget-object v2, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v3, "RELAUNCH_AUTO"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    iget-object v2, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v3, "RELAUNCH_NEVER"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v5, :cond_b

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    move v3, v1

    :goto_1
    if-nez v5, :cond_c

    if-eqz v8, :cond_c

    if-nez v9, :cond_c

    move v2, v1

    :goto_2
    if-nez v5, :cond_2

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    move v2, v1

    move v3, v4

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v8, "DISPLAY_CHANGE_NEVER"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    iget-object v5, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v9, "DISPLAY_CHANGE_AUTO"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/android/server/StubFullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-nez v8, :cond_d

    if-eqz v9, :cond_d

    move v5, v1

    :goto_3
    if-nez v8, :cond_3

    if-nez v9, :cond_3

    move v5, v1

    :cond_3
    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v6

    if-nez v2, :cond_5

    :cond_4
    if-eqz v3, :cond_10

    if-eqz v6, :cond_10

    :cond_5
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v2, v6

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move v2, v1

    :goto_4
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_6

    if-nez v5, :cond_7

    :cond_6
    if-eqz p4, :cond_9

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/am/b;->h(Lcom/android/server/am/ActivityRecord;)V

    if-eqz p4, :cond_e

    :cond_8
    :goto_5
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/b;->a(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_9
    return-void

    :cond_a
    move v0, v4

    goto/16 :goto_0

    :cond_b
    move v3, v4

    goto :goto_1

    :cond_c
    move v2, v4

    goto :goto_2

    :cond_d
    move v5, v4

    goto :goto_3

    :cond_e
    if-nez v7, :cond_f

    if-eqz v0, :cond_f

    if-eqz v2, :cond_8

    :cond_f
    move v4, v1

    goto :goto_5

    :cond_10
    move v2, v4

    goto :goto_4
.end method

.method final a(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/b;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityStackStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "schedule display changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WmStub;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2, v1}, Lcom/android/server/StubFullSmartShowContext;->getCurrentRemoteDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/b;->e:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityStackStub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v2, v1, v0}, Landroid/app/IApplicationThread;->scheduleDisplayChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;II)V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v4, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v2, v3, v4, v1, v0}, Landroid/app/IApplicationThread;->scheduleDisplayChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "ActivityStackStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity display change error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final a(Ljava/util/ArrayList;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->screen:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    iget v3, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/StubFullSmartShowContext;->getDstDisplayId(ILjava/lang/Object;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move-object v1, v2

    :goto_1
    if-lez v3, :cond_8

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->c(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iput-object v7, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v7

    if-ne v7, v4, :cond_7

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v2, :cond_5

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, p0, Lcom/android/server/am/b;->b:I

    iput v7, v2, Lcom/android/server/am/TaskRecord;->screen:I

    iput-boolean v9, v2, Lcom/android/server/am/TaskRecord;->isInBack:Z

    iget-boolean v7, p0, Lcom/android/server/am/b;->j:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v2, v9}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_5
    if-nez v1, :cond_6

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_6

    move-object v1, v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->k(Lcom/android/server/am/ActivityRecord;)V

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/b;->c(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, v5, v10, v4, v10}, Lcom/android/server/wm/WmStub;->a(Ljava/util/List;ZIZ)V

    iget-object v0, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, v6, v10, v9, v10}, Lcom/android/server/wm/WmStub;->a(Ljava/util/List;ZIZ)V

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v1, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v0, p1, v1, v9}, Lcom/android/server/am/c;->a(Ljava/util/ArrayList;IZ)V

    goto/16 :goto_0
.end method

.method final a(Ljava/util/ArrayList;Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/b;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    iget v1, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StubFullSmartShowContext;->getDstDisplayId(ILjava/lang/Object;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget v0, p0, Lcom/android/server/am/b;->b:I

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->screen:I

    :cond_2
    move v3, v4

    move-object v1, v2

    :goto_1
    if-ge v3, v5, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->c(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iput-object v9, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v9

    if-ne v9, v6, :cond_7

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v9, v2, :cond_5

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, p0, Lcom/android/server/am/b;->b:I

    iput v9, v2, Lcom/android/server/am/TaskRecord;->screen:I

    iput-boolean v4, v2, Lcom/android/server/am/TaskRecord;->isInBack:Z

    iget-boolean v9, p0, Lcom/android/server/am/b;->j:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v2, v10}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_5
    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_6

    move-object v1, v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->f(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->k(Lcom/android/server/am/ActivityRecord;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService;->layoutLock(Z)V

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/WindowManagerService;->startSwitchFreeze(Landroid/os/IBinder;I)V

    iget-object v0, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, v7, v4, v6, p2}, Lcom/android/server/wm/WmStub;->a(Ljava/util/List;ZIZ)V

    iget-object v0, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, v8, v4, v4, p2}, Lcom/android/server/wm/WmStub;->a(Ljava/util/List;ZIZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/b;->a(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->layoutLock(Z)V

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget-boolean v0, v0, Lcom/android/server/am/c;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    const-string v1, "force_update_multiwindow"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StubFullSmartShowContext;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v1, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v0, p1, v1, v4}, Lcom/android/server/am/c;->a(Ljava/util/ArrayList;IZ)V

    goto/16 :goto_0
.end method

.method final a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/b;->a(ZZ)V

    return-void
.end method

.method final a(ZZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    iget v1, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v0, v1, v9}, Lcom/android/server/StubFullSmartShowContext;->getDstDisplayId(ILjava/lang/Object;)I

    move-result v6

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v0, Lcom/android/server/am/ActivityRecord;->isHome:Z

    if-nez v7, :cond_0

    iget-boolean v7, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v7

    if-ne v7, v6, :cond_3

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->f(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->k(Lcom/android/server/am/ActivityRecord;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    if-nez v7, :cond_2

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->a(Lcom/android/server/am/ActivityRecord;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v3

    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/wm/WindowManagerService;->setFocusedApp(Landroid/os/IBinder;ZI)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, v4, v2, v6, v8}, Lcom/android/server/wm/WmStub;->a(Ljava/util/List;ZIZ)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, v5, v2, v2, v8}, Lcom/android/server/wm/WmStub;->a(Ljava/util/List;ZIZ)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v3, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    :cond_8
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v9, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    :cond_9
    return-void
.end method

.method final a(I)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v3, v0}, Lcom/android/server/am/c;->b(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final a(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/b;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityStackStub"

    const-string v2, "A wrong call, user should never request to clean mainStack\'s task"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_1
    if-ltz v5, :cond_5

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_3

    move-object v0, v3

    :goto_2
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    move-object v4, v0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_7

    if-eq v3, v4, :cond_7

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v7, "android.intent.category.IDLER"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->next:Lcom/android/server/am/TaskRecord;

    if-ne v0, v4, :cond_4

    move-object v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    move v0, v2

    :goto_3
    if-ge v3, v4, :cond_6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->f(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget-object v5, v5, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v5, v0}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget-object v0, v0, Lcom/android/server/am/c;->d:Lcom/android/server/am/b;

    invoke-virtual {v0, v2}, Lcom/android/server/am/b;->d(I)V

    move v0, v1

    goto :goto_0

    :cond_7
    move-object v0, v4

    goto :goto_2
.end method

.method final b()Lcom/android/server/am/ActivityRecord;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method final b(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/b;->e(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final b(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public b(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/b;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/b;->c()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->startIdleActivityLocked(IZ)Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/b;->i(I)V

    goto :goto_0
.end method

.method b(IZ)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->okToShowExtLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v4, v0}, Lcom/android/server/am/c;->b(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/b;->b:I

    return v0
.end method

.method public c(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/b;->h(I)V

    const/4 v0, 0x0

    return v0
.end method

.method final c(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", should not be moved in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v1, p0, Lcom/android/server/am/b;->b:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v1, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v0, v1, p1, v4}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of expection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has exisited in stopping list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "ActivityStackStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It is strange, and there should not be a move action when system is going to sleep or slept"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of expection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has exisited in LRU list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/b;->i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :goto_2
    if-ltz v2, :cond_5

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_3

    add-int/lit8 v0, v2, -0x1

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v3}, Lcom/android/server/StubFullSmartShowContext;->getMode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v3}, Lcom/android/server/StubFullSmartShowContext;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getSmartShowData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/StubFullSmartShowContext;->shouldKeepTranslucent(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_2
.end method

.method final d(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    return-void
.end method

.method final d(Lcom/android/server/am/ActivityRecord;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v2, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v3, p0, Lcom/android/server/am/b;->b:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    iget-object v2, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget v3, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v2, v3, v5, v0}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, v5, v5, v5}, Lcom/android/server/am/ActivityStack;->activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_3
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v2, :cond_4

    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final e(Lcom/android/server/am/ActivityRecord;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    return v0
.end method

.method final e()Ljava/util/ArrayList;
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_4

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v0, v1}, Lcom/android/server/am/c;->b(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const-string v5, "replace"

    const/4 v6, 0x1

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/am/b;->d(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    :cond_4
    return-object v8
.end method

.method e(I)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method final f(I)Ljava/util/ArrayList;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/b;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/c;->a(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    iget-object v0, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    iget-boolean v0, v0, Lcom/android/server/am/c;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0x200b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->prev:Lcom/android/server/am/TaskRecord;

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/b;->a(Ljava/util/ArrayList;I)Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method final f()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    return-void
.end method

.method final f(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->mSkipedOrientation:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->mSkipedOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->mSkipedOrientation:I

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSkipedConfigurationLocked()V

    goto :goto_0
.end method

.method g(I)V
    .locals 8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/b;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityStackStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unfreezeLocked for screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/b;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityStackStub"

    const-string v1, "Non-Cover activity is found."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isPauseCover()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isConflictCover()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const-string v5, "replace"

    const/4 v6, 0x1

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method g(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    return-void
.end method

.method final g()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v1, v0}, Lcom/android/server/am/c;->b(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ActivityStackStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStackThumbnailLocked for activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/b;->b()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenshot return null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/server/am/b;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method final h(Lcom/android/server/am/ActivityRecord;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    iget-object v2, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->getOrientation(Landroid/view/IApplicationToken;)I

    move-result v4

    iget-object v2, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v5

    iget-object v2, p0, Lcom/android/server/am/b;->m:Lcom/android/server/wm/WmStub;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WmStub;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/b;->l:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v2, v3}, Lcom/android/server/StubFullSmartShowContext;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v6, v2, :cond_0

    move v1, v0

    :cond_0
    const-string v2, "ActivityStackStub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adjust sensor rotation for external screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, v5, 0x3

    or-int/lit8 v0, v0, 0x0

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v0, v4

    :goto_1
    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v4, p0, Lcom/android/server/am/b;->k:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2, v4, v3, v0}, Landroid/app/IApplicationThread;->scheduleSensorChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    const/high16 v0, -0x8000

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "ActivityStackStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity sensor change error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method final i(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final j(Lcom/android/server/am/ActivityRecord;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/b;->h:Lcom/android/server/am/c;

    invoke-virtual {v1, v0}, Lcom/android/server/am/c;->b(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getLastDisplayId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->saveLastDisplayId()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/am/b;->a(Lcom/android/server/am/ActivityRecord;IIZ)V

    :cond_0
    return-void
.end method
