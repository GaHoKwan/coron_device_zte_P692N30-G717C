.class public Lcom/zte/heartyservice/common/datatype/ZTESwitch;
.super Landroid/widget/CompoundButton;
.source "ZTESwitch.java"


# instance fields
.field private centerY:I

.field private leftMargin:F

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private textOff:Ljava/lang/String;

.field private textOffId:I

.field private textOn:Ljava/lang/String;

.field private textOnId:I

.field private textSize:F

.field private topMargin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/high16 v1, 0x41a0

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textSize:F

    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mContext:Landroid/content/Context;

    .line 45
    sget-object v1, Lcom/zte/heartyservice/R$styleable;->ZTESwitch:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, typedArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOnId:I

    .line 47
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOffId:I

    .line 49
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOnId:I

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOn:Ljava/lang/String;

    .line 55
    :goto_0
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOffId:I

    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0385

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOff:Ljava/lang/String;

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textSize:F

    .line 61
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->leftMargin:F

    .line 62
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->topMargin:F

    .line 64
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setBackgroundColor(I)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setChecked(Z)V

    .line 67
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->configPaint()V

    .line 68
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOnId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOn:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOffId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOff:Ljava/lang/String;

    goto :goto_1
.end method

.method private configPaint()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public getTextOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOff:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOn:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->getBottom()I

    move-result v0

    .line 100
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->getTop()I

    move-result v3

    .line 101
    .local v3, top:I
    sub-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->centerY:I

    .line 102
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOn:Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double v1, v4, v6

    .line 104
    .local v1, startTextPlace:D
    const-wide/16 v4, 0x0

    cmpg-double v4, v1, v4

    if-gez v4, :cond_0

    .line 105
    const-wide/16 v1, 0x0

    .line 107
    :cond_0
    iget-boolean v4, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mChecked:Z

    if-eqz v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOn:Ljava/lang/String;

    double-to-float v5, v1

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->leftMargin:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->centerY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->topMargin:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    .end local v1           #startTextPlace:D
    :cond_1
    :goto_0
    return-void

    .line 110
    .restart local v1       #startTextPlace:D
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOff:Ljava/lang/String;

    double-to-float v5, v1

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->leftMargin:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->centerY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->topMargin:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 122
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mChecked:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setChecked(Z)V

    .line 125
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v3, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mChecked:Z

    invoke-interface {v1, p0, v3}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mChecked:Z

    .line 83
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mChecked:Z

    if-eqz v0, :cond_0

    .line 84
    const v0, 0x7f0202b4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setBackgroundResource(I)V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->postInvalidate()V

    .line 89
    return-void

    .line 86
    :cond_0
    const v0, 0x7f0202b2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 138
    return-void
.end method

.method public setTextOff(Ljava/lang/String;)V
    .locals 0
    .parameter "textOff"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOff:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setTextOn(Ljava/lang/String;)V
    .locals 0
    .parameter "textOn"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->textOn:Ljava/lang/String;

    .line 146
    return-void
.end method
