.class public Lcom/mediatek/ipmsg/ui/EmoticonPreview;
.super Ljava/lang/Object;
.source "EmoticonPreview.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mImage:Lcom/mediatek/ipmsg/ui/GifView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDismissed:Z

.field private mParent:Landroid/view/View;

.field private mPopWindow:Landroid/widget/PopupWindow;

.field private mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mIsDismissed:Z

    .line 76
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    iput-object p2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mParent:Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->constructRecordWinsow()V

    .line 81
    return-void
.end method

.method private constructRecordWinsow()V
    .locals 5

    .prologue
    .line 85
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContentView:Landroid/view/View;

    .line 87
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContentView:Landroid/view/View;

    const v3, 0x7f0f00b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ipmsg/ui/GifView;

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mImage:Lcom/mediatek/ipmsg/ui/GifView;

    .line 89
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 90
    .local v1, width:I
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 92
    .local v0, height:I
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContentView:Landroid/view/View;

    invoke-direct {v2, v3, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mPopWindow:Landroid/widget/PopupWindow;

    .line 93
    return-void
.end method


# virtual methods
.method public dissWindow()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mIsDismissed:Z

    .line 115
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 116
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mIsDismissed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEmoticon(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 123
    iput p1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mResId:I

    .line 124
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mImage:Lcom/mediatek/ipmsg/ui/GifView;

    invoke-virtual {v0, p1}, Lcom/mediatek/ipmsg/ui/GifView;->setSource(I)V

    .line 125
    return-void
.end method

.method public setEmoticon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 129
    return-void
.end method

.method public showWindow()V
    .locals 5

    .prologue
    const/16 v4, 0x31

    const/4 v3, 0x0

    .line 97
    iput-boolean v3, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mIsDismissed:Z

    .line 98
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 101
    .local v0, offset:I
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mParent:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 110
    return-void

    .line 103
    .end local v0           #offset:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 105
    .restart local v0       #offset:I
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->mParent:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
