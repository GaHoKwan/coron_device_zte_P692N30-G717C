.class Lcom/autonavi/xmgd/navigator/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/cz;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dc;->a:Lcom/autonavi/xmgd/navigator/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dc;->a:Lcom/autonavi/xmgd/navigator/cz;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/cz;->b(Lcom/autonavi/xmgd/navigator/cz;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dc;->a:Lcom/autonavi/xmgd/navigator/cz;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/cz;->a(Lcom/autonavi/xmgd/navigator/cz;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dc;->a:Lcom/autonavi/xmgd/navigator/cz;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/cz;->d(Lcom/autonavi/xmgd/navigator/cz;)V

    return-void
.end method
