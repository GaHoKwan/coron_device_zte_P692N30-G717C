.class public Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;
.super Lcom/android/quicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewSinglePane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$CorpusSelectionListener;
    }
.end annotation


# instance fields
.field private mCorpusIndicator:Landroid/widget/ImageButton;

.field private mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public considerHidingInputMethod()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->hideInputMethod()V

    .line 132
    return-void
.end method

.method protected createSuggestionsPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 93
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/QsbApplication;->createBlendingPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/QsbApplication;->createSingleCorpusPromoter(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;

    move-result-object v1

    goto :goto_0
.end method

.method protected dismissCorpusSelectionDialog()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 127
    :cond_0
    return-void
.end method

.method public getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 107
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_0
    return-object v0
.end method

.method protected isCorpusSelectionDialogShowing()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 54
    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusIndicator:Landroid/widget/ImageButton;

    .line 55
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusIndicator:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusIndicator:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$1;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$1;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->isCorpusSelectionDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->focusQueryTextView()V

    .line 68
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->dismissCorpusSelectionDialog()V

    .line 73
    return-void
.end method

.method protected setCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 3
    .parameter "corpus"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 79
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusIndicator:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 81
    if-nez p1, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, sourceIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusIndicator:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .end local v0           #sourceIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getCorpusIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #sourceIcon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public showCorpusSelectionDialog()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpusSelectionDialog()Lcom/android/quicksearchbox/CorpusSelectionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    .line 114
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$CorpusSelectionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$CorpusSelectionListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->setOnCorpusSelectedListener(Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->show(Lcom/android/quicksearchbox/Corpus;)V

    .line 117
    return-void
.end method
