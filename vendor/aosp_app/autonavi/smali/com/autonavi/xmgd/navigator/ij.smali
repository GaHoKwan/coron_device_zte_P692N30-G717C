.class Lcom/autonavi/xmgd/navigator/ij;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ij;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ij;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.set_dest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ij;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ij;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
