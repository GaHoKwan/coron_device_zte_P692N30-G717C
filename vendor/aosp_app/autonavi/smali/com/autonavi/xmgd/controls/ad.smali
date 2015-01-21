.class Lcom/autonavi/xmgd/controls/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/controls/ac;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/controls/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ad;->a:Lcom/autonavi/xmgd/controls/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.navigator_new.action.avoid_road"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "avoidIndex"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ad;->a:Lcom/autonavi/xmgd/controls/ac;

    invoke-static {v0}, Lcom/autonavi/xmgd/controls/ac;->a(Lcom/autonavi/xmgd/controls/ac;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
