.class public final Ltmsdk/fg/creator/ManagerCreatorF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile Et:Ltmsdk/fg/creator/ManagerCreatorF;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ltmsdk/common/BaseManager;",
            ">;",
            "Ltmsdk/common/BaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private tI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ltmsdk/common/BaseManager;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Ltmsdk/common/BaseManager;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/fg/creator/ManagerCreatorF;->Et:Ltmsdk/fg/creator/ManagerCreatorF;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/creator/ManagerCreatorF;->tH:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/creator/ManagerCreatorF;->tI:Ljava/util/HashMap;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/creator/ManagerCreatorF;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private d(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltmsdk/fg/creator/BaseManagerF;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 58
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "the param of getManager can\'t be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 63
    .local v2, manager:Ltmsdk/fg/creator/BaseManagerF;,"TT;"
    monitor-enter p1

    .line 64
    :try_start_0
    iget-object v4, p0, Ltmsdk/fg/creator/ManagerCreatorF;->tH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltmsdk/fg/creator/BaseManagerF;

    move-object v2, v0

    .line 66
    if-nez v2, :cond_1

    .line 67
    iget-object v4, p0, Ltmsdk/fg/creator/ManagerCreatorF;->tI:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 68
    .local v3, softmanager:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<+Ltmsdk/common/BaseManager;>;"
    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltmsdk/fg/creator/BaseManagerF;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v3           #softmanager:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<+Ltmsdk/common/BaseManager;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 75
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltmsdk/fg/creator/BaseManagerF;

    move-object v2, v0

    .line 76
    iget-object v4, p0, Ltmsdk/fg/creator/ManagerCreatorF;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Ltmsdk/fg/creator/BaseManagerF;->onCreate(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v2}, Ltmsdk/fg/creator/BaseManagerF;->getSingletonType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 79
    iget-object v4, p0, Ltmsdk/fg/creator/ManagerCreatorF;->tH:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    return-object v2

    .line 80
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ltmsdk/fg/creator/BaseManagerF;->getSingletonType()I

    move-result v4

    if-nez v4, :cond_2

    .line 81
    iget-object v4, p0, Ltmsdk/fg/creator/ManagerCreatorF;->tI:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 88
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method

.method public static getManager(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltmsdk/fg/creator/BaseManagerF;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ltmsdk/fg/creator/ManagerCreatorF;->hi()Ltmsdk/fg/creator/ManagerCreatorF;

    move-result-object v0

    invoke-direct {v0, p0}, Ltmsdk/fg/creator/ManagerCreatorF;->d(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;

    move-result-object v0

    return-object v0
.end method

.method static hi()Ltmsdk/fg/creator/ManagerCreatorF;
    .locals 3

    .prologue
    .line 31
    sget-object v1, Ltmsdk/fg/creator/ManagerCreatorF;->Et:Ltmsdk/fg/creator/ManagerCreatorF;

    if-nez v1, :cond_1

    .line 32
    const-class v2, Ltmsdk/fg/creator/ManagerCreatorF;

    monitor-enter v2

    .line 33
    :try_start_0
    sget-object v1, Ltmsdk/fg/creator/ManagerCreatorF;->Et:Ltmsdk/fg/creator/ManagerCreatorF;

    if-nez v1, :cond_0

    .line 34
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, application:Landroid/content/Context;
    new-instance v1, Ltmsdk/fg/creator/ManagerCreatorF;

    invoke-direct {v1, v0}, Ltmsdk/fg/creator/ManagerCreatorF;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltmsdk/fg/creator/ManagerCreatorF;->Et:Ltmsdk/fg/creator/ManagerCreatorF;

    .line 37
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v1, Ltmsdk/fg/creator/ManagerCreatorF;->Et:Ltmsdk/fg/creator/ManagerCreatorF;

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
