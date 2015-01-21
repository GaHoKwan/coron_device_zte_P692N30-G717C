.class public Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;
.super Ljava/lang/Object;


# instance fields
.field public lNumberOfAdareaInfo:I

.field public pAdareaInfo:[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;->lNumberOfAdareaInfo:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;->pAdareaInfo:[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfo;

    return-void
.end method
