.class public Ltmsdkobf/jh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltmsdkobf/jg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltmsdkobf/jh;->ta:Ljava/util/HashMap;

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;
    .locals 5
    .parameter "context"
    .parameter "prefFileName"

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, configMgr:Ltmsdkobf/jg;
    sget-object v4, Ltmsdkobf/jh;->ta:Ljava/util/HashMap;

    monitor-enter v4

    .line 28
    :try_start_0
    sget-object v3, Ltmsdkobf/jh;->ta:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ltmsdkobf/jg;

    move-object v1, v0

    .line 29
    if-nez v1, :cond_0

    .line 33
    new-instance v2, Ltmsdkobf/jf;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Ltmsdkobf/jf;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v1           #configMgr:Ltmsdkobf/jg;
    .local v2, configMgr:Ltmsdkobf/jg;
    :try_start_1
    sget-object v3, Ltmsdkobf/jh;->ta:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 38
    .end local v2           #configMgr:Ltmsdkobf/jg;
    .restart local v1       #configMgr:Ltmsdkobf/jg;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 39
    return-object v1

    .line 38
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #configMgr:Ltmsdkobf/jg;
    .restart local v2       #configMgr:Ltmsdkobf/jg;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #configMgr:Ltmsdkobf/jg;
    .restart local v1       #configMgr:Ltmsdkobf/jg;
    goto :goto_0
.end method
