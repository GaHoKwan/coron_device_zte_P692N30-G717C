.class public Lcom/android/screen/ScreenSet;
.super Landroid/app/Activity;
.source "ScreenSet.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "AutoScreenDivider"


# instance fields
.field private dw:Landroid/view/GestureDetector;

.field private faqButton:Landroid/widget/Button;

.field private flipper:Landroid/widget/ViewFlipper;

.field private index:I

.field private mScreenDivider:Landroid/database/ContentObserver;

.field private num:I

.field private switcher:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/screen/ScreenSet;->index:I

    .line 30
    iput v0, p0, Lcom/android/screen/ScreenSet;->num:I

    .line 33
    new-instance v0, Lcom/android/screen/ScreenSet$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/screen/ScreenSet$1;-><init>(Lcom/android/screen/ScreenSet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/screen/ScreenSet;->mScreenDivider:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/screen/ScreenSet;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->dw:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/screen/ScreenSet;->setContentView(I)V

    .line 59
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/android/screen/ScreenSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    .line 60
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030006

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030009

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 68
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/screen/ScreenSet;->dw:Landroid/view/GestureDetector;

    .line 69
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/screen/ScreenSet;->num:I

    .line 71
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/android/screen/ScreenSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/screen/ScreenSet;->faqButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->faqButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/screen/ScreenSet$2;

    invoke-direct {v1, p0}, Lcom/android/screen/ScreenSet$2;-><init>(Lcom/android/screen/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 87
    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 88
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v2, 0x7f08

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 90
    const v2, 0x7f090018

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;

    .line 93
    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ss_s_btn_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, value:I
    iget-object v2, p0, Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 96
    if-nez v1, :cond_2

    .line 97
    iget-object v2, p0, Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ss_s_btn_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/screen/ScreenSet;->mScreenDivider:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    iget-object v2, p0, Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;

    new-instance v3, Lcom/android/screen/ScreenSet$3;

    invoke-direct {v3, p0}, Lcom/android/screen/ScreenSet$3;-><init>(Lcom/android/screen/ScreenSet;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    :cond_1
    return v5

    .line 98
    :cond_2
    if-ne v5, v1, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    invoke-virtual {p0}, Lcom/android/screen/ScreenSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/screen/ScreenSet;->mScreenDivider:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 167
    const-string v0, "AutoScreenDivider"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    const/high16 v1, 0x7f04

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 170
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040001

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 171
    const-string v0, "AutoScreenDivider"

    const-string v1, "fling from left to right"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v0, p0, Lcom/android/screen/ScreenSet;->index:I

    iget v1, p0, Lcom/android/screen/ScreenSet;->num:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 177
    const-string v0, "AutoScreenDivider"

    const-string v1, "did not get the ending, so display next"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lcom/android/screen/ScreenSet;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/screen/ScreenSet;->index:I

    .line 179
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 191
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3d60

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040002

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 183
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040003

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 184
    iget v0, p0, Lcom/android/screen/ScreenSet;->index:I

    if-lez v0, :cond_0

    .line 185
    const-string v0, "AutoScreenDivider"

    const-string v1, "did not get the begining, so display previous"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v0, p0, Lcom/android/screen/ScreenSet;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/screen/ScreenSet;->index:I

    .line 187
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 198
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 211
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/screen/ScreenSet;->dw:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
