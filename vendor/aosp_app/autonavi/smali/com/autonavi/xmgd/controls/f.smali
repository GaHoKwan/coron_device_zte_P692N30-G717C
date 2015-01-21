.class Lcom/autonavi/xmgd/controls/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/controls/e;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/controls/e;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/f;->a:Lcom/autonavi/xmgd/controls/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/f;->a:Lcom/autonavi/xmgd/controls/e;

    iget-object v1, v1, Lcom/autonavi/xmgd/controls/e;->e:Lcom/autonavi/xmgd/controls/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/f;->a:Lcom/autonavi/xmgd/controls/e;

    iget-object v1, v1, Lcom/autonavi/xmgd/controls/e;->e:Lcom/autonavi/xmgd/controls/i;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/controls/i;->a(I)V

    :cond_0
    return-void
.end method
