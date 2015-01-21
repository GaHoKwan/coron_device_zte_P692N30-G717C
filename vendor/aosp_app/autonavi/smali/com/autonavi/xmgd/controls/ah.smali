.class Lcom/autonavi/xmgd/controls/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/utility/Timer$ITimerListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/controls/ag;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/controls/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ah;->a:Lcom/autonavi/xmgd/controls/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(II)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ah;->a:Lcom/autonavi/xmgd/controls/ag;

    invoke-static {v0}, Lcom/autonavi/xmgd/controls/ag;->a(Lcom/autonavi/xmgd/controls/ag;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/ah;->a:Lcom/autonavi/xmgd/controls/ag;

    invoke-static {v1}, Lcom/autonavi/xmgd/controls/ag;->b(Lcom/autonavi/xmgd/controls/ag;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ah;->a:Lcom/autonavi/xmgd/controls/ag;

    invoke-static {v0}, Lcom/autonavi/xmgd/controls/ag;->c(Lcom/autonavi/xmgd/controls/ag;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ah;->a:Lcom/autonavi/xmgd/controls/ag;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/ah;->a:Lcom/autonavi/xmgd/controls/ag;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/controls/ag;->b(Lcom/autonavi/xmgd/controls/ag;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/controls/ag;->a(Lcom/autonavi/xmgd/controls/ag;I)I

    return-void
.end method
