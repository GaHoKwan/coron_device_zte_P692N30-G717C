.class public Lcom/zte/statistics/sdk/comm/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field private static listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/statistics/sdk/comm/NetworkStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/comm/NetworkStateReceiver;->listeners:Ljava/util/Set;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/zte/statistics/sdk/comm/NetworkStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 22
    sget-object v0, Lcom/zte/statistics/sdk/comm/NetworkStateReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public static clearListeners()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/zte/statistics/sdk/comm/NetworkStateReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 29
    const-string v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 30
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 31
    sget-object v3, Lcom/zte/statistics/sdk/comm/NetworkStateReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_0
    return-void

    .line 31
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/statistics/sdk/comm/NetworkStateListener;

    .line 32
    .local v1, listener:Lcom/zte/statistics/sdk/comm/NetworkStateListener;
    invoke-interface {v1, v2}, Lcom/zte/statistics/sdk/comm/NetworkStateListener;->stateChanged(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method
