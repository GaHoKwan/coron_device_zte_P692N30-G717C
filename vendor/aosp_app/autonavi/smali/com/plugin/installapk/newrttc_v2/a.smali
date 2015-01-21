.class public Lcom/plugin/installapk/newrttc_v2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/trafficradar/IFrameForTrafficRadar;


# instance fields
.field private a:Lcom/autonavi/trafficradar/TrafficRadar;

.field private b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

.field private c:Lcom/plugin/installapk/newrttc_v2/f;


# direct methods
.method public constructor <init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Lcom/autonavi/trafficradar/TrafficRadar;Lcom/plugin/installapk/newrttc_v2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/a;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    iput-object p2, p0, Lcom/plugin/installapk/newrttc_v2/a;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iput-object p3, p0, Lcom/plugin/installapk/newrttc_v2/a;->c:Lcom/plugin/installapk/newrttc_v2/f;

    return-void
.end method


# virtual methods
.method public hideTrafficPanel()V
    .locals 0

    return-void
.end method

.method public netRequestHttp(IIILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 10

    sget-boolean v1, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi_newRttc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netRequestHttp] iModuleID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    connectID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   head="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     dataLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/plugin/installapk/newrttc_v2/b;

    iget-object v2, p0, Lcom/plugin/installapk/newrttc_v2/a;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget-object v9, p0, Lcom/plugin/installapk/newrttc_v2/a;->c:Lcom/plugin/installapk/newrttc_v2/f;

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/plugin/installapk/newrttc_v2/b;-><init>(Lcom/autonavi/trafficradar/TrafficRadar;IILjava/lang/String;Ljava/lang/String;[BILcom/plugin/installapk/newrttc_v2/f;)V

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/b;->start()V

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/b;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-boolean v2, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "autonavi_newRttc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[netRequestHttp]ste  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public playNaviSound(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_newRttc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[playNaviSound]  soundStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/a;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v0, p1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public requestTrafficInfor()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v3

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/a;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    invoke-virtual {v1, v3, v0}, Lcom/autonavi/trafficradar/TrafficRadar;->requestTrafficRadar(I[D)I

    return-void
.end method

.method public showTrafficPanel(I[B)V
    .locals 0

    return-void
.end method
