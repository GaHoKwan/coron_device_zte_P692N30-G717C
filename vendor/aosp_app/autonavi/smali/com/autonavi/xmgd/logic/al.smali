.class Lcom/autonavi/xmgd/logic/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/e/k;

.field private synthetic b:Lcom/autonavi/xmgd/logic/ai;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/ai;Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/al;->b:Lcom/autonavi/xmgd/logic/ai;

    iput-object p2, p0, Lcom/autonavi/xmgd/logic/al;->a:Lcom/autonavi/xmgd/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/al;->b:Lcom/autonavi/xmgd/logic/ai;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/logic/ai;)Lcom/autonavi/xmgd/logic/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/al;->b:Lcom/autonavi/xmgd/logic/ai;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/logic/ai;)Lcom/autonavi/xmgd/logic/k;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/al;->a:Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/xmgd/logic/k;->a(Lcom/autonavi/xmgd/e/k;ZZ)V

    :cond_0
    return-void
.end method
