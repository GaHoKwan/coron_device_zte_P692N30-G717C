.class Lcom/autonavi/xmgd/controls/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/controls/ag;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/controls/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ai;->a:Lcom/autonavi/xmgd/controls/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ai;->a:Lcom/autonavi/xmgd/controls/ag;

    invoke-static {v0}, Lcom/autonavi/xmgd/controls/ag;->d(Lcom/autonavi/xmgd/controls/ag;)Lcom/autonavi/xmgd/controls/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ai;->a:Lcom/autonavi/xmgd/controls/ag;

    invoke-static {v0}, Lcom/autonavi/xmgd/controls/ag;->d(Lcom/autonavi/xmgd/controls/ag;)Lcom/autonavi/xmgd/controls/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/controls/aj;->a()V

    :cond_0
    return-void
.end method
