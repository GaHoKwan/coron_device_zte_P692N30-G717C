.class Lcom/autonavi/xmgd/navigator/il;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/il;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/il;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
