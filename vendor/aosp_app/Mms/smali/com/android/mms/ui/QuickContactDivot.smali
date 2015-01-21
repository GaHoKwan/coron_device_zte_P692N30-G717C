.class public Lcom/android/mms/ui/QuickContactDivot;
.super Landroid/widget/QuickContactBadge;
.source "QuickContactDivot.java"

# interfaces
.implements Lcom/android/mms/ui/Divot;


# instance fields
.field private mDensity:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableIntrinsicHeight:I

.field private mDrawableIntrinsicWidth:I

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p2}, Lcom/android/mms/ui/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p2}, Lcom/android/mms/ui/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private computeBounds(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "c"

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, left:I
    const/4 v6, 0x0

    .line 134
    .local v6, top:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 135
    .local v5, right:I
    div-int/lit8 v4, v5, 0x2

    .line 136
    .local v4, middle:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 138
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickContactDivot;->getCloseOffset()F

    move-result v7

    float-to-int v1, v7

    .line 140
    .local v1, cornerOffset:I
    iget v7, p0, Lcom/android/mms/ui/QuickContactDivot;->mPosition:I

    sparse-switch v7, :sswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 142
    :sswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicWidth:I

    sub-int v8, v5, v8

    add-int/lit8 v9, v1, 0x0

    add-int/lit8 v10, v1, 0x0

    iget v11, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    add-int/lit8 v9, v1, 0x0

    iget v10, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicWidth:I

    add-int/lit8 v10, v10, 0x0

    add-int/lit8 v11, v1, 0x0

    iget v12, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicHeight:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 158
    :sswitch_2
    iget v7, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicWidth:I

    div-int/lit8 v2, v7, 0x2

    .line 159
    .local v2, halfWidth:I
    iget-object v7, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v8, v4, v2

    iget v9, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicHeight:I

    sub-int v9, v0, v9

    add-int v10, v4, v2

    invoke-virtual {v7, v8, v9, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    const/4 v1, 0x0

    const-string v2, "position"

    sget-object v3, Lcom/android/mms/ui/QuickContactDivot;->sPositionChoices:[Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mPosition:I

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDensity:F

    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/QuickContactDivot;->setDrawable()V

    .line 62
    return-void
.end method

.method private setDrawable()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, r:Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicWidth:I

    .line 93
    iget-object v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicHeight:I

    .line 94
    return-void

    .line 71
    :pswitch_0
    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 77
    :pswitch_1
    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public asImageView()Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 120
    return-object p0
.end method

.method public assignContactFromEmail(Ljava/lang/String;)V
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public getCloseOffset()F
    .locals 2

    .prologue
    .line 116
    const/high16 v0, 0x4140

    iget v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDensity:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getFarOffset()F
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickContactDivot;->getCloseOffset()F

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mPosition:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/ui/QuickContactDivot;->computeBounds(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/mms/ui/QuickContactDivot;->mPosition:I

    .line 107
    invoke-direct {p0}, Lcom/android/mms/ui/QuickContactDivot;->setDrawable()V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 109
    return-void
.end method
