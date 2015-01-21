.class Lcom/autonavi/xmgd/navigator/hy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/controls/i;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/c/k;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/c/k;->a()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v2}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-virtual {v2, p1}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/c/k;

    move-result-object v0

    array-length v3, v0

    new-array v4, v3, [Lcom/autonavi/xmgd/e/k;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v5}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/c/k;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/autonavi/xmgd/c/k;->a()Lcom/autonavi/xmgd/e/k;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    const-string v0, "poi"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "IPoiOperator"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/controls/u;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    const-class v3, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hy;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->finish()V

    return-void
.end method
