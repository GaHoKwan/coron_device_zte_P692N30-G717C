.class public Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotifyBatteryReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private batteryLevel:I

.field private batteryScale:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;->batteryLevel:I

    return v0
.end method

.method public getBatteryScale()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;->batteryScale:I

    return v0
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .parameter "batteryLevel"

    .prologue
    .line 89
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;->batteryLevel:I

    .line 90
    return-void
.end method

.method public setBatteryScale(I)V
    .locals 0
    .parameter "batteryScale"

    .prologue
    .line 93
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;->batteryScale:I

    .line 94
    return-void
.end method
