.class Lcom/autonavi/xmgd/navigator/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/k;


# instance fields
.field private a:Lcom/autonavi/xmgd/e/k;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->r(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/k;Z)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cp;->a:Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cp;->a:Lcom/autonavi/xmgd/e/k;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xmgd/e/k;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->F(Lcom/autonavi/xmgd/navigator/Map;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/k;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xmgd/e/k;ZZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->G(Lcom/autonavi/xmgd/navigator/Map;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->F(Lcom/autonavi/xmgd/navigator/Map;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cp;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/logic/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method
