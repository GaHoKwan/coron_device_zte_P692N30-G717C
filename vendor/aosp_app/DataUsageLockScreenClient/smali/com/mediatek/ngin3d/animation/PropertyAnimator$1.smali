.class Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;
.super Ljava/lang/Object;
.source "PropertyAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/PropertyAnimator;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 24
    .parameter "ani"

    .prologue
    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    .line 128
    .local v8, fraction:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 130
    .local v10, mStart:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 131
    .local v9, mEnd:F
    sub-float v18, v9, v10

    mul-float v18, v18, v8

    add-float v14, v10, v18

    .line 132
    .local v14, value:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v19, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 210
    .end local v9           #mEnd:F
    .end local v10           #mStart:F
    .end local v14           #value:F
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 135
    .local v10, mStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 136
    .local v9, mEnd:I
    sub-int v18, v9, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v14, v10, v18

    .line 137
    .local v14, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v19, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v9           #mEnd:I
    .end local v10           #mStart:I
    .end local v14           #value:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/mediatek/ngin3d/Point;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    check-cast v18, Lcom/mediatek/ngin3d/Point;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    aget-object v18, v18, v20

    check-cast v18, Lcom/mediatek/ngin3d/Point;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 140
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Cannot animate between normalized and unnormalized position"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 142
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v10, v18, v19

    check-cast v10, Lcom/mediatek/ngin3d/Point;

    .line 143
    .local v10, mStart:Lcom/mediatek/ngin3d/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v9, v18, v19

    check-cast v9, Lcom/mediatek/ngin3d/Point;

    .line 144
    .local v9, mEnd:Lcom/mediatek/ngin3d/Point;
    new-instance v11, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v11, v9}, Lcom/mediatek/ngin3d/Point;-><init>(Lcom/mediatek/ngin3d/Point;)V

    .line 145
    .local v11, mValue:Lcom/mediatek/ngin3d/Point;
    iget v0, v10, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v18, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v19, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    add-float v18, v18, v19

    iget v0, v10, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v19, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v20, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v8

    add-float v19, v19, v20

    iget v0, v10, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v20, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v21, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, v8

    add-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Lcom/mediatek/ngin3d/Point;->set(FFF)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    .end local v9           #mEnd:Lcom/mediatek/ngin3d/Point;
    .end local v10           #mStart:Lcom/mediatek/ngin3d/Point;
    .end local v11           #mValue:Lcom/mediatek/ngin3d/Point;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/mediatek/ngin3d/Scale;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v10, v18, v19

    check-cast v10, Lcom/mediatek/ngin3d/Scale;

    .line 151
    .local v10, mStart:Lcom/mediatek/ngin3d/Scale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v9, v18, v19

    check-cast v9, Lcom/mediatek/ngin3d/Scale;

    .line 152
    .local v9, mEnd:Lcom/mediatek/ngin3d/Scale;
    new-instance v11, Lcom/mediatek/ngin3d/Scale;

    invoke-direct {v11}, Lcom/mediatek/ngin3d/Scale;-><init>()V

    .line 153
    .local v11, mValue:Lcom/mediatek/ngin3d/Scale;
    iget v0, v10, Lcom/mediatek/ngin3d/Scale;->x:F

    move/from16 v18, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Scale;->x:F

    move/from16 v19, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Scale;->x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    add-float v18, v18, v19

    iget v0, v10, Lcom/mediatek/ngin3d/Scale;->y:F

    move/from16 v19, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Scale;->y:F

    move/from16 v20, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Scale;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v8

    add-float v19, v19, v20

    iget v0, v10, Lcom/mediatek/ngin3d/Scale;->z:F

    move/from16 v20, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Scale;->z:F

    move/from16 v21, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Scale;->z:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, v8

    add-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Lcom/mediatek/ngin3d/Scale;->set(FFF)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 157
    .end local v9           #mEnd:Lcom/mediatek/ngin3d/Scale;
    .end local v10           #mStart:Lcom/mediatek/ngin3d/Scale;
    .end local v11           #mValue:Lcom/mediatek/ngin3d/Scale;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/mediatek/ngin3d/Color;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v10, v18, v19

    check-cast v10, Lcom/mediatek/ngin3d/Color;

    .line 159
    .local v10, mStart:Lcom/mediatek/ngin3d/Color;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v9, v18, v19

    check-cast v9, Lcom/mediatek/ngin3d/Color;

    .line 160
    .local v9, mEnd:Lcom/mediatek/ngin3d/Color;
    new-instance v11, Lcom/mediatek/ngin3d/Color;

    invoke-direct {v11}, Lcom/mediatek/ngin3d/Color;-><init>()V

    .line 161
    .local v11, mValue:Lcom/mediatek/ngin3d/Color;
    iget v0, v10, Lcom/mediatek/ngin3d/Color;->red:I

    move/from16 v18, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Color;->red:I

    move/from16 v19, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Color;->red:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Lcom/mediatek/ngin3d/Color;->red:I

    .line 162
    iget v0, v10, Lcom/mediatek/ngin3d/Color;->green:I

    move/from16 v18, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Color;->green:I

    move/from16 v19, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Color;->green:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Lcom/mediatek/ngin3d/Color;->green:I

    .line 163
    iget v0, v10, Lcom/mediatek/ngin3d/Color;->blue:I

    move/from16 v18, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Color;->blue:I

    move/from16 v19, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Color;->blue:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 164
    iget v0, v10, Lcom/mediatek/ngin3d/Color;->alpha:I

    move/from16 v18, v0

    iget v0, v9, Lcom/mediatek/ngin3d/Color;->alpha:I

    move/from16 v19, v0

    iget v0, v10, Lcom/mediatek/ngin3d/Color;->alpha:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 166
    .end local v9           #mEnd:Lcom/mediatek/ngin3d/Color;
    .end local v10           #mStart:Lcom/mediatek/ngin3d/Color;
    .end local v11           #mValue:Lcom/mediatek/ngin3d/Color;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/mediatek/ngin3d/Rotation;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v10, v18, v19

    check-cast v10, Lcom/mediatek/ngin3d/Rotation;

    .line 168
    .local v10, mStart:Lcom/mediatek/ngin3d/Rotation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v9, v18, v19

    check-cast v9, Lcom/mediatek/ngin3d/Rotation;

    .line 169
    .local v9, mEnd:Lcom/mediatek/ngin3d/Rotation;
    new-instance v11, Lcom/mediatek/ngin3d/Rotation;

    invoke-direct {v11}, Lcom/mediatek/ngin3d/Rotation;-><init>()V

    .line 170
    .local v11, mValue:Lcom/mediatek/ngin3d/Rotation;
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 171
    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles()[F

    move-result-object v6

    .line 172
    .local v6, euler1:[F
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles()[F

    move-result-object v7

    .line 173
    .local v7, euler2:[F
    const/16 v18, 0x0

    aget v18, v6, v18

    const/16 v19, 0x0

    aget v19, v7, v19

    const/16 v20, 0x0

    aget v20, v6, v20

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    add-float v15, v18, v19

    .line 174
    .local v15, x:F
    const/16 v18, 0x1

    aget v18, v6, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    const/16 v20, 0x1

    aget v20, v6, v20

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    add-float v16, v18, v19

    .line 175
    .local v16, y:F
    const/16 v18, 0x2

    aget v18, v6, v18

    const/16 v19, 0x2

    aget v19, v7, v19

    const/16 v20, 0x2

    aget v20, v6, v20

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    add-float v17, v18, v19

    .line 176
    .local v17, z:F
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Lcom/mediatek/ngin3d/Rotation;->set(FFF)V

    .line 190
    .end local v6           #euler1:[F
    .end local v7           #euler2:[F
    .end local v15           #x:F
    .end local v16           #y:F
    .end local v17           #z:F
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v18

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 192
    const-string v18, "PropertyAnimator"

    const-string v19, "Warning: mixed angle interpolation"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_8
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 179
    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Rotation;->getAxisAngle()F

    move-result v4

    .line 180
    .local v4, angle1:F
    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Rotation;->getAxis()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v12

    .line 181
    .local v12, v1:Lcom/mediatek/ngin3d/Point;
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getAxisAngle()F

    move-result v5

    .line 182
    .local v5, angle2:F
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getAxis()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v13

    .line 184
    .local v13, v2:Lcom/mediatek/ngin3d/Point;
    iget v0, v12, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v18, v0

    iget v0, v13, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v19, v0

    iget v0, v12, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    add-float v18, v18, v19

    iget v0, v12, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v19, v0

    iget v0, v13, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v20, v0

    iget v0, v12, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v8

    add-float v19, v19, v20

    iget v0, v12, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v20, v0

    iget v0, v13, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v21, v0

    iget v0, v12, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, v8

    add-float v20, v20, v21

    sub-float v21, v5, v4

    mul-float v21, v21, v8

    add-float v21, v21, v4

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Rotation;->set(FFFF)V

    goto/16 :goto_1

    .line 194
    .end local v4           #angle1:F
    .end local v5           #angle2:F
    .end local v9           #mEnd:Lcom/mediatek/ngin3d/Rotation;
    .end local v10           #mStart:Lcom/mediatek/ngin3d/Rotation;
    .end local v11           #mValue:Lcom/mediatek/ngin3d/Rotation;
    .end local v12           #v1:Lcom/mediatek/ngin3d/Point;
    .end local v13           #v2:Lcom/mediatek/ngin3d/Point;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/mediatek/ngin3d/Stage$Camera;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v10, v18, v19

    check-cast v10, Lcom/mediatek/ngin3d/Stage$Camera;

    .line 196
    .local v10, mStart:Lcom/mediatek/ngin3d/Stage$Camera;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mValues:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v9, v18, v19

    check-cast v9, Lcom/mediatek/ngin3d/Stage$Camera;

    .line 197
    .local v9, mEnd:Lcom/mediatek/ngin3d/Stage$Camera;
    new-instance v11, Lcom/mediatek/ngin3d/Stage$Camera;

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Lcom/mediatek/ngin3d/Stage$Camera;-><init>(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    .line 198
    .local v11, mValue:Lcom/mediatek/ngin3d/Stage$Camera;
    iget-object v0, v11, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v19, v0

    iget-object v0, v9, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v8

    add-float v19, v19, v20

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v9, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v21, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, v8

    add-float v20, v20, v21

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v21, v0

    iget-object v0, v9, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v22, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, v8

    add-float v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/mediatek/ngin3d/Point;->set(FFF)V

    .line 202
    iget-object v0, v11, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v19, v0

    iget-object v0, v9, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v8

    add-float v19, v19, v20

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v9, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v21, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, v8

    add-float v20, v20, v21

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v21, v0

    iget-object v0, v9, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v22, v0

    iget-object v0, v10, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mediatek/ngin3d/Point;->z:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, v8

    add-float v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/mediatek/ngin3d/Point;->set(FFF)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimator;->mProperty:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 208
    .end local v9           #mEnd:Lcom/mediatek/ngin3d/Stage$Camera;
    .end local v10           #mStart:Lcom/mediatek/ngin3d/Stage$Camera;
    .end local v11           #mValue:Lcom/mediatek/ngin3d/Stage$Camera;
    :cond_a
    new-instance v18, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v19, "Property is not animatable"

    invoke-direct/range {v18 .. v19}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v18
.end method
