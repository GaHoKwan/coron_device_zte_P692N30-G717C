.class final Ltmsdkobf/gk$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/gk;->h(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic nv:Ltmsdkobf/gk;


# direct methods
.method constructor <init>(Ltmsdkobf/gk;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ltmsdkobf/gk$1;->nv:Ltmsdkobf/gk;

    .line 123
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ltmsdkobf/gk$1;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->b(Ltmsdkobf/gk;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/gk$1;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->b(Ltmsdkobf/gk;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Ltmsdkobf/gk$1;->nv:Ltmsdkobf/gk;

    invoke-static {v0}, Ltmsdkobf/gk;->b(Ltmsdkobf/gk;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 128
    :cond_0
    return-void
.end method
