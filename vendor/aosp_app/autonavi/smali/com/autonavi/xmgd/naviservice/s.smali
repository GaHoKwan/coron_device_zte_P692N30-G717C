.class Lcom/autonavi/xmgd/naviservice/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/autonavi/xmgd/e/k;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/autonavi/xm/navigation/server/GCoord;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/naviservice/q;Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 0

    iput-object p2, p0, Lcom/autonavi/xmgd/naviservice/s;->a:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/e/k;)I
    .locals 4

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    iget-object v1, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/s;->a:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v1

    iget-object v2, p2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/s;->a:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/autonavi/xmgd/e/k;

    check-cast p2, Lcom/autonavi/xmgd/e/k;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xmgd/naviservice/s;->a(Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/e/k;)I

    move-result v0

    return v0
.end method
