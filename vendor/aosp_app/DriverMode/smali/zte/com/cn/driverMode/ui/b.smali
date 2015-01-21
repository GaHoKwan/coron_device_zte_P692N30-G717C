.class final Lzte/com/cn/driverMode/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lzte/com/cn/driverMode/ui/a;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/a;I)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/b;->b:Lzte/com/cn/driverMode/ui/a;

    iput p2, p0, Lzte/com/cn/driverMode/ui/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/b;->b:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    iget v1, p0, Lzte/com/cn/driverMode/ui/b;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ck;

    iget-object v1, v0, Lzte/com/cn/driverMode/service/ck;->a:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.com.cn.driverMode.jumpToKeyPoiEdit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "KeyPoiIndex"

    iget v3, p0, Lzte/com/cn/driverMode/ui/b;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KeyPoiAddress"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/b;->b:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
