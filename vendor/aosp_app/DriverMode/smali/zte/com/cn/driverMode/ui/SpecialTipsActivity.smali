.class public Lzte/com/cn/driverMode/ui/SpecialTipsActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field i:Lzte/com/cn/driverMode/service/by;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    const-string v0, "<html><body><p>\u8bf7\u60a8\u52a1\u5fc5\u5728\u786e\u4fdd\u4ea4\u901a\u5b89\u5168\u7684\u524d\u63d0\u4e0b\u4f7f\u7528\u672c\u8f6f\u4ef6\uff0c\u4ee5\u9632\u53d1\u751f\u5371\u9669\u3002\u5426\u5219\uff0c\u7531\u6b64\u53d1\u751f\u4ea4\u901a\u4e8b\u6545\u6216\u5176\u4ed6\u4efb\u4f55\u95ee\u9898\uff0c\u7531\u60a8\u672c\u4eba\u627f\u62c5\u5168\u90e8\u8d23\u4efb\u3002</p><p>\u5bfc\u822a\u529f\u80fd\u7531\u7b2c\u4e09\u65b9\u5bfc\u822a\u8f6f\u4ef6\u516c\u53f8\u63d0\u4f9b\uff0c\u4f7f\u7528\u8fc7\u7a0b\u4e2d\u53ef\u80fd\u4f7f\u7528\u5c11\u91cf\u7684\u6570\u636e\u6d41\u91cf\uff0c\u53ef\u80fd\u6d89\u53ca\u5230\u62cd\u7167\u3001\u5b9a\u4f4d\u3001\u84dd\u7259\u53ca\u4f7f\u7528\u7f51\u7edc\u3002</p><p>\u9a7e\u9a76\u52a9\u624b\u4f7f\u7528\u8fc7\u7a0b\u4e2d\u6709\u53ef\u80fd\u5c06\u8054\u7f51\u5e76\u4f7f\u7528\u5c11\u91cf\u6570\u636e\u6d41\u91cf\uff0c\u6d41\u91cf\u8d44\u8d39\u8be6\u60c5\u8bf7\u54a8\u8be2\u5f53\u5730\u8fd0\u8425\u5546\u3002\u4e3a\u4fdd\u8bc1\u9a7e\u9a76\u52a9\u624b\u6b63\u5e38\u4f7f\u7528\u9700\u8981\u8bfb/\u5199\u77ed\u5f69\u4fe1\u3001\u5f55\u97f3\u3001\u8bfb\u53d6\u4f4d\u7f6e\u4fe1\u606f\u3001\u8bfb/\u5199\u901a\u8bdd\u8bb0\u5f55\u548c\u8054\u7cfb\u4eba\u3001\u7f51\u7edc\u3001\u84dd\u7259\uff0c\u4f46\u4e0d\u4f1a\u4f20\u9001\u8be5\u6570\u636e\u53ca\u9020\u6210\u60a8\u7684\u4fe1\u606f\u6cc4\u6f0f\u3002</p></body></html>"

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->i:Lzte/com/cn/driverMode/service/by;

    const v0, 0x7f0b0100

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->c:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/el;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/el;-><init>(Lzte/com/cn/driverMode/ui/SpecialTipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->h:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/em;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/em;-><init>(Lzte/com/cn/driverMode/ui/SpecialTipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
