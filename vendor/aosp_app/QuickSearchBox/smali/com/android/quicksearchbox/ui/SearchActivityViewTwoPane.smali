.class public Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;
.super Lcom/android/quicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewTwoPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;,
        Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$CorpusSelectionListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STARTING_WIDTH_FACTOR:F = 0.5f

.field private static final ENTRY_ANIMATION_DURATION:I = 0x96

.field private static final ENTRY_ANIMATION_START_DELAY:I = 0x96

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"


# instance fields
.field private mCorpusIndicator:Landroid/widget/ImageButton;

.field private mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

.field private mJustCreated:Z

.field private mMenuButton:Landroid/widget/ImageView;

.field private mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mResultsHeader:Landroid/view/View;

.field private mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

.field private mSearchPlate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->showPopupMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    return-object v0
.end method

.method private checkHideResultsHeader()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupEntryAnimations()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x96

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 157
    .local v1, endingWidth:I
    int-to-float v4, v1

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 159
    .local v3, startingWidth:I
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 160
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 164
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object v4, v0

    .line 165
    check-cast v4, Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$5;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$5;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 176
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 178
    return-void

    .line 163
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showPopupMenu()V
    .locals 4

    .prologue
    .line 123
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mMenuButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 124
    .local v1, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 125
    .local v0, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/quicksearchbox/SearchActivity;->createMenuItems(Landroid/view/Menu;Z)V

    .line 126
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 127
    return-void
.end method


# virtual methods
.method public clearSuggestions()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->clearSuggestions()V

    .line 268
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 269
    return-void
.end method

.method public considerHidingInputMethod()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method protected createClusteredSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/QsbApplication;->getSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;)V

    return-object v0
.end method

.method protected createResultsPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 318
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/QsbApplication;->createResultsPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/QsbApplication;->createSingleCorpusResultsPromoter(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;

    move-result-object v1

    goto :goto_0
.end method

.method protected createSuggestionsPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->createWebPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 196
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->destroy()V

    .line 197
    return-void
.end method

.method protected dismissCorpusSelectionDialog()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 257
    :cond_0
    return-void
.end method

.method public getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 360
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_0
    return-object v0
.end method

.method protected getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quicksearchbox/VoiceSearch;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 202
    .local v4, voiceSearch:Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 207
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 209
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 210
    const-string v5, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v3

    .line 214
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 222
    .end local v0           #iconResId:I
    .end local v1           #metaData:Landroid/os/Bundle;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 217
    :catch_0
    move-exception v5

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0
.end method

.method public hideSuggestions()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method protected isCorpusSelectionDialogShowing()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

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

.method public limitResultsToViewHeight()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setLimitSuggestionsToViewHeight(Z)V

    .line 280
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 84
    const v1, 0x7f0f0023

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mMenuButton:Landroid/widget/ImageView;

    .line 85
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mMenuButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f0f0021

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    .line 92
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->createClusteredSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 93
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListAdapter;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$2;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$2;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 99
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 101
    const v1, 0x7f0f0022

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    .line 102
    const v1, 0x7f0f001c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    .line 103
    iput-boolean v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mJustCreated:Z

    .line 105
    const v1, 0x7f0f001a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, dismissBg:Landroid/view/View;
    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f0f0007

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusIndicator:Landroid/widget/ImageButton;

    .line 115
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusIndicator:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusIndicator:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onPause()V

    .line 151
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    const v1, 0x7f050002

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 152
    return-void
.end method

.method protected onResultsChanged()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->checkHideResultsHeader()V

    .line 327
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onResume()V

    .line 139
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->setupEntryAnimations()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mJustCreated:Z

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->isCorpusSelectionDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->focusQueryTextView()V

    .line 146
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->dismissCorpusSelectionDialog()V

    .line 183
    return-void
.end method

.method protected setCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 3
    .parameter "corpus"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 298
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->createResultsPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setPromoter(Lcom/android/quicksearchbox/Promoter;)V

    .line 300
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusIndicator:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 302
    if-nez p1, :cond_1

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 307
    .local v0, sourceIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusIndicator:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    .end local v0           #sourceIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 305
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getCorpusIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #sourceIcon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setMaxPromotedResults(I)V
    .locals 2
    .parameter "maxPromoted"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setLimitSuggestionsToViewHeight(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    .line 275
    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 286
    return-void
.end method

.method public setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 291
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->acquire()V

    .line 292
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 293
    return-void
.end method

.method public showCorpusSelectionDialog()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpusSelectionDialog()Lcom/android/quicksearchbox/CorpusSelectionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    .line 244
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$CorpusSelectionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$CorpusSelectionListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->setOnCorpusSelectedListener(Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mCorpusSelectionDialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->show(Lcom/android/quicksearchbox/Corpus;)V

    .line 247
    return-void
.end method

.method public showSuggestions()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->start()V

    .line 188
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 189
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 190
    return-void
.end method

.method protected updateQueryTextView(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateQueryTextView(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    if-eqz p1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
