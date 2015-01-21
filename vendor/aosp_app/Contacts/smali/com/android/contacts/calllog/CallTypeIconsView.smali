.class public Lcom/android/contacts/calllog/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallTypeIconsView$Resources;
    }
.end annotation


# instance fields
.field private mCallType:I

.field private mHeight:I

.field private mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

.field private mVTCall:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    invoke-direct {v0, p1}, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    .line 54
    return-void
.end method

.method private getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "callType"
    .parameter "isVTCall"

    .prologue
    const/4 v0, 0x1

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->vtincoming:Landroid/graphics/drawable/Drawable;

    .line 212
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 195
    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->vtoutgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 201
    :pswitch_2
    if-ne p2, v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->vtmissed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 209
    :pswitch_4
    if-ne p2, v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->vtautorejected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->autorejected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallType:I

    .line 63
    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    .line 64
    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    return-void
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallType:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 123
    iget v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallType:I

    iget v2, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mVTCall:I

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/calllog/CallTypeIconsView;->getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 108
    return-void
.end method

.method public set(II)V
    .locals 3
    .parameter "callType"
    .parameter "isVTCall"

    .prologue
    .line 172
    iput p1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallType:I

    .line 173
    iput p2, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mVTCall:I

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/CallTypeIconsView;->getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    .line 179
    iget v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    .line 181
    iget v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    iget v2, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
