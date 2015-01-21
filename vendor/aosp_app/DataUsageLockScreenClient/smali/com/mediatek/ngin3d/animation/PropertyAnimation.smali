.class public Lcom/mediatek/ngin3d/animation/PropertyAnimation;
.super Lcom/mediatek/ngin3d/animation/BasicAnimation;
.source "PropertyAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PropertyAnimation"


# instance fields
.field private mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

.field protected mProperty:Lcom/mediatek/ngin3d/Property;

.field protected mPropertyName:Ljava/lang/String;

.field protected mTarget:Lcom/mediatek/ngin3d/Actor;

.field protected mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>()V

    .line 67
    return-void
.end method

.method public varargs constructor <init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
    .locals 0
    .parameter "target"
    .parameter "property"
    .parameter "values"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>()V

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public varargs constructor <init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "target"
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>()V

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mediatek/ngin3d/Actor;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v0

    .line 98
    .local v0, prop:Lcom/mediatek/ngin3d/Property;
    if-nez v0, :cond_1

    .line 99
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

    .line 101
    :cond_1
    invoke-direct {p0, p1, v0, p3}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public varargs constructor <init>(Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
    .locals 2
    .parameter "property"
    .parameter "values"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>()V

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify property cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    .line 121
    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify property name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mPropertyName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    .line 110
    return-void
.end method

.method private varargs initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
    .locals 3
    .parameter "target"
    .parameter "property"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p2, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify property cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should specify at least two values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    .line 136
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 137
    iput-object p3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 140
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mAlpha:Lcom/mediatek/ngin3d/animation/Alpha;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Alpha;->addListener(Lcom/mediatek/ngin3d/animation/Alpha$Listener;)V

    .line 268
    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 152
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/mediatek/ngin3d/Point;

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/mediatek/ngin3d/Point;

    iget-boolean v1, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/mediatek/ngin3d/Point;

    iget-boolean v0, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    if-eq v1, v0, :cond_5

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot animate between normalized and unnormalized position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_5
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    goto :goto_0

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/mediatek/ngin3d/Scale;

    if-eqz v0, :cond_7

    .line 181
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    goto :goto_0

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/mediatek/ngin3d/Color;

    if-eqz v0, :cond_8

    .line 194
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    goto :goto_0

    .line 209
    :cond_8
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/mediatek/ngin3d/Rotation;

    if-eqz v0, :cond_9

    .line 210
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    goto :goto_0

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/mediatek/ngin3d/Stage$Camera;

    if-eqz v0, :cond_a

    .line 245
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$7;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$7;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    goto/16 :goto_0

    .line 265
    :cond_a
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "Property is not animatable"

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->clone()Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->clone()Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .line 356
    .local v0, animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 357
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
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->clone()Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-result-object v0

    return-object v0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTarget()Lcom/mediatek/ngin3d/Actor;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method protected onCompleted(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    .line 287
    if-nez p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 299
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_1
    if-nez p1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onPaused()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->onAnimationStopped(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method protected onStarted()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/ngin3d/Actor;->onAnimationStarted(Ljava/lang/String;Lcom/mediatek/ngin3d/animation/Animation;)V

    .line 272
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 4
    .parameter "target"

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mPropertyName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 321
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Property and property name can not both null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mAlpha:Lcom/mediatek/ngin3d/animation/Alpha;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/Alpha;->removeListener(Lcom/mediatek/ngin3d/animation/Alpha$Listener;)V

    .line 326
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mPropertyName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 327
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Actor;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v1

    if-nez v1, :cond_2

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The target has no property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    .line 340
    :goto_0
    return-object p0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Actor;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v0

    .line 333
    .local v0, prop:Lcom/mediatek/ngin3d/Property;
    if-nez v0, :cond_4

    .line 334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    goto :goto_0
.end method
