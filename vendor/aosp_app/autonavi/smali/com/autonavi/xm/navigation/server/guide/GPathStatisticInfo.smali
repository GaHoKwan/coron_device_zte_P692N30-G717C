.class public Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public nRemainCharge:I

.field public nRemainChargeDis:I

.field public nRemainCircleDis:I

.field public nRemainDis:I

.field public nRemainHighDis:I

.field public nRemainHighwayDis:I

.field public nRemainLowDis:I

.field public nRemainMidDis:I

.field public nRemainTollGate:I

.field public nRemainTrafficLight:I

.field public nTime:I

.field public nTotalCharge:I

.field public nTotalChargeDis:I

.field public nTotalCircleDis:I

.field public nTotalDis:I

.field public nTotalHighDis:I

.field public nTotalHighwayDis:I

.field public nTotalLowDis:I

.field public nTotalMidDis:I

.field public nTotalTollGate:I

.field public nTotalTrafficLight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalDis:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalChargeDis:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalHighwayDis:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalCircleDis:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalHighDis:I

    iput p6, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalMidDis:I

    iput p7, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalLowDis:I

    iput p8, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalCharge:I

    iput p9, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalTollGate:I

    iput p10, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalTrafficLight:I

    iput p11, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainDis:I

    iput p12, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainChargeDis:I

    iput p13, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainHighwayDis:I

    iput p14, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainCircleDis:I

    move/from16 v0, p15

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainHighDis:I

    move/from16 v0, p16

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainMidDis:I

    move/from16 v0, p17

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainLowDis:I

    move/from16 v0, p18

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainCharge:I

    move/from16 v0, p19

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainTollGate:I

    move/from16 v0, p20

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nRemainTrafficLight:I

    move/from16 v0, p21

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTime:I

    return-void
.end method
