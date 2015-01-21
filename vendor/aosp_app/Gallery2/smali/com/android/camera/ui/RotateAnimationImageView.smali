.class public Lcom/android/camera/ui/RotateAnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "RotateAnimationImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateAniImageView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method private setAnimationRunning(Z)V
    .locals 4
    .parameter "run"

    .prologue
    .line 24
    const-string v1, "RotateAniImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnimationRunning("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 29
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    if-eqz v0, :cond_2

    .line 30
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 33
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 37
    :cond_2
    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/RotateAnimationImageView;->setAnimationRunning(Z)V

    .line 19
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/RotateAnimationImageView;->setAnimationRunning(Z)V

    .line 21
    return-void
.end method
