.class public Lcom/mediatek/vlw/VLWSeekBar;
.super Landroid/widget/SeekBar;
.source "VLWSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VLWSeekBar"


# instance fields
.field private mAlpha:I

.field private mFromKey:Z

.field private mLeftThreshold:I

.field private mListener:Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;

.field private mRightThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mAlpha:I

    .line 55
    iput v1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    .line 56
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    .line 60
    iput-boolean v1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mFromKey:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mAlpha:I

    .line 55
    iput v1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    .line 56
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    .line 60
    iput-boolean v1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mFromKey:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mAlpha:I

    .line 55
    iput v1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    .line 56
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    .line 60
    iput-boolean v1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mFromKey:Z

    .line 72
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->drawableStateChanged()V

    .line 80
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 82
    iget v1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public fromKeyEvent()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mFromKey:Z

    return v0
.end method

.method public getLeftThreshold()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    return v0
.end method

.method public getOnTouchUpWithoutHandledListener()Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mListener:Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;

    return-object v0
.end method

.method public getRightThreshold()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, handled:Z
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 168
    .local v2, progress:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    move-result v1

    .line 174
    .local v1, increment:I
    packed-switch p1, :pswitch_data_0

    .line 202
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 207
    .end local v1           #increment:I
    .end local v2           #progress:I
    :cond_0
    :goto_0
    return v0

    .line 176
    .restart local v1       #increment:I
    .restart local v2       #progress:I
    :pswitch_0
    sub-int/2addr v2, v1

    .line 182
    iget v3, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    if-lt v2, v3, :cond_0

    iget v3, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    if-gt v2, v3, :cond_0

    .line 183
    iput-boolean v4, p0, Lcom/mediatek/vlw/VLWSeekBar;->mFromKey:Z

    .line 184
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 189
    :pswitch_1
    add-int/2addr v2, v1

    .line 195
    iget v3, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    if-lt v2, v3, :cond_0

    iget v3, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    if-gt v2, v3, :cond_0

    .line 196
    iput-boolean v4, p0, Lcom/mediatek/vlw/VLWSeekBar;->mFromKey:Z

    .line 197
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 129
    .local v4, width:I
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 130
    .local v1, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 131
    .local v5, x:I
    const/4 v3, 0x0

    .line 132
    .local v3, scale:F
    const/4 v2, 0x0

    .line 133
    .local v2, progress:F
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v7, :cond_1

    .line 134
    const/4 v3, 0x0

    .line 140
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    mul-float v2, v3, v7

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 142
    .local v0, action:I
    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    .line 143
    const-string v7, "VLWSeekBar"

    const-string v8, "MotionEvent.ACTION_CANCEL just return"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_1
    return v6

    .line 135
    .end local v0           #action:I
    :cond_1
    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v7, v4, v7

    if-le v5, v7, :cond_2

    .line 136
    const/high16 v3, 0x3f80

    goto :goto_0

    .line 138
    :cond_2
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v7, v5, v7

    int-to-float v7, v7

    int-to-float v8, v1

    div-float v3, v7, v8

    goto :goto_0

    .line 146
    .restart local v0       #action:I
    :cond_3
    iget v7, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_4

    iget v7, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_4

    .line 147
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1

    .line 149
    :cond_4
    if-ne v0, v6, :cond_0

    .line 150
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 152
    iget-object v7, p0, Lcom/mediatek/vlw/VLWSeekBar;->mListener:Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;

    if-eqz v7, :cond_0

    .line 153
    iget-object v7, p0, Lcom/mediatek/vlw/VLWSeekBar;->mListener:Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;

    invoke-interface {v7, v2}, Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;->onTouchUp(F)V

    goto :goto_1
.end method

.method public resetFromKeyEvent()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vlw/VLWSeekBar;->mFromKey:Z

    .line 224
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mAlpha:I

    .line 92
    return-void
.end method

.method public setLeftThreshold(I)V
    .locals 0
    .parameter "leftThreshold"

    .prologue
    .line 107
    iput p1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mLeftThreshold:I

    .line 108
    return-void
.end method

.method public setOnTouchUpWithoutHandledListener(Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mListener:Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;

    .line 250
    return-void
.end method

.method public setRightThreshold(I)V
    .locals 0
    .parameter "rightThreshold"

    .prologue
    .line 123
    iput p1, p0, Lcom/mediatek/vlw/VLWSeekBar;->mRightThreshold:I

    .line 124
    return-void
.end method
