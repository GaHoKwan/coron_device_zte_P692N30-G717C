.class public Lcom/android/calendar/MultiStateButton;
.super Landroid/widget/Button;
.source "MultiStateButton.java"


# instance fields
.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mButtonResources:[I

.field private mMaxStates:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/MultiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/MultiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v0, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    .line 65
    iput v2, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 67
    new-array v0, v0, [I

    const v1, 0x7f020062

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    .line 68
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v6

    and-int/lit8 v2, v6, 0x70

    .line 164
    .local v2, verticalGravity:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v6

    and-int/lit8 v1, v6, 0x7

    .line 165
    .local v1, horizontalGravity:I
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 166
    .local v0, height:I
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 168
    .local v3, width:I
    const/4 v5, 0x0

    .line 169
    .local v5, y:I
    const/4 v4, 0x0

    .line 171
    .local v4, x:I
    sparse-switch v2, :sswitch_data_0

    .line 179
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 188
    :goto_1
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    add-int v7, v4, v3

    add-int v8, v5, v0

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    .end local v0           #height:I
    .end local v1           #horizontalGravity:I
    .end local v2           #verticalGravity:I
    .end local v3           #width:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    return-void

    .line 173
    .restart local v0       #height:I
    .restart local v1       #horizontalGravity:I
    .restart local v2       #verticalGravity:I
    .restart local v3       #width:I
    .restart local v4       #x:I
    .restart local v5       #y:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v5, v6, v0

    .line 174
    goto :goto_0

    .line 176
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    goto :goto_0

    .line 181
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v4, v6, v3

    .line 182
    goto :goto_1

    .line 184
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    goto :goto_1

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 179
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->transitionState()V

    .line 75
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    iput p1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 151
    iput-object p1, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 153
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 154
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 157
    return-void

    :cond_2
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public setButtonResources([I)V
    .locals 2
    .parameter "resources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button resources cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    .line 94
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    if-lt v0, v1, :cond_1

    .line 95
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    .line 98
    return-void
.end method

.method public setState(I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 106
    :cond_0
    const-string v0, "Cal"

    const-string v1, "MultiStateButton state set to value greater than maxState or < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_1
    iput p1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 110
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(I)V

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transitionState()V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 80
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(I)V

    .line 81
    return-void
.end method
