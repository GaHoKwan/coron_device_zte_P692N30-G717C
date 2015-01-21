.class public Lcom/autonavi/xm/navigation/server/GDate;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public day:B

.field public month:B

.field public year:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    iput-byte p2, p0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iput-byte p3, p0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    return-void
.end method


# virtual methods
.method public clone()Lcom/autonavi/xm/navigation/server/GDate;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/GDate;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/GDate;-><init>()V

    iget-byte v1, p0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    iput-byte v1, v0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    iget-byte v1, p0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iput-byte v1, v0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/GDate;->clone()Lcom/autonavi/xm/navigation/server/GDate;

    move-result-object v0

    return-object v0
.end method
