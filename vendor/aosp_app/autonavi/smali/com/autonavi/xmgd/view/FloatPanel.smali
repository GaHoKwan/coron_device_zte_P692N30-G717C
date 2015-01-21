.class public Lcom/autonavi/xmgd/view/FloatPanel;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final HIDE:I

.field private final HIDING:I

.field private final SHOW:I

.field private final SHOWING:I

.field private mAnimClose:Landroid/view/animation/Animation;

.field private mAnimOpen:Landroid/view/animation/Animation;

.field private mPopoutDir:I

.field private mShakeAnim:Landroid/view/animation/Animation;

.field private status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/FloatPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->SHOW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->SHOWING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->HIDE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->HIDING:I

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/view/FloatPanel;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/FloatPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/FloatPanel;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/view/FloatPanel;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    return v0
.end method

.method static synthetic access$002(Lcom/autonavi/xmgd/view/FloatPanel;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    return p1
.end method

.method private animationMove(FFFF)V
    .locals 8

    const-wide/16 v6, 0x206

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p1, p3, p2, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x40333333

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/autonavi/xmgd/view/FloatPanel$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/FloatPanel$1;-><init>(Lcom/autonavi/xmgd/view/FloatPanel;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/view/FloatPanel;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/FloatPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4120

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mShakeAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mShakeAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x396

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mShakeAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40a0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public hide(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mAnimClose:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mAnimClose:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/FloatPanel;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/FloatPanel;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/FloatPanel;->getWidth()I

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    iget v2, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mPopoutDir:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v3, v3, v3, v0}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :pswitch_1
    int-to-float v0, v0

    invoke-direct {p0, v3, v3, v3, v0}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :pswitch_2
    neg-int v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v3, v3, v0, v3}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :pswitch_3
    int-to-float v0, v1

    invoke-direct {p0, v3, v3, v0, v3}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/FloatPanel;->setVisibility(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isHide()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPopoutDirection(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mPopoutDir:I

    return-void
.end method

.method public shake()V
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mShakeAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mShakeAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/FloatPanel;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mAnimOpen:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mAnimOpen:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/FloatPanel;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/FloatPanel;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/FloatPanel;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    iput v2, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    iget v2, p0, Lcom/autonavi/xmgd/view/FloatPanel;->mPopoutDir:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v3, v0, v3, v3}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :pswitch_1
    int-to-float v0, v0

    invoke-direct {p0, v3, v0, v3, v3}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :pswitch_2
    neg-int v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :pswitch_3
    int-to-float v0, v1

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/autonavi/xmgd/view/FloatPanel;->animationMove(FFFF)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/FloatPanel;->setVisibility(I)V

    iput v0, p0, Lcom/autonavi/xmgd/view/FloatPanel;->status:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
