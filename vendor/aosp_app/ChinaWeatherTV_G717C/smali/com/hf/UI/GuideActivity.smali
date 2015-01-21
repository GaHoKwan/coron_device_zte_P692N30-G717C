.class public Lcom/hf/UI/GuideActivity;
.super Landroid/app/Activity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mStartButton:Landroid/widget/Button;

.field private mWindButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 40
    .local v0, id:I
    const v2, 0x7f0b002e

    if-ne v0, v2, :cond_1

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hf/UI/InitDefaultActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/UI/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/hf/UI/GuideActivity;->finish()V

    .line 48
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const v2, 0x7f0b002d

    if-ne v0, v2, :cond_0

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hf/UI/WindIntroduceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/UI/GuideActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x7

    .line 21
    invoke-virtual {p0, v2}, Lcom/hf/UI/GuideActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/hf/UI/GuideActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/hf/UI/GuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 25
    .local v0, window:Landroid/view/Window;
    const v1, 0x7f030009

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 27
    const v1, 0x7f0b002e

    invoke-virtual {p0, v1}, Lcom/hf/UI/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hf/UI/GuideActivity;->mStartButton:Landroid/widget/Button;

    .line 28
    iget-object v1, p0, Lcom/hf/UI/GuideActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/hf/UI/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/hf/UI/GuideActivity;->mWindButton:Landroid/widget/ImageButton;

    .line 31
    iget-object v1, p0, Lcom/hf/UI/GuideActivity;->mWindButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
