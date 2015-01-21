.class public Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;
.super Ljava/lang/Object;


# instance fields
.field public lNumberOfInsidePOI:I

.field public lSettAreaID:I

.field public pInsidePOI:[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInsidePoi;

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInsidePoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;->lSettAreaID:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;->szName:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;->lNumberOfInsidePOI:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;->pInsidePOI:[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInsidePoi;

    return-void
.end method
