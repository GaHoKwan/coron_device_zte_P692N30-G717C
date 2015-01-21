.class public final Ltmsdk/common/ManagerCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile xe:Ltmsdk/common/ManagerCreator;


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
    .line 17
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/common/ManagerCreator;->xe:Ltmsdk/common/ManagerCreator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/ManagerCreator;->tH:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/ManagerCreator;->tI:Ljava/util/HashMap;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/ManagerCreator;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private b(Ljava/lang/Class;)Ltmsdk/common/BaseManager;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltmsdk/common/BaseManager;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 60
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "the param of getManager can\'t be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 65
    .local v2, manager:Ltmsdk/common/BaseManager;,"TT;"
    monitor-enter p1

    .line 66
    :try_start_0
    iget-object v4, p0, Ltmsdk/common/ManagerCreator;->tH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltmsdk/common/BaseManager;

    move-object v2, v0

    .line 68
    if-nez v2, :cond_1

    .line 69
    iget-object v4, p0, Ltmsdk/common/ManagerCreator;->tI:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 70
    .local v3, softmanager:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<+Ltmsdk/common/BaseManager;>;"
    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltmsdk/common/BaseManager;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v3           #softmanager:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<+Ltmsdk/common/BaseManager;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 77
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltmsdk/common/BaseManager;

    move-object v2, v0

    .line 78
    iget-object v4, p0, Ltmsdk/common/ManagerCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Ltmsdk/common/BaseManager;->onCreate(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v2}, Ltmsdk/common/BaseManager;->getSingletonType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 81
    iget-object v4, p0, Ltmsdk/common/ManagerCreator;->tH:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    return-object v2

    .line 82
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ltmsdk/common/BaseManager;->getSingletonType()I

    move-result v4

    if-nez v4, :cond_2

    .line 83
    iget-object v4, p0, Ltmsdk/common/ManagerCreator;->tI:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method

.method static eN()Ltmsdk/common/ManagerCreator;
    .locals 3

    .prologue
    .line 33
    sget-object v1, Ltmsdk/common/ManagerCreator;->xe:Ltmsdk/common/ManagerCreator;

    if-nez v1, :cond_1

    .line 34
    const-class v2, Ltmsdk/common/ManagerCreator;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v1, Ltmsdk/common/ManagerCreator;->xe:Ltmsdk/common/ManagerCreator;

    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, application:Landroid/content/Context;
    new-instance v1, Ltmsdk/common/ManagerCreator;

    invoke-direct {v1, v0}, Ltmsdk/common/ManagerCreator;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltmsdk/common/ManagerCreator;->xe:Ltmsdk/common/ManagerCreator;

    .line 39
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v1, Ltmsdk/common/ManagerCreator;->xe:Ltmsdk/common/ManagerCreator;

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getManager(Ljava/lang/Class;)Ltmsdk/common/BaseManager;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltmsdk/common/BaseManager;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ltmsdk/common/ManagerCreator;->eN()Ltmsdk/common/ManagerCreator;

    move-result-object v0

    invoke-direct {v0, p0}, Ltmsdk/common/ManagerCreator;->b(Ljava/lang/Class;)Ltmsdk/common/BaseManager;

    move-result-object v0

    return-object v0
.end method
