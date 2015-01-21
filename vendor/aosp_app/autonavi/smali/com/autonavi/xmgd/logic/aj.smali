.class Lcom/autonavi/xmgd/logic/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/e/k;

.field private synthetic b:Z

.field private synthetic c:Lcom/autonavi/xmgd/logic/ai;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/ai;Lcom/autonavi/xmgd/e/k;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/aj;->c:Lcom/autonavi/xmgd/logic/ai;

    iput-object p2, p0, Lcom/autonavi/xmgd/logic/aj;->a:Lcom/autonavi/xmgd/e/k;

    iput-boolean p3, p0, Lcom/autonavi/xmgd/logic/aj;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/aj;->c:Lcom/autonavi/xmgd/logic/ai;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/logic/ai;)Lcom/autonavi/xmgd/logic/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/aj;->c:Lcom/autonavi/xmgd/logic/ai;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/logic/ai;)Lcom/autonavi/xmgd/logic/k;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/aj;->a:Lcom/autonavi/xmgd/e/k;

    iget-boolean v2, p0, Lcom/autonavi/xmgd/logic/aj;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/logic/k;->a(Lcom/autonavi/xmgd/e/k;Z)V

    :cond_0
    return-void
.end method
