.class final Lzte/com/cn/driverMode/ui/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/db;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "DMSelectAddressActivity"

    const-string v1, "onClickPageDownListner--onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/db;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->d(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.PoiListPageDown"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/db;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
