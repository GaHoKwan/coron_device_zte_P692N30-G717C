.class public Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->a:Landroid/content/Context;

    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->setContentView(I)V

    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CurArea"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "<html><body>\u641c\u7d22\u4e00\u4e2a\u5730\u5740\uff1a \"<font color=#eb6307>\u5929\u5e9c\u5e7f\u573a</font>\"</body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "<html><body>\u641c\u7d22\u9644\u8fd1\u7684\u5e38\u7528\u5730\u70b9\uff1a \"<font color=#eb6307>\u9644\u8fd1\u7684 \u52a0\u6cb9\u7ad9</font>\"</body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNaviTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "<html><body>\u5207\u6362\u5230\u522b\u7684\u7701\u4efd\uff1a \"<font color=#eb6307>\u5207\u6362\u5230 \u4e0a\u6d77\u5e02</font>\"</body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
