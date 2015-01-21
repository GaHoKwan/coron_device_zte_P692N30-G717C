.class public Lcom/autonavi/xmgd/view/GDZoomButton;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final ANIM_DURATION:I = 0x76


# instance fields
.field private final HIDE:I

.field private final HIDING:I

.field private final SHOW:I

.field private final SHOWING:I

.field i:I

.field private plus:Landroid/widget/ImageView;

.field plusClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

.field private status:I

.field private sub:Landroid/widget/ImageView;

.field subClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

.field private who:Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;

.field zoomin_day:I

.field zoomin_night:I

.field zoomout_day:I

.field zoomout_night:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/GDZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->SHOW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->SHOWING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->HIDE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->HIDING:I

    iput v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->i:I

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDZoomButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/view/GDZoomButton;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    return v0
.end method

.method static synthetic access$002(Lcom/autonavi/xmgd/view/GDZoomButton;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/view/GDZoomButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDZoomButton;->doPlus()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/view/GDZoomButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDZoomButton;->doSub()V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/view/GDZoomButton;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/view/GDZoomButton;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animationMove(FFFF)V
    .locals 8

    const-wide/16 v6, 0x76

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p1, p3, p2, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/autonavi/xmgd/view/GDZoomButton$3;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/GDZoomButton$3;-><init>(Lcom/autonavi/xmgd/view/GDZoomButton;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/view/GDZoomButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private doPlus()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->who:Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->who:Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;->onZoomInClick()V

    :cond_0
    return-void
.end method

.method private doSub()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->who:Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->who:Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;->onZoomOutClick()V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const v3, 0x7f02004c

    const v2, 0x7f020048

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/GDZoomButton;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iput v3, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomin_day:I

    iput v3, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomin_night:I

    iput v2, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomout_day:I

    iput v2, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomout_night:I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    new-instance v1, Lcom/autonavi/xmgd/view/GDZoomButton$1;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/view/GDZoomButton$1;-><init>(Lcom/autonavi/xmgd/view/GDZoomButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/xmgd/view/ClickRepeater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plusClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    new-instance v1, Lcom/autonavi/xmgd/view/GDZoomButton$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/view/GDZoomButton$2;-><init>(Lcom/autonavi/xmgd/view/GDZoomButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/xmgd/view/ClickRepeater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->subClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    return-void
.end method


# virtual methods
.method public getPlusEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getSubEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDZoomButton;->getWidth()I

    move-result v0

    const/4 v1, 0x3

    iput v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    int-to-float v0, v0

    invoke-direct {p0, v2, v2, v0, v2}, Lcom/autonavi/xmgd/view/GDZoomButton;->animationMove(FFFF)V

    :cond_1
    return-void
.end method

.method public isHide()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    iget v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomin_day:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    iget v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomout_day:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    iget v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomin_night:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    iget v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->zoomout_night:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeClickRepeater()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plusClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->getIsPressDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plusClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->removeHandler()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->subClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->getIsPressDown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->subClickRepeater:Lcom/autonavi/xmgd/view/ClickRepeater;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->removeHandler()V

    :cond_1
    return-void
.end method

.method public setIZBClickListener(Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->who:Lcom/autonavi/xmgd/view/GDZoomButton$IZBClickListener;

    return-void
.end method

.method public setPlusEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setSubEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDZoomButton;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/view/GDZoomButton;->status:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/autonavi/xmgd/view/GDZoomButton;->animationMove(FFFF)V

    :cond_1
    return-void
.end method
