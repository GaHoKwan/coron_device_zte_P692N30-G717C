.class Lcom/autonavi/xmgd/navigator/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->l()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->Z(Lcom/autonavi/xmgd/navigator/Map;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/navigator/Map;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->Z(Lcom/autonavi/xmgd/navigator/Map;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cb;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->Z(Lcom/autonavi/xmgd/navigator/Map;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
