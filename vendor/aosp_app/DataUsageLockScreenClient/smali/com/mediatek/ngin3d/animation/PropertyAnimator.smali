.class public Lcom/mediatek/ngin3d/animation/PropertyAnimator;
.super Landroid/animation/ValueAnimator;
.source "PropertyAnimator.java"


# static fields
.field public static final DEFAULT_DURATION:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "PropertyAnimator"


# instance fields
.field protected mProperty:Lcom/mediatek/ngin3d/Property;

.field protected mPropertyName:Ljava/lang/String;

.field protected mTarget:Lcom/mediatek/ngin3d/Actor;

.field protected mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 67
    return-void
.end method

.method public varargs constructor <init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
    .locals 0
    .parameter "target"
    .parameter "property"
    .parameter "values"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public varargs constructor <init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "target"
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mediatek/ngin3d/Actor;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v0

    .line 81
    .local v0, prop:Lcom/mediatek/ngin3d/Property;
    if-nez v0, :cond_1

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    invoke-direct {p0, p1, v0, p3}, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public varargs constructor <init>(Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
    .locals 2
    .parameter "property"
    .parameter "values"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify property cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    .line 104
    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify property name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    .line 93
    return-void
.end method

.method private varargs initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
    .locals 2
    .parameter "target"
    .parameter "property"
    .parameter "values"

    .prologue
    const/4 v1, 0x2

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify property cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    array-length v0, p3

    if-ge v0, v1, :cond_2

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should specify at least two values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    .line 119
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 120
    iput-object p3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    .line 122
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 123
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    return-void

    .line 122
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->clone()Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->clone()Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/ngin3d/animation/PropertyAnimator;
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    .line 262
    .local v0, animation:Lcom/mediatek/ngin3d/animation/PropertyAnimator;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 263
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->clone()Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTarget()Lcom/mediatek/ngin3d/Actor;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method public setTarget(Lcom/mediatek/ngin3d/Actor;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Property and property name can not both null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Actor;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v1

    if-nez v1, :cond_2

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The target has no property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    .line 248
    :goto_0
    return-void

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Actor;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v0

    .line 242
    .local v0, prop:Lcom/mediatek/ngin3d/Property;
    if-nez v0, :cond_4

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    goto :goto_0
.end method
