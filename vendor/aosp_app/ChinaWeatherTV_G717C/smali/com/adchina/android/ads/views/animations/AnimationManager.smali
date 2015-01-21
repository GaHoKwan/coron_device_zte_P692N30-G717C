.class public Lcom/adchina/android/ads/views/animations/AnimationManager;
.super Ljava/lang/Object;


# static fields
.field public static final ANY_ANIMATION:I = 0x0

.field public static final ENLARGEMENT_ANIMATION:I = 0x10

.field public static final FADEIN_ANIMATION:I = 0x8

.field public static final FALLDOWN_ANIMATION:I = 0x4

.field public static final ROTATE_3D_ANIMATION:I = 0x1

.field public static final RUNIN_ANIMATION:I = 0x2

.field private static mAnimations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/adchina/android/ads/views/ContentView;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x2

    const/high16 v4, 0x4000

    const/4 v5, 0x1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->isAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAnimations()I

    move-result v0

    if-gtz v0, :cond_2

    const/16 v0, 0x1f

    :cond_2
    and-int/lit8 v1, v0, 0x1

    if-lez v1, :cond_3

    sget-object v1, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_4

    sget-object v1, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_5

    sget-object v1, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v1, v0, 0x8

    if-lez v1, :cond_6

    sget-object v1, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_7

    sget-object v0, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sget-object v1, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    sget-object v1, Lcom/adchina/android/ads/views/animations/AnimationManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v4

    new-instance v0, Lcom/adchina/android/ads/views/animations/o;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    invoke-direct/range {v0 .. v5}, Lcom/adchina/android/ads/views/animations/o;-><init>(FFFFZ)V

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/views/animations/o;->setDuration(J)V

    invoke-virtual {v0, v5}, Lcom/adchina/android/ads/views/animations/o;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/animations/o;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/adchina/android/ads/views/animations/a;

    invoke-direct {v1, p0, v3, v4}, Lcom/adchina/android/ads/views/animations/a;-><init>(Lcom/adchina/android/ads/views/ContentView;FF)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/animations/o;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float v3, v0, v4

    goto :goto_1

    :sswitch_1
    :try_start_0
    new-instance v1, Lcom/adchina/android/ads/views/animations/m;

    sget-object v2, Lcom/adchina/android/ads/views/animations/n;->a:Lcom/adchina/android/ads/views/animations/n;

    const/4 v0, 0x6

    new-array v3, v0, [I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getWidth()I

    move-result v0

    :goto_2
    aput v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, -0x3c

    aput v4, v3, v0

    const/4 v0, 0x2

    const/16 v4, 0x32

    aput v4, v3, v0

    const/4 v0, 0x3

    const/16 v4, -0x28

    aput v4, v3, v0

    const/4 v0, 0x4

    const/16 v4, 0x1e

    aput v4, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/adchina/android/ads/views/animations/m;-><init>(Lcom/adchina/android/ads/views/animations/n;[I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Lcom/adchina/android/ads/views/animations/m;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/animations/m;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/animations/m;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :sswitch_2
    :try_start_2
    new-instance v1, Lcom/adchina/android/ads/views/animations/m;

    sget-object v2, Lcom/adchina/android/ads/views/animations/n;->b:Lcom/adchina/android/ads/views/animations/n;

    const/4 v0, 0x6

    new-array v3, v0, [I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getHeight()I

    move-result v0

    :goto_3
    neg-int v0, v0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0x28

    aput v4, v3, v0

    const/4 v0, 0x2

    const/16 v4, -0x1e

    aput v4, v3, v0

    const/4 v0, 0x3

    const/16 v4, 0x14

    aput v4, v3, v0

    const/4 v0, 0x4

    const/16 v4, -0xa

    aput v4, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/adchina/android/ads/views/animations/m;-><init>(Lcom/adchina/android/ads/views/animations/n;[I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Lcom/adchina/android/ads/views/animations/m;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/animations/m;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/animations/m;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    int-to-float v0, v0

    const/high16 v5, 0x4040

    mul-float/2addr v0, v5

    const/high16 v5, 0x41a0

    div-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_3

    :sswitch_3
    new-instance v0, Lcom/adchina/android/ads/views/animations/h;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/animations/h;-><init>(Lcom/adchina/android/ads/views/ContentView;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/animations/h;->a()V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Lcom/adchina/android/ads/views/animations/c;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/animations/c;-><init>(Lcom/adchina/android/ads/views/ContentView;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/animations/c;->a()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method
