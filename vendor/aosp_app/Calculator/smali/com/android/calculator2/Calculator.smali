.class public Lcom/android/calculator2/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"

# interfaces
.implements Lcom/android/calculator2/Logic$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/Calculator$PageAdapter;
    }
.end annotation


# static fields
.field static final ADVANCED_PANEL:I = 0x1

.field static final BASIC_PANEL:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Calculator"

.field private static final STATE_CURRENT_VIEW:Ljava/lang/String; = "state-current-view"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBackspaceButton:Landroid/view/View;

.field private mClearButton:Landroid/view/View;

.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private mHistory:Lcom/android/calculator2/History;

.field mListener:Lcom/android/calculator2/EventListener;

.field private mLogic:Lcom/android/calculator2/Logic;

.field private mOverflowMenuButton:Landroid/view/View;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPersist:Lcom/android/calculator2/Persist;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/android/calculator2/EventListener;

    invoke-direct {v0}, Lcom/android/calculator2/EventListener;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    .line 290
    return-void
.end method

.method static synthetic access$002(Lcom/android/calculator2/Calculator;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/calculator2/Calculator;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    return-object p1
.end method

.method private getAdvancedVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 215
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBasicVisibility()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 270
    const-string v0, "Calculator"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method private updateDeleteMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->getDeleteMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static vibrate()V
    .locals 3

    .prologue
    .line 281
    sget-object v1, Lcom/android/calculator2/Calculator;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/calculator2/Calculator;->sContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 282
    .local v0, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v1, "Device not have vibrator"

    invoke-static {v1}, Lcom/android/calculator2/Calculator;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    nop

    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    const/high16 v5, 0x2

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sput-object v3, Lcom/android/calculator2/Calculator;->sContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 75
    const v3, 0x7f040002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 76
    const v3, 0x7f0d0012

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/android/calculator2/Calculator$PageAdapter;

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0, v6}, Lcom/android/calculator2/Calculator$PageAdapter;-><init>(Lcom/android/calculator2/Calculator;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 88
    :goto_0
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    if-nez v3, :cond_0

    .line 89
    const v3, 0x7f0d0010

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    .line 90
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    if-nez v3, :cond_1

    .line 94
    const v3, 0x7f0d0011

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    .line 95
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    :cond_1
    new-instance v3, Lcom/android/calculator2/Persist;

    invoke-direct {v3, p0}, Lcom/android/calculator2/Persist;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    .line 100
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v3}, Lcom/android/calculator2/Persist;->load()V

    .line 102
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v3, v3, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    .line 104
    const v3, 0x7f0d000f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorDisplay;

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 106
    new-instance v3, Lcom/android/calculator2/Logic;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/calculator2/Logic;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;)V

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    .line 107
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v3, p0}, Lcom/android/calculator2/Logic;->setListener(Lcom/android/calculator2/Logic$Listener;)V

    .line 109
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v5}, Lcom/android/calculator2/Persist;->getDeleteMode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 110
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorDisplay;->getMaxDigits()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/calculator2/Logic;->setLineLength(I)V

    .line 112
    new-instance v1, Lcom/android/calculator2/HistoryAdapter;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-direct {v1, p0, v3, v5}, Lcom/android/calculator2/HistoryAdapter;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/Logic;)V

    .line 113
    .local v1, historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v3, v1}, Lcom/android/calculator2/History;->setObserver(Landroid/widget/BaseAdapter;)V

    .line 115
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    .line 116
    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, v5}, Lcom/android/calculator2/EventListener;->setHandler(Lcom/android/calculator2/Logic;Landroid/support/v4/view/ViewPager;)V

    .line 120
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v3, v4}, Lcom/android/calculator2/CalculatorDisplay;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 129
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->resumeWithHistory()V

    .line 130
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->updateDeleteMode()V

    .line 131
    return-void

    .line 81
    .end local v1           #historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    :cond_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, buttons:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/calculator2/Calculator;->setOnClickListener(Landroid/view/View;I)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 116
    .end local v0           #buttons:Landroid/content/res/TypedArray;
    .end local v2           #i:I
    .restart local v1       #historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    :cond_5
    const-string v3, "state-current-view"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteModeChange()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->updateDeleteMode()V

    .line 277
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 259
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getAdvancedVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v0}, Lcom/android/calculator2/History;->clear()V

    .line 223
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->onClear()V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getBasicVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getAdvancedVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0024
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 252
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 253
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->getDeleteMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/Persist;->setDeleteMode(I)V

    .line 254
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v0}, Lcom/android/calculator2/Persist;->save()V

    .line 255
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0d0026

    const v4, 0x7f0d0025

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 159
    sget-object v0, Lcom/android/calculator2/Calculator;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f07

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getBasicVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getAdvancedVisibility()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "state-current-view"

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    :cond_0
    return-void
.end method

.method setOnClickListener(Landroid/view/View;I)V
    .locals 2
    .parameter "root"
    .parameter "id"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, target:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void

    .line 144
    .end local v0           #target:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
