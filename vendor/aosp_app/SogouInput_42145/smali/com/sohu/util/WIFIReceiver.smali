.class public Lcom/sohu/util/WIFIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private a:Lazi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/sohu/util/WIFIReceiver;->a:Lazi;

    .line 26
    iput-object v0, p0, Lcom/sohu/util/WIFIReceiver;->a:Landroid/net/wifi/WifiManager;

    .line 129
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/sohu/util/WIFIReceiver;->a:Lazi;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sohu/util/WIFIReceiver;->a:Lazi;

    invoke-interface {v0}, Lazi;->b()V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sohu/util/WIFIReceiver;->a:Lazi;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sohu/util/WIFIReceiver;->a:Lazi;

    invoke-interface {v0}, Lazi;->a()V

    goto :goto_0
.end method
