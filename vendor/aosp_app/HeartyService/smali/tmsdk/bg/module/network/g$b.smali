.class final Ltmsdk/bg/module/network/g$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/network/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic wa:Ltmsdk/bg/module/network/g;

.field private wg:Z


# direct methods
.method private constructor <init>(Ltmsdk/bg/module/network/g;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Ltmsdk/bg/module/network/g$b;->wa:Ltmsdk/bg/module/network/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/bg/module/network/g;Ltmsdk/bg/module/network/g$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/g$b;-><init>(Ltmsdk/bg/module/network/g;)V

    return-void
.end method


# virtual methods
.method public l(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 316
    iget-boolean v1, p0, Ltmsdk/bg/module/network/g$b;->wg:Z

    if-nez v1, :cond_0

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltmsdk/bg/module/network/g$b;->wg:Z

    .line 321
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 324
    iget-boolean v0, p0, Ltmsdk/bg/module/network/g$b;->wg:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/bg/module/network/g$b;->wg:Z

    .line 328
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Ltmsdk/bg/module/network/g$b;->wa:Ltmsdk/bg/module/network/g;

    invoke-static {v2}, Ltmsdk/bg/module/network/g;->b(Ltmsdk/bg/module/network/g;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/d;

    .line 310
    .local v1, monitor:Ltmsdk/bg/module/network/d;
    invoke-virtual {v1}, Ltmsdk/bg/module/network/d;->ez()V

    goto :goto_0

    .line 313
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #monitor:Ltmsdk/bg/module/network/d;
    :cond_0
    return-void
.end method
