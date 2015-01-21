.class public Lcom/hf/UI/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# instance fields
.field private mVersionTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 19
    invoke-virtual {p0, v5}, Lcom/hf/UI/HelpActivity;->requestWindowFeature(I)Z

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 22
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 23
    const v4, 0x7f03000a

    invoke-virtual {p0, v4}, Lcom/hf/UI/HelpActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/hf/UI/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 25
    .local v3, window:Landroid/view/Window;
    const v4, 0x7f03000b

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 26
    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 27
    .local v2, title:Landroid/widget/TextView;
    const v4, 0x7f0800bd

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 29
    const v4, 0x7f080001

    invoke-virtual {p0, v4}, Lcom/hf/UI/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, appName:Ljava/lang/String;
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/hf/UI/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/hf/UI/HelpActivity;->mVersionTV:Landroid/widget/TextView;

    .line 31
    iget-object v4, p0, Lcom/hf/UI/HelpActivity;->mVersionTV:Landroid/widget/TextView;

    const v5, 0x7f0800ca

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {p0}, Lcom/hf/utils/Util;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/hf/UI/HelpActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v4, 0x7f0b0031

    invoke-virtual {p0, v4}, Lcom/hf/UI/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    .local v1, helpTextView:Landroid/widget/TextView;
    const v4, 0x7f0800c3

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/hf/UI/HelpActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 41
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 50
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 51
    return-void
.end method
