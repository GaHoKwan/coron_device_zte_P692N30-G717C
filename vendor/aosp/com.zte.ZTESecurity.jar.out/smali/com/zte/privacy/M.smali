.class Lcom/zte/privacy/M;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEPermissionEventUtils"

.field private static final ir:Ljava/lang/String; = "permission.intent.extra.package"

.field private static final is:Ljava/lang/String; = "permission.intent.extra.permission"

.field private static final it:Ljava/lang/String; = "permission.intent.extra.eventType"

.field private static final iu:Ljava/lang/String; = "permission.intent.extra.needNotify"

.field private static final iv:Ljava/lang/String; = "permission.intent.action.PERMISSION_EVENT"

.field private static final iw:Ljava/lang/String; = "permission.intent.action.ANTI_PHONE_RECORDING_EVENT"


# instance fields
.field private iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

.field final ix:Ljava/util/HashMap;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/zte/privacy/M;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iput-object p2, p0, Lcom/zte/privacy/M;->mContext:Landroid/content/Context;

    return-void
.end method

.method private H(I)V
    .locals 3

    iget-object v0, p0, Lcom/zte/privacy/M;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/j;

    iget-object v4, v0, Lcom/zte/privacy/j;->permission:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-wide p3, v0, Lcom/zte/privacy/j;->timeStamp:J

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/zte/privacy/j;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/zte/privacy/j;-><init>(Lcom/zte/privacy/M;Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private bE()V
    .locals 2

    iget-object v1, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/j;
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/M;->ix:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/j;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/zte/privacy/j;->permission:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/zte/privacy/as;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "permission.intent.action.PERMISSION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "permission.intent.extra.package"

    iget-object v2, p1, Lcom/zte/privacy/as;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permission.intent.extra.permission"

    iget-object v2, p1, Lcom/zte/privacy/as;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permission.intent.extra.eventType"

    iget v2, p1, Lcom/zte/privacy/as;->eventType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "permission.intent.extra.needNotify"

    iget-boolean v2, p1, Lcom/zte/privacy/as;->needNotify:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/privacy/M;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/M;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/j;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lcom/zte/privacy/j;->timeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zte/privacy/M;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "permission.intent.action.ANTI_PHONE_RECORDING_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "permission.intent.extra.package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/privacy/M;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
