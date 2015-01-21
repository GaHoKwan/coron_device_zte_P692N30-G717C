.class public Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public nNumberOfStat:I

.field public pPathStat:[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;->nNumberOfStat:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;->pPathStat:[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;

    return-void
.end method
