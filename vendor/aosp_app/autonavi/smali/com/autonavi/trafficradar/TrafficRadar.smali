.class public Lcom/autonavi/trafficradar/TrafficRadar;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native PlayWholeRouteTraffic(III[S)Z
.end method

.method public native SetIsExtract(Z)V
.end method

.method public native SetPlayFreq(I)V
.end method

.method public native SetPlayTrafficFlag(Z)V
.end method

.method public native SetRequestFreq(I)V
.end method

.method public native closeTrafficRadio()V
.end method

.method public native destroy()V
.end method

.method public native init(Lcom/autonavi/trafficradar/IFrameForTrafficRadar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native openTrafficRadio()V
.end method

.method public native playTrafficRadarAround(IDDI)I
.end method

.method public native playTrafficRadarManual(I[D)I
.end method

.method public native receiveNetData(I[BI)V
.end method

.method public native requestTrafficRadar(I[D)I
.end method

.method public native setGPSInfor(IDDDDIIIIII)V
.end method

.method public native setNetRequestState(II)V
.end method
