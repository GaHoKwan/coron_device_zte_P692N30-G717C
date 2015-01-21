.class public Lcom/android/mms/ui/CBMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "CBMessageListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CBMessageListAdapter"


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field public mIsDeleteMode:Z

.field private mListItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnContentChangedListener:Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 84
    iput-boolean v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    .line 92
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 96
    const-string v4, "MmsLog"

    const-string v6, "CBMessageListAdapter.binview"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    instance-of v4, p1, Lcom/android/mms/ui/CBMessageListItem;

    if-nez v4, :cond_0

    .line 98
    const-string v4, "CBMessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected bound view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 101
    check-cast v1, Lcom/android/mms/ui/CBMessageListItem;

    .line 102
    .local v1, itemView:Lcom/android/mms/ui/CBMessageListItem;
    invoke-static {p2, p3}, Lcom/android/mms/data/CBMessage;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/CBMessage;

    move-result-object v2

    .line 103
    .local v2, message:Lcom/android/mms/data/CBMessage;
    new-instance v0, Lcom/android/mms/ui/CBMessageItem;

    invoke-direct {v0, p2, v2}, Lcom/android/mms/ui/CBMessageItem;-><init>(Landroid/content/Context;Lcom/android/mms/data/CBMessage;)V

    .line 105
    .local v0, ch:Lcom/android/mms/ui/CBMessageItem;
    iget-boolean v4, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v4, :cond_3

    .line 106
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 107
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 117
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v2}, Lcom/android/mms/data/CBMessage;->getChannelId()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 118
    invoke-virtual {v2}, Lcom/android/mms/data/CBMessage;->getSimId()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 119
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 122
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/CBMessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 123
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/mms/ui/CBMessageListItem;->bind(Lcom/android/mms/ui/CBMessageItem;ZZ)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/CBMessageItem;->setSelectedState(Z)V

    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/CBMessageItem;->setSelectedState(Z)V

    goto :goto_1

    :cond_4
    move v4, v5

    .line 123
    goto :goto_2
.end method

.method public changeSelectedState(J)V
    .locals 4
    .parameter "listId"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearList()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/CBMessageListAdapter;->setItemsValue(Z[J)V

    .line 184
    return-void
.end method

.method public getItemList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    return-object v0
.end method

.method public getSelectedNumber()I
    .locals 4

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    .local v1, iter:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 189
    .local v2, number:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_1
    return v2
.end method

.method public initListMap(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 155
    if-eqz p1, :cond_1

    .line 156
    const-wide/16 v0, 0x0

    .line 157
    .local v0, itemId:J
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 159
    iget-object v2, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    .end local v0           #itemId:J
    :cond_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 133
    const-string v0, "MmsLog"

    const-string v1, "CBMessageListAdapter.newView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "CBMessageListAdapter"

    const-string v1, "onContentChanged called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/CBMessageListAdapter;)V

    .line 207
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 127
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/CBMessageListItem;

    .line 128
    .local v0, headerView:Lcom/android/mms/ui/CBMessageListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/CBMessageListItem;->unbind()V

    .line 129
    return-void
.end method

.method public setItemsValue(Z[J)V
    .locals 6
    .parameter "value"
    .parameter "keyArray"

    .prologue
    .line 167
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 169
    .local v2, iterator:Ljava/util/Iterator;
    if-eqz p2, :cond_0

    .line 170
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mListItem:Ljava/util/Map;

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1           #i:I
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_1
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;

    .line 143
    return-void
.end method
