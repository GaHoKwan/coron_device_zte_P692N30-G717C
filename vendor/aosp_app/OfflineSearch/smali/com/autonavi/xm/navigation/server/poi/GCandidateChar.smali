.class public Lcom/autonavi/xm/navigation/server/poi/GCandidateChar;
.super Ljava/lang/Object;


# instance fields
.field public NumberOfPOI:I

.field public Reserved:S

.field public strCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shl-int/lit8 v1, p1, 0x8

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    invoke-static {v2}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateChar;->strCode:Ljava/lang/String;

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateChar;->Reserved:S

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateChar;->NumberOfPOI:I

    return-void
.end method
