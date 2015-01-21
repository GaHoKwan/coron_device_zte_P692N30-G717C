.class Lcom/autonavi/xmgd/navigator/eb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/eb;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/eb;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    if-nez p1, :cond_0

    move v3, v0

    :goto_0
    if-ne p1, v0, :cond_1

    move v2, v0

    :goto_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    :goto_2
    invoke-static {v4, v3, v2, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;ZZZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eb;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->e(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
