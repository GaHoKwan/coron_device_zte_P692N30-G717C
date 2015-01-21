.class final Lzte/com/cn/driverMode/ui/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bf;->a:Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bf;->a:Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.com.cn.driverMode.keyPoiSearcher"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "KeyPoiIndex"

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/bf;->a:Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;

    iget v3, v3, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->h:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KeyPoiAddress"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bf;->a:Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bf;->a:Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bf;->a:Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->i:Landroid/content/Context;

    const-string v1, "\u6ca1\u6709\u8f93\u5165\u5173\u952e\u5b57"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
