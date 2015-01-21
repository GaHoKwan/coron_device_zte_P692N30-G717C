.class Lcom/autonavi/xmgd/logic/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/f/o;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/e/k;

.field private synthetic b:I

.field private synthetic c:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;Lcom/autonavi/xmgd/e/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/x;->c:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

    iput-object p2, p0, Lcom/autonavi/xmgd/logic/x;->a:Lcom/autonavi/xmgd/e/k;

    iput p3, p0, Lcom/autonavi/xmgd/logic/x;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/x;->a:Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/e/k;->c()Lcom/autonavi/xmgd/e/g;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I

    move-result p2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/x;->c:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget v1, p0, Lcom/autonavi/xmgd/logic/x;->b:I

    invoke-virtual {v0, v1, p2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method
