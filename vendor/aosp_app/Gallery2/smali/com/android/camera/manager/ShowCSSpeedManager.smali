.class public Lcom/android/camera/manager/ShowCSSpeedManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ShowCSSpeedManager.java"


# static fields
.field private static final BEGINING_LOCATION:I = 0x0

.field private static final END_LOCATION:I = 0x2

.field private static final FRONT_SIZE_OF_CS_NUMBER:F = 1.7f


# instance fields
.field private mCSInfoView:Landroid/widget/TextView;

.field private mSpannableString:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 34
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mCSInfoView:Landroid/widget/TextView;

    .line 36
    return-object v0
.end method

.method protected onRefresh()V
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mCSInfoView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mSpannableString:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3fd9999a

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43
    iget-object v1, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mSpannableString:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mCSInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mCSInfoView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 47
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mCSInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .end local v0           #visibility:I
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 52
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/camera/manager/ShowCSSpeedManager;->mSpannableString:Landroid/text/SpannableString;

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 54
    return-void
.end method
