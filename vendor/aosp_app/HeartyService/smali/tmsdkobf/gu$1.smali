.class Ltmsdkobf/gu$1;
.super Ltmsdkobf/gu$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/gu;->b(Landroid/content/pm/ServiceInfo;)Ltmsdkobf/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ov:Ljava/lang/Object;

.field final synthetic ow:Ltmsdkobf/gu;


# direct methods
.method constructor <init>(Ltmsdkobf/gu;Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Ltmsdkobf/gu$1;->ow:Ltmsdkobf/gu;

    iput-object p4, p0, Ltmsdkobf/gu$1;->ov:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Ltmsdkobf/gu$a;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 254
    invoke-static {p2}, Ltmsdkobf/ib$a;->d(Landroid/os/IBinder;)Ltmsdkobf/ib;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/gu$1;->oA:Ltmsdkobf/ib;

    .line 255
    iget-object v0, p0, Ltmsdkobf/gu$1;->ow:Ltmsdkobf/gu;

    invoke-static {v0}, Ltmsdkobf/gu;->a(Ltmsdkobf/gu;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/gu$1;->oz:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Ltmsdkobf/gu$1;->oA:Ltmsdkobf/ib;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Ltmsdkobf/gu$1;->ov:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/gu$1;->ov:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 264
    iget-object v0, p0, Ltmsdkobf/gu$1;->ow:Ltmsdkobf/gu;

    invoke-static {v0}, Ltmsdkobf/gu;->a(Ltmsdkobf/gu;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/gu$1;->oz:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/gu$1;->oA:Ltmsdkobf/ib;

    .line 266
    return-void
.end method
