.class public Lcom/autonavi/xm/navigation/server/guide/GServiceArea;
.super Ljava/lang/Object;


# instance fields
.field public eSAFlag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;",
            ">;"
        }
    .end annotation
.end field

.field public nArrivalTime:I

.field public nDis:I

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->nDis:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->nArrivalTime:I

    invoke-static {p3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->getFlags(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->szName:Ljava/lang/String;

    return-void
.end method
