.class public Lcom/autonavi/xm/navigation/server/location/GPulseData;
.super Ljava/lang/Object;


# instance fields
.field public nCount:I

.field public nInterval:I

.field public nTimestamp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nTimestamp:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nCount:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nInterval:I

    return-void
.end method
