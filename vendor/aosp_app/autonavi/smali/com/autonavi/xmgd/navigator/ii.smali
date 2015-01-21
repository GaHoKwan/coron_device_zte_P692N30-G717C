.class Lcom/autonavi/xmgd/navigator/ii;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ii;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ii;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->d(Lcom/autonavi/xmgd/navigator/SearchResultActivity;I)I

    return-void
.end method
