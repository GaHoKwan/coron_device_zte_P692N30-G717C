.class public Lcom/autonavi/xmgd/view/GDImageButton;
.super Landroid/widget/ImageButton;


# static fields
.field private static final ACTION_DOWN:I = 0x0

.field private static final ACTION_UP:I = 0x1

.field private static final ANIM_DURATION:I = 0x76


# instance fields
.field private final HIDE:I

.field private final HIDING:I

.field private final SHOW:I

.field private final SHOWING:I

.field private command_bitmap:Landroid/graphics/Bitmap;

.field private command_image:I

.field private disable_bitmap:Landroid/graphics/Bitmap;

.field private disable_image:I

.field private selected_bitmap:Landroid/graphics/Bitmap;

.field private selected_image:I

.field private status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/GDImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/autonavi/xmgd/view/GDImageButton$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton$2;-><init>(Lcom/autonavi/xmgd/view/GDImageButton;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDImageButton;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    iput p3, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I

    iput p4, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/autonavi/xmgd/view/GDImageButton$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton$1;-><init>(Lcom/autonavi/xmgd/view/GDImageButton;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/autonavi/xmgd/view/GDImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/autonavi/xmgd/view/GDImageButton$3;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton$3;-><init>(Lcom/autonavi/xmgd/view/GDImageButton;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->SHOW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->SHOWING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->HIDE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->HIDING:I

    new-instance v0, Lcom/autonavi/xmgd/view/GDImageButton$4;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton$4;-><init>(Lcom/autonavi/xmgd/view/GDImageButton;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/view/GDImageButton;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/view/GDImageButton;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I

    return v0
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/view/GDImageButton;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    return v0
.end method

.method static synthetic access$500(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xmgd/view/GDImageButton;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    return v0
.end method

.method static synthetic access$602(Lcom/autonavi/xmgd/view/GDImageButton;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    return p1
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

    new-instance v0, Lcom/autonavi/xmgd/view/GDImageButton$5;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton$5;-><init>(Lcom/autonavi/xmgd/view/GDImageButton;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

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

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method


# virtual methods
.method public getVisibility()I
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDImageButton;->getWidth()I

    move-result v0

    const/4 v1, 0x3

    iput v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    int-to-float v0, v0

    invoke-direct {p0, v2, v2, v0, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->animationMove(FFFF)V

    :cond_1
    return-void
.end method

.method public isHide()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public reverseHide()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDImageButton;->getWidth()I

    move-result v0

    const/4 v1, 0x3

    iput v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v2, v2, v0, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->animationMove(FFFF)V

    :cond_1
    return-void
.end method

.method public reverseShow()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDImageButton;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->animationMove(FFFF)V

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-nez p1, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setResource(III)V
    .locals 1

    iput p1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    iput p2, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I

    iput p3, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDImageButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setResource(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDImageButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    goto :goto_0
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDImageButton;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/view/GDImageButton;->status:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->animationMove(FFFF)V

    :cond_1
    return-void
.end method
