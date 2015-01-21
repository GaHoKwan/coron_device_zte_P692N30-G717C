.class Lcom/autonavi/xmgd/navigator/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bi;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bi;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->b(Lcom/autonavi/xmgd/navigator/MainMenu;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/autonavi/xmgd/navigator/MainMenu;->a:I

    :cond_0
    return-void
.end method
