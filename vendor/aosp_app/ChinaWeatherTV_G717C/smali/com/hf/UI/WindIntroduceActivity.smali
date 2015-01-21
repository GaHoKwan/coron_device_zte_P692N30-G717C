.class public Lcom/hf/UI/WindIntroduceActivity;
.super Landroid/app/Activity;
.source "WindIntroduceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x7

    .line 15
    invoke-virtual {p0, v3}, Lcom/hf/UI/WindIntroduceActivity;->requestWindowFeature(I)Z

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v2, 0x7f030034

    invoke-virtual {p0, v2}, Lcom/hf/UI/WindIntroduceActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/hf/UI/WindIntroduceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 19
    .local v1, window:Landroid/view/Window;
    const v2, 0x7f03000b

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 20
    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21
    .local v0, title:Landroid/widget/TextView;
    const v2, 0x7f0800be

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    return-void
.end method
