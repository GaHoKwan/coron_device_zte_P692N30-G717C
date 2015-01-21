.class public Lcom/android/mms/ui/MmsPlayerActivityItem;
.super Landroid/widget/RelativeLayout;
.source "MmsPlayerActivityItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPlayerActivityItem"


# instance fields
.field private mAudio:Landroid/view/View;

.field private mAudioName:Landroid/widget/TextView;

.field private mBottomText:Landroid/widget/TextView;

.field private mImage:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

.field private mLeftText:Landroid/widget/TextView;

.field private mRightText:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;

.field private mTopText:Landroid/widget/TextView;

.field private mVideo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getCurrentTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mText:Landroid/widget/TextView;

    .line 144
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const-string v0, "Mms/MmsPlayerActivityItem"

    const-string v1, "textView is null!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 114
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 116
    const v0, 0x7f0f0094

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mImage:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    .line 118
    const v0, 0x7f0f0128

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mVideo:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mAudio:Landroid/view/View;

    .line 121
    const v0, 0x7f0f0019

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mAudioName:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0f012b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mBottomText:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0f0126

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mTopText:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0f0127

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mLeftText:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0f012a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mRightText:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mImage:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mAudio:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mAudioName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public setCurrentTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "textView"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mText:Landroid/widget/TextView;

    .line 137
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    :cond_0
    return-void
.end method
