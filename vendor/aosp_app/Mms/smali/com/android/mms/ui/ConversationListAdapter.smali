.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Lcom/android/mms/ui/MessageCursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ConversationListAdapter"


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSubjectSingleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 50
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSubjectSingleLine:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 59
    instance-of v2, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v2, :cond_0

    .line 60
    const-string v2, "ConversationListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected bound view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 63
    check-cast v1, Lcom/android/mms/ui/ConversationListItem;

    .line 66
    .local v1, headerView:Lcom/android/mms/ui/ConversationListItem;
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageCursorAdapter;->mIsScrolling:Z

    if-nez v2, :cond_2

    .line 67
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->setNeedCacheConv(Z)V

    .line 68
    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 69
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->setNeedCacheConv(Z)V

    .line 70
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSubjectSingleLine:Z

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListItem;->setSubjectSingleLineMode(Z)V

    .line 73
    :cond_1
    invoke-virtual {v1, p2, v0}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    .line 75
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    :cond_2
    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->getConvFromCache(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 76
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListItem;->bindDefault(Lcom/android/mms/data/Conversation;)V

    goto :goto_0
.end method

.method public getOnContentChangedListener()Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    return-object v0
.end method

.method public isAllSelected()Z
    .locals 8

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    .line 164
    .local v1, count:I
    const/4 v4, 0x1

    .line 165
    .local v4, isAllChecked:Z
    const-string v5, "ConversationListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllSelected, count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 167
    invoke-virtual {p0, v3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 168
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v5, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/mms/data/Conversation;->getFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 169
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    const/4 v4, 0x0

    .line 174
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_0
    return v4

    .line 166
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    .restart local v2       #cursor:Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isDataValid()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 145
    const-string v0, "ConversationListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Mms] loading data end time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 82
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    .line 83
    .local v0, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    .line 84
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 98
    return-void
.end method

.method public setSubjectSingleLineMode(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSubjectSingleLine:Z

    .line 159
    return-void
.end method

.method public uncheckAll()V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    .line 111
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 112
    invoke-virtual {p0, v3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 113
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 114
    .local v0, conv:Lcom/android/mms/data/Conversation;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public uncheckSelect(Ljava/util/HashSet;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p1

    .line 122
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v0, checkedSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 125
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 126
    .local v4, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 128
    .local v3, index:I
    invoke-virtual {p0, v3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 129
    .local v5, obj:Ljava/lang/Object;
    if-eqz v5, :cond_0

    move-object v2, v5

    .line 130
    check-cast v2, Landroid/database/Cursor;

    .line 131
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v6, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/mms/data/Conversation;->getFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 132
    .local v1, conv:Lcom/android/mms/data/Conversation;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    goto :goto_0

    .line 123
    .end local v0           #checkedSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #index:I
    .end local v4           #iterator:Ljava/util/Iterator;
    .end local v5           #obj:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 134
    .restart local v0       #checkedSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v3       #index:I
    .restart local v4       #iterator:Ljava/util/Iterator;
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_0
    const-string v6, "ConversationListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getItem in uncheckSelect index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v3           #index:I
    .end local v4           #iterator:Ljava/util/Iterator;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method
