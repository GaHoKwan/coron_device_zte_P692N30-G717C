.class Lcom/plugin/installapk/newrttc_v2/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/plugin/installapk/newrttc_v2/i;


# direct methods
.method private constructor <init>(Lcom/plugin/installapk/newrttc_v2/i;)V
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/j;->a:Lcom/plugin/installapk/newrttc_v2/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/plugin/installapk/newrttc_v2/i;Lcom/plugin/installapk/newrttc_v2/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/j;-><init>(Lcom/plugin/installapk/newrttc_v2/i;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.plugin.installapk.realtraffic.state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "real_traffic_if_start"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/j;->a:Lcom/plugin/installapk/newrttc_v2/i;

    invoke-static {v1}, Lcom/plugin/installapk/newrttc_v2/i;->a(Lcom/plugin/installapk/newrttc_v2/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/j;->a:Lcom/plugin/installapk/newrttc_v2/i;

    invoke-static {v0, v2}, Lcom/plugin/installapk/newrttc_v2/i;->a(Lcom/plugin/installapk/newrttc_v2/i;Z)Z

    const-string v0, "log"

    const-string v1, "\u670d\u52a1\u5f00\u542f\uff0c\u81ea\u52a8\u8def\u51b5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.realtraffic.autogetcontent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/j;->a:Lcom/plugin/installapk/newrttc_v2/i;

    invoke-static {v1}, Lcom/plugin/installapk/newrttc_v2/i;->b(Lcom/plugin/installapk/newrttc_v2/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "real_traffic_if_start"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/j;->a:Lcom/plugin/installapk/newrttc_v2/i;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/i;->a(Lcom/plugin/installapk/newrttc_v2/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/j;->a:Lcom/plugin/installapk/newrttc_v2/i;

    invoke-static {v0, v2}, Lcom/plugin/installapk/newrttc_v2/i;->a(Lcom/plugin/installapk/newrttc_v2/i;Z)Z

    const-string v0, "log"

    const-string v1, "\u670d\u52a1\u5f00\u542f\uff0c\u5173\u95ed\u8def\u51b5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.realtraffic.removeautogetcontent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/j;->a:Lcom/plugin/installapk/newrttc_v2/i;

    invoke-static {v1}, Lcom/plugin/installapk/newrttc_v2/i;->b(Lcom/plugin/installapk/newrttc_v2/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
