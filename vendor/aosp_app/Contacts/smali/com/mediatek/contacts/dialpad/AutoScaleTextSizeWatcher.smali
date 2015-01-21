.class public Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;
.super Ljava/lang/Object;
.source "AutoScaleTextSizeWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoScaleTextSizeWatcher"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentTextSize:I

.field protected mDeltaTextSize:I

.field protected mDigitsWidth:I

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mMaxTextSize:I

.field protected mMinTextSize:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPreviousDigitsLength:I

.field protected mTarget:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mTarget:Landroid/widget/EditText;

    .line 35
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 37
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mTarget:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 39
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 40
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 41
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 42
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->autoScaleTextSize(Z)V

    .line 63
    return-void
.end method

.method protected autoScaleTextSize(Z)V
    .locals 13
    .parameter "delete"

    .prologue
    const/4 v12, 0x0

    .line 78
    iget-object v10, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mTarget:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, digits:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 81
    .local v4, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 83
    iget v10, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mMaxTextSize:I

    iput v10, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mCurrentTextSize:I

    .line 84
    iget-object v10, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mTarget:Landroid/widget/EditText;

    iget v11, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mMaxTextSize:I

    int-to-float v11, v11

    invoke-virtual {v10, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v6, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mMaxTextSize:I

    .line 89
    .local v6, max:I
    iget v7, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mMinTextSize:I

    .line 90
    .local v7, min:I
    iget v3, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mDigitsWidth:I

    .line 91
    .local v3, digitsWidth:I
    iget v1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mDeltaTextSize:I

    .line 92
    .local v1, delta:I
    iget-object v8, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mPaint:Landroid/graphics/Paint;

    .line 95
    .local v8, paint:Landroid/graphics/Paint;
    iget v0, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mCurrentTextSize:I

    .line 96
    .local v0, current:I
    move v9, v0

    .line 97
    .local v9, precurrent:I
    int-to-float v10, v0

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v5, v10

    .line 100
    .local v5, inputWidth:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inputWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " current = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " digits = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->log(Ljava/lang/String;)V

    .line 102
    if-nez p1, :cond_4

    .line 103
    :goto_1
    if-le v0, v7, :cond_1

    if-le v5, v3, :cond_1

    .line 104
    sub-int/2addr v0, v1

    .line 105
    if-ge v0, v7, :cond_2

    .line 106
    move v0, v7

    .line 137
    :cond_1
    :goto_2
    iput v0, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mCurrentTextSize:I

    .line 138
    iget-object v10, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mTarget:Landroid/widget/EditText;

    int-to-float v11, v0

    invoke-virtual {v10, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 109
    :cond_2
    int-to-float v10, v0

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v5, v10

    goto :goto_1

    .line 121
    :cond_3
    int-to-float v10, v0

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v5, v10

    .line 113
    :cond_4
    if-ge v5, v3, :cond_5

    if-ge v0, v6, :cond_5

    .line 114
    move v9, v0

    .line 115
    add-int/2addr v0, v1

    .line 116
    if-le v0, v6, :cond_3

    .line 117
    move v0, v6

    .line 128
    :cond_5
    int-to-float v10, v0

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v5, v10

    .line 131
    if-le v5, v3, :cond_1

    .line 132
    move v0, v9

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 67
    return-void
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    const-string v0, "AutoScaleTextSizeWatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 71
    return-void
.end method

.method public setAutoScaleParameters(IIII)V
    .locals 3
    .parameter "minTextSize"
    .parameter "maxTextSize"
    .parameter "deltaTextSize"
    .parameter "digitsWidth"

    .prologue
    .line 46
    iput p2, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mMaxTextSize:I

    .line 47
    iput p1, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mMinTextSize:I

    .line 48
    iput p3, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mDeltaTextSize:I

    .line 49
    iput p4, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mDigitsWidth:I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digitsWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->log(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mMaxTextSize:I

    iput v0, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mCurrentTextSize:I

    .line 54
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mTarget:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->mCurrentTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    return-void
.end method

.method public trigger(Z)V
    .locals 1
    .parameter "delete"

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->autoScaleTextSize(Z)V

    .line 59
    return-void
.end method
