.class public abstract Lcom/zte/zdm/heartyservice/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/heartyservice/a/b;


# static fields
.field protected static e:Lcom/zte/zdm/heartyservice/a/a; = null

.field private static final f:Ljava/lang/String; = "HeartyService"

.field private static g:Landroid/os/Environment;

.field private static h:Ljava/util/HashMap;


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:I

.field protected d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/heartyservice/a/a;->g:Landroid/os/Environment;

    sput-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/heartyservice/a/a;->a:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/zte/zdm/heartyservice/a/a;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/zdm/heartyservice/a/a;->c:I

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Landroid/os/Environment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/zdm/heartyservice/a/a;->a(Landroid/os/Environment;)V

    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "HeartyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storage reflect Get Method error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/os/Environment;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/zdm/heartyservice/a/a;->a(Landroid/os/Environment;)V

    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "HeartyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storage reflect Get Method error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/os/Environment;)V
    .locals 6

    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/zte/zdm/heartyservice/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/a/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized c()Landroid/os/Environment;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->g:Landroid/os/Environment;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Environment;

    invoke-direct {v0}, Landroid/os/Environment;-><init>()V

    sput-object v0, Lcom/zte/zdm/heartyservice/a/a;->g:Landroid/os/Environment;

    :cond_0
    sget-object v0, Lcom/zte/zdm/heartyservice/a/a;->g:Landroid/os/Environment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
