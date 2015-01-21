.class public Lcom/android/mms/ui/MultiSaveListItem;
.super Landroid/widget/RelativeLayout;
.source "MultiSaveListItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultiSaveListItem"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mNameView:Landroid/widget/TextView;

.field private mSizeView:Landroid/widget/TextView;

.field private mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private markItem()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListItem;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 109
    const v0, 0x7f020132

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    return-void
.end method

.method private unMarkItem()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListItem;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 114
    const v0, 0x7f020135

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    return-void
.end method


# virtual methods
.method public clickListItem()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveListItem;->unMarkItem()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveListItem;->markItem()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 84
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultiSaveListItem;->mNameView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0f0154

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultiSaveListItem;->mSizeView:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0f0152

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MultiSaveListItem;->mThumbnailView:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MultiSaveListItem;->mCheckbox:Landroid/widget/CheckBox;

    .line 89
    return-void
.end method

.method public selectItem(Z)V
    .locals 0
    .parameter "select"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveListItem;->markItem()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveListItem;->unMarkItem()V

    goto :goto_0
.end method
