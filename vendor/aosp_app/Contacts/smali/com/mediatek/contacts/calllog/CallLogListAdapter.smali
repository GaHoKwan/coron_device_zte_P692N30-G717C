.class public Lcom/mediatek/contacts/calllog/CallLogListAdapter;
.super Lcom/android/contacts/calllog/CallLogAdapter;
.source "CallLogListAdapter.java"


# instance fields
.field private mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

.field private mContext:Landroid/content/Context;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 1
    .parameter "context"
    .parameter "callFetcher"
    .parameter "contactInfoHelper"
    .parameter "callLogFragment"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mSelectedPosition:I

    .line 25
    iput-object p4, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    .line 26
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 4
    .parameter "view"
    .parameter "c"
    .parameter "count"

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 45
    .local v0, itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/calllog/IntentProvider;

    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAGID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setTagId(I)V

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    iget v2, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mSelectedPosition:I

    if-ne v1, v2, :cond_2

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->itemSetSelect(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/mediatek/contacts/calllog/CallLogListItemView;)V

    .line 54
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/calllog/CallLogFragment;->setOldItemView(Lcom/mediatek/contacts/calllog/CallLogListItemView;)V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mSelectedPosition:I

    return v0
.end method

.method public itemSetSelect(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/mediatek/contacts/calllog/CallLogListItemView;)V
    .locals 2
    .parameter "newItemView"
    .parameter "oldItemView"

    .prologue
    .line 68
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 34
    iput p1, p0, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->mSelectedPosition:I

    .line 35
    return-void
.end method
