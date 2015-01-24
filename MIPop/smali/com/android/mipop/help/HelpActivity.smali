.class public Lcom/android/mipop/help/HelpActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static ea:I


# instance fields
.field private dX:Landroid/widget/ViewFlipper;

.field private dY:Landroid/view/GestureDetector;

.field private dZ:[Lcom/ant/liao/GifView;

.field private eb:[I

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/android/mipop/help/HelpActivity;->ea:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v1, [Lcom/ant/liao/GifView;

    iput-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mipop/help/HelpActivity;->eb:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dY:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0c0030

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/mipop/api/e;->bt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    sput v0, Lcom/android/mipop/help/HelpActivity;->ea:I

    :cond_0
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/HelpActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mipop/help/HelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v0, Lcom/android/mipop/help/HelpActivity;->ea:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f030006

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView;

    aput-object v0, v1, v8

    const v0, 0x7f030008

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView;

    aput-object v0, v1, v5

    const v0, 0x7f03000a

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView;

    aput-object v0, v5, v9

    :goto_0
    const v0, 0x7f03000c

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    const/4 v6, 0x3

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView;

    aput-object v0, v5, v6

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    aget-object v0, v0, v8

    const v5, 0x7f02001d

    invoke-virtual {v0, v5}, Lcom/ant/liao/GifView;->h(I)V

    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    sget v0, Lcom/android/mipop/help/HelpActivity;->ea:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dY:Landroid/view/GestureDetector;

    return-void

    :cond_2
    const v0, 0x7f030007

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView;

    aput-object v0, v1, v8

    const v0, 0x7f030009

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView;

    aput-object v0, v1, v5

    const v0, 0x7f03000b

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ant/liao/GifView;

    aput-object v0, v5, v9

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42a0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    sget v2, Lcom/android/mipop/help/HelpActivity;->ea:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    iget v2, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/mipop/help/HelpActivity;->eb:[I

    iget v3, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ant/liao/GifView;->h(I)V

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x3d60

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    const v2, 0x7f040003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dZ:[Lcom/ant/liao/GifView;

    iget v2, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/mipop/help/HelpActivity;->eb:[I

    iget v3, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ant/liao/GifView;->h(I)V

    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->dX:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->dY:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
