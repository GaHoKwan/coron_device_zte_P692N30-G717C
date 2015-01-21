.class public Lcom/autonavi/xm/navigation/server/GVersion;
.super Ljava/lang/Object;


# instance fields
.field public nData1:S

.field public nData2:S

.field public nData3:S

.field public nData4:S

.field public szVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSSSLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData1:S

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData2:S

    iput-short p3, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData3:S

    iput-short p4, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData4:S

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    return-void
.end method
