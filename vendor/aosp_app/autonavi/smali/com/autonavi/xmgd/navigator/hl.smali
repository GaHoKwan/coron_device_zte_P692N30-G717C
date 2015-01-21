.class Lcom/autonavi/xmgd/navigator/hl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/hl;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hl;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/hl;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchForRoute;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/hl;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hl;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->o(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/c;->a()Lcom/autonavi/xmgd/controls/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchForRoute;Lcom/autonavi/xmgd/controls/c;)Lcom/autonavi/xmgd/controls/c;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hl;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->f(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    const/4 v0, 0x1

    return v0
.end method
