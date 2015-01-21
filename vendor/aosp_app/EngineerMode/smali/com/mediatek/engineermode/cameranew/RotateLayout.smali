.class public Lcom/mediatek/engineermode/cameranew/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/mediatek/engineermode/cameranew/Rotatable;


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 54
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 58
    sub-int v1, p4, p2

    .line 59
    .local v1, width:I
    sub-int v0, p5, p3

    .line 60
    .local v0, height:I
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 63
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 67
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, w:I
    const/4 v0, 0x0

    .line 78
    .local v0, h:I
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 94
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 96
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 116
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 117
    return-void

    .line 81
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 82
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 84
    goto :goto_0

    .line 87
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 88
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 90
    goto :goto_0

    .line 98
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 99
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 102
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 106
    :sswitch_4
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 107
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 110
    :sswitch_5
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 111
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 96
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 41
    rem-int/lit16 p1, p1, 0x168

    .line 42
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/RotateLayout;->mOrientation:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
