.class Lcom/autonavi/xmgd/logic/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/s;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pfnGetElement([Lcom/autonavi/xm/navigation/server/map/GCustomElement;[I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/s;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->i()[Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    array-length v0, v1

    :cond_0
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_SetGetElementList([Lcom/autonavi/xm/navigation/server/map/GCustomElement;I)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method
