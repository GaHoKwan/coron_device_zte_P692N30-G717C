.class public Lcom/autonavi/xm/navigation/server/poi/GAdareaList;
.super Ljava/lang/Object;


# instance fields
.field public lNumberOfAdarea:I

.field public pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/poi/GAdarea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->lNumberOfAdarea:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    return-void
.end method
