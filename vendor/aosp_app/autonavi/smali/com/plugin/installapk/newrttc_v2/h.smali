.class Lcom/plugin/installapk/newrttc_v2/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;


# direct methods
.method private constructor <init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Lcom/plugin/installapk/newrttc_v2/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/h;-><init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NewRttcService]onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.plugin.installapk.realtraffic.manualgetcontent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    const-string v2, "gps_info"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/k;->a()Lcom/plugin/installapk/newrttc_v2/k;

    move-result-object v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->c(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a:D

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->c(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b:D

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Lcom/plugin/installapk/newrttc_v2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/c;->b()V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Lcom/plugin/installapk/newrttc_v2/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/plugin/installapk/newrttc_v2/c;->a(Z)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Lcom/plugin/installapk/newrttc_v2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/c;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/k;->a()Lcom/plugin/installapk/newrttc_v2/k;

    move-result-object v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v2}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.plugin.installapk.realtraffic.autogetcontent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/k;->a()Lcom/plugin/installapk/newrttc_v2/k;

    move-result-object v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->e(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/plugin/installapk/newrttc_v2/e;->b(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.plugin.installapk.realtraffic.setrequestfreq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request_fred"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.plugin.installapk.realtraffic.removeautogetcontent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/h;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Lcom/plugin/installapk/newrttc_v2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/c;->d()V

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/plugin/installapk/newrttc_v2/e;->b(Z)V

    goto/16 :goto_0
.end method
