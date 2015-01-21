.class Lcom/autonavi/xmgd/naviservice/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/naviservice/q;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/naviservice/q;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/r;->a:Lcom/autonavi/xmgd/naviservice/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GDBL_OnPoiResult(ILcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xmgd/e/k;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/r;->a:Lcom/autonavi/xmgd/naviservice/q;

    invoke-virtual {v0, p3}, Lcom/autonavi/xmgd/naviservice/q;->a(Ljava/lang/Object;)V

    return-void
.end method
