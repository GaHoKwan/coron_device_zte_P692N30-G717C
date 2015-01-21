.class final Lzte/com/cn/driverMode/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lzte/com/cn/driverMode/ui/a;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/a;I)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/c;->b:Lzte/com/cn/driverMode/ui/a;

    iput p2, p0, Lzte/com/cn/driverMode/ui/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "zte.com.cn.driverMode.SelectPoiToNav"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addr"

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/c;->b:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    iget v3, p0, Lzte/com/cn/driverMode/ui/c;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ck;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ck;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "AddressListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "poiList.get(position).address = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/c;->b:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    iget v4, p0, Lzte/com/cn/driverMode/ui/c;->a:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ck;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ck;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "latitude"

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/c;->b:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    iget v3, p0, Lzte/com/cn/driverMode/ui/c;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ck;

    iget-wide v3, v0, Lzte/com/cn/driverMode/service/ck;->b:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "longitude"

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/c;->b:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    iget v3, p0, Lzte/com/cn/driverMode/ui/c;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ck;

    iget-wide v3, v0, Lzte/com/cn/driverMode/service/ck;->c:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "index"

    iget v2, p0, Lzte/com/cn/driverMode/ui/c;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/c;->b:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
