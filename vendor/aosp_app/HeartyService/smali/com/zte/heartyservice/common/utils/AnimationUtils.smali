.class public Lcom/zte/heartyservice/common/utils/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field private static mainActivityAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlphaAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    const/4 v2, 0x2

    .line 26
    sget-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-string v0, "alpha"

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    .line 33
    :goto_0
    sget-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    sget-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/zte/heartyservice/common/utils/AnimationUtils;->mainActivityAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 27
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static getGifAniamtion(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 8
    .parameter "context"
    .parameter "frameNumbers"
    .parameter "resPreviewName"

    .prologue
    .line 46
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 47
    .local v1, drawableAnimation:Landroid/graphics/drawable/AnimationDrawable;
    const/4 v0, 0x0

    .line 48
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, p1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 52
    .local v3, id:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    const/16 v4, 0x64

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v3           #id:I
    :cond_0
    return-object v1
.end method

.method public static startShakeAniamtion(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    return-void
.end method
