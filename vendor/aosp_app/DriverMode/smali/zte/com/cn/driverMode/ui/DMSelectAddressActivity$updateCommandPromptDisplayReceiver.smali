.class public Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "promptValue"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMSelectAddressActivity"

    const-string v2, "updateCommandPromptDisplayReceiver--onReceive!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->b(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "DMSelectAddressActivity"

    const-string v2, "commandPromptView != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->b(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "HighLightIndex"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Lzte/com/cn/driverMode/ui/a;

    move-result-object v1

    iput v0, v1, Lzte/com/cn/driverMode/ui/a;->g:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Lzte/com/cn/driverMode/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
