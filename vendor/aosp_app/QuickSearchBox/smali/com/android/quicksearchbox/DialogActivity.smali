.class public abstract Lcom/android/quicksearchbox/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"


# instance fields
.field protected mContentFrame:Landroid/widget/FrameLayout;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogContent()Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 38
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mTitleView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mContentFrame:Landroid/widget/FrameLayout;

    .line 41
    return-void
.end method

.method public setDialogContent(I)V
    .locals 2
    .parameter "layoutRes"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/DialogActivity;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    return-void
.end method

.method public setDialogContent(Landroid/view/View;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 58
    iget-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public setHeading(I)V
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method

.method public setHeading(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/quicksearchbox/DialogActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
