.class public Lcom/zte/heartyservice/common/datatype/P3Switch;
.super Landroid/widget/CompoundButton;
.source "P3Switch.java"


# instance fields
.field private leftMargin:F

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mResources:Landroid/content/res/Resources;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private topMargin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mResources:Landroid/content/res/Resources;

    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->leftMargin:F

    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->topMargin:F

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 55
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->configPaint()V

    .line 56
    return-void
.end method

.method private configPaint()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mChecked:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 123
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mChecked:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 126
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v3, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mChecked:Z

    invoke-interface {v1, p0, v3}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mChecked:Z

    .line 69
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mChecked:Z

    if-eqz v0, :cond_0

    .line 70
    const v0, 0x7f0202b5

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setBackgroundResource(I)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->postInvalidate()V

    .line 75
    return-void

    .line 72
    :cond_0
    const v0, 0x7f0202b3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/P3Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 139
    return-void
.end method
