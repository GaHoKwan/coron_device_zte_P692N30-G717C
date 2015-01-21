.class public Lcom/android/server/wm/b;
.super Ljava/lang/Object;


# static fields
.field public static final ANIMATION_TYPE_EXIT:I = 0x1

.field public static final ANIMATION_TYPE_SWITCH:I = 0x2

.field public static final DURATION_EXIT:I = 0x12c

.field public static final DURATION_SWITCH:I = 0x190


# direct methods
.method public static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 11

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    const v2, 0x3e4ccccd

    const/4 v10, 0x1

    const/high16 v1, 0x3f80

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-ne p1, v10, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v9

    :cond_0
    const-wide/16 v0, 0x190

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0
.end method
