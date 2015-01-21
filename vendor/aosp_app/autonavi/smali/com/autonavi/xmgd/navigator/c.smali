.class Lcom/autonavi/xmgd/navigator/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/CitySelect;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/CitySelect;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/c;->a:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/CitySelect;->a(I)I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/c;->a:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/CitySelect;->b(Lcom/autonavi/xmgd/navigator/CitySelect;)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    aget-object v1, v1, p4

    iget v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->c(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/c;->a:Lcom/autonavi/xmgd/navigator/CitySelect;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/c;->a:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->finish()V

    return v3
.end method
