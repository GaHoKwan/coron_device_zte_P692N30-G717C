.class public Lcom/android/launcher2/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchDropTargetBar"

.field private static final sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator; = null

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private mBarHeight:I

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

.field private mEnableDropDownDropTargets:Z

.field private mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mIsSearchBarHidden:Z

.field private mPreviousBackground:Landroid/graphics/drawable/Drawable;

.field private mQSBSearchBar:Landroid/view/View;

.field private mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher2/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 65
    return-void
.end method

.method private prepareStartAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 83
    return-void
.end method

.method private setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V
    .locals 2
    .parameter "anim"
    .parameter "v"

    .prologue
    .line 86
    sget-object v0, Lcom/android/launcher2/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    new-instance v0, Lcom/android/launcher2/SearchDropTargetBar$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/SearchDropTargetBar$1;-><init>(Lcom/android/launcher2/SearchDropTargetBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public deferOnDragEnd()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 201
    return-void
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 132
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 134
    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    iget-object v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 243
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 244
    .local v0, pos:[I
    iget-object v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 246
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 247
    .local v1, rect:Landroid/graphics/Rect;
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 248
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 249
    aget v2, v0, v3

    iget-object v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 250
    aget v2, v0, v4

    iget-object v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 253
    .end local v0           #pos:[I
    .end local v1           #rect:Landroid/graphics/Rect;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransitionInDuration()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0xc8

    return v0
.end method

.method public getTransitionOutDuration()I
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0xaf

    return v0
.end method

.method public hideSearchBar(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 167
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 161
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 213
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 193
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 197
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 98
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 101
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 102
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v4, [F

    iget v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v4, [F

    aput v5, v2, v6

    iget v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 127
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 122
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 123
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onSearchPackagesChanged(ZZ)V
    .locals 3
    .parameter "searchVisible"
    .parameter "voiceVisible"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 232
    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local v0       #bg:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 1
    .parameter "launcher"
    .parameter "dragController"

    .prologue
    .line 68
    invoke-virtual {p2, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->setFlingToDeleteDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 76
    return-void
.end method

.method public showSearchBar(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 152
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 146
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method
