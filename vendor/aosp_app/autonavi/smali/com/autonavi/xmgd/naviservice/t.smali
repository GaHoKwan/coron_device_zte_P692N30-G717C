.class Lcom/autonavi/xmgd/naviservice/t;
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


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/naviservice/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/e/k;)I
    .locals 2

    iget v0, p1, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    iget v1, p2, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    iget v1, p2, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    if-ge v0, v1, :cond_1

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

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xmgd/naviservice/t;->a(Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/e/k;)I

    move-result v0

    return v0
.end method
