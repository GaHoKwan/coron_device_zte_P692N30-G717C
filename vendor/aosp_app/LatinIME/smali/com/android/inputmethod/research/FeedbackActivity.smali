.class public Lcom/android/inputmethod/research/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/research/ResearchLogger;->onLeavingSendFeedbackDialog()V

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v4, 0x7f040007

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/research/FeedbackLayout;

    .line 31
    .local v3, layout:Lcom/android/inputmethod/research/FeedbackLayout;
    const v4, 0x7f080047

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 32
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 33
    .local v2, cs:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, actualString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v3, p0}, Lcom/android/inputmethod/research/FeedbackLayout;->setActivity(Landroid/app/Activity;)V

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 42
    return-void
.end method
