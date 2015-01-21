.class public Lcom/plugin/installapk/newrttc_v2/NewRttcService;
.super Landroid/app/Service;


# static fields
.field private static j:Lcom/autonavi/trafficradar/TrafficRadar;

.field private static k:Lcom/plugin/installapk/newrttc_v2/a;


# instance fields
.field public a:D

.field public b:D

.field private c:Z

.field private d:Lcom/plugin/installapk/newrttc_v2/h;

.field private e:Lcom/plugin/installapk/newrttc_v2/c;

.field private f:[Ljava/lang/String;

.field private g:Lcom/plugin/installapk/newrttc_v2/g;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TrafficRadar"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->c:Z

    iput-wide v1, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a:D

    iput-wide v1, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b:D

    iput-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->h:Z

    iput-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->i:Z

    return-void
.end method

.method private a(I)V
    .locals 1

    sget-object v0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->j:Lcom/autonavi/trafficradar/TrafficRadar;

    invoke-virtual {v0, p1}, Lcom/autonavi/trafficradar/TrafficRadar;->SetRequestFreq(I)V

    return-void
.end method

.method static synthetic a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.plugin.installapk.realtraffic.state"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "real_traffic_if_start"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->c:Z

    return p1
.end method

.method static synthetic a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->f:[Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/plugin/installapk/newrttc_v2/g;

    invoke-direct {v0, p0}, Lcom/plugin/installapk/newrttc_v2/g;-><init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->g:Lcom/plugin/installapk/newrttc_v2/g;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->g:Lcom/plugin/installapk/newrttc_v2/g;

    invoke-virtual {p0, v1, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/autonavi/trafficradar/TrafficRadar;

    invoke-direct {v0}, Lcom/autonavi/trafficradar/TrafficRadar;-><init>()V

    sput-object v0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->j:Lcom/autonavi/trafficradar/TrafficRadar;

    new-instance v0, Lcom/plugin/installapk/newrttc_v2/a;

    sget-object v1, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->j:Lcom/autonavi/trafficradar/TrafficRadar;

    new-instance v2, Lcom/plugin/installapk/newrttc_v2/f;

    invoke-direct {v2, p0}, Lcom/plugin/installapk/newrttc_v2/f;-><init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/plugin/installapk/newrttc_v2/a;-><init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Lcom/autonavi/trafficradar/TrafficRadar;Lcom/plugin/installapk/newrttc_v2/f;)V

    sput-object v0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->k:Lcom/plugin/installapk/newrttc_v2/a;

    new-instance v0, Lcom/plugin/installapk/newrttc_v2/c;

    sget-object v1, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->j:Lcom/autonavi/trafficradar/TrafficRadar;

    invoke-direct {v0, v1, p0}, Lcom/plugin/installapk/newrttc_v2/c;-><init>(Lcom/autonavi/trafficradar/TrafficRadar;Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->e:Lcom/plugin/installapk/newrttc_v2/c;

    invoke-direct {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->c()V

    invoke-direct {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d()V

    return-void
.end method

.method static synthetic b(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->h:Z

    return p1
.end method

.method private c()V
    .locals 5

    const-string v1, ""

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "1234567890123456"

    :cond_2
    sget-object v1, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->j:Lcom/autonavi/trafficradar/TrafficRadar;

    sget-object v2, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->k:Lcom/plugin/installapk/newrttc_v2/a;

    const-string v3, "AN_HTC_aNav_ADR_PC"

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/autonavi/trafficradar/TrafficRadar;->init(Lcom/autonavi/trafficradar/IFrameForTrafficRadar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "autonavi_newRttc"

    const-string v1, "TBT\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const-string v0, "autonavi_newRttc"

    const-string v1, "TBT\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Lcom/plugin/installapk/newrttc_v2/c;
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->e:Lcom/plugin/installapk/newrttc_v2/c;

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/plugin/installapk/newrttc_v2/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/plugin/installapk/newrttc_v2/h;-><init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Lcom/plugin/installapk/newrttc_v2/f;)V

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d:Lcom/plugin/installapk/newrttc_v2/h;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.plugin.installapk.realtraffic.manualgetcontent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.plugin.installapk.realtraffic.autogetcontent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.plugin.installapk.realtraffic.removeautogetcontent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d:Lcom/plugin/installapk/newrttc_v2/h;

    invoke-virtual {p0, v1, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->e:Lcom/plugin/installapk/newrttc_v2/c;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/c;->a()V

    return-void
.end method

.method static synthetic e(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V
    .locals 0

    invoke-direct {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->e()V

    return-void
.end method

.method static synthetic f(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V
    .locals 0

    invoke-direct {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->h:Z

    iput-boolean v7, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->i:Z

    sget-object v0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->j:Lcom/autonavi/trafficradar/TrafficRadar;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a:D

    iget-wide v4, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b:D

    const/16 v6, 0x3e8

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/trafficradar/TrafficRadar;->playTrafficRadarAround(IDDI)I

    move-result v0

    if-eq v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->h:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->h:Z

    :cond_0
    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->i:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->i:Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8def\u51b5\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.plugin.action.play_tts"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "plugin_playtts_content"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "real_traffic_type"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->e:Lcom/plugin/installapk/newrttc_v2/c;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/c;->c()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "autonavi_newRttc"

    const-string v1, "[NewRttcService] onCreate "

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/e;->a(Z)V

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/e;->b(Z)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->d:Lcom/plugin/installapk/newrttc_v2/h;

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->e:Lcom/plugin/installapk/newrttc_v2/c;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/c;->d()V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->g:Lcom/plugin/installapk/newrttc_v2/g;

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->j:Lcom/autonavi/trafficradar/TrafficRadar;

    invoke-virtual {v0}, Lcom/autonavi/trafficradar/TrafficRadar;->destroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Z)V

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/e;->a(Z)V

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_newRttc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[real traffic] service is start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/plugin/installapk/newrttc_v2/e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
