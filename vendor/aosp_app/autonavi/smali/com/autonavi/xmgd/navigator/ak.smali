.class Lcom/autonavi/xmgd/navigator/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ak;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ak;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Lcom/autonavi/xmgd/navigator/ao;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/xmgd/navigator/ao;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/an;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ak;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    const-class v3, Lcom/autonavi/xmgd/navigator/FeedbackDetail;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "id"

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/an;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "datatype"

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/an;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/an;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ak;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
