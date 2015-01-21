.class public Lcom/autonavi/xmgd/f/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[Lcom/autonavi/xmgd/e/k;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/f/z;->a:[Lcom/autonavi/xmgd/e/k;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/f/z;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/f/z;->b:I

    return-void
.end method

.method public a([Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/z;->a:[Lcom/autonavi/xmgd/e/k;

    return-void
.end method

.method public a()[Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/z;->a:[Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/f/z;->b:I

    return v0
.end method

.method public c()Lcom/autonavi/xmgd/e/k;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/f/z;->a:[Lcom/autonavi/xmgd/e/k;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/autonavi/xmgd/f/z;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/autonavi/xmgd/f/z;->b:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/autonavi/xmgd/f/z;->b:I

    iget-object v2, p0, Lcom/autonavi/xmgd/f/z;->a:[Lcom/autonavi/xmgd/e/k;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    const-string v2, "UIPoiUnion Error: getPoi() index out of range!"

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/f/z;->a:[Lcom/autonavi/xmgd/e/k;

    iget v1, p0, Lcom/autonavi/xmgd/f/z;->b:I

    aget-object v0, v0, v1

    goto :goto_0
.end method
