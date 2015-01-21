.class Lcom/plugin/installapk/newrttc_v2/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;


# direct methods
.method constructor <init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/g;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/g;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/g;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/g;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->f(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V

    goto :goto_0
.end method
