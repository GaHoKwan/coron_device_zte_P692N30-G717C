.class Lcom/autonavi/xmgd/navigator/ih;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/controls/i;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-virtual {v1, p1}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    const-string v2, "poi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "IPoiOperator"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/controls/x;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    const-class v3, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ih;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->finish()V

    return-void
.end method
