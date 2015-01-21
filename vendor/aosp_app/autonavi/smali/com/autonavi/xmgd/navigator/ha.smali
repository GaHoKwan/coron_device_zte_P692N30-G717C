.class Lcom/autonavi/xmgd/navigator/ha;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ha;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ha;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    const-class v2, Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ha;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/navigator/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
