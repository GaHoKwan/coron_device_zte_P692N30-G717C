.class public Lcom/android/mms/ui/FolderViewListAdapter;
.super Landroid/widget/CursorAdapter;
.source "FolderViewListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final FOR_MULTIDELETE:Ljava/lang/String; = "ForMultiDelete"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "FolderViewListAdapter"


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

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

.field private mListItemTmp:Ljava/util/Map;
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

.field private mOnContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

.field private mSubjectSingleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 88
    iput-boolean v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mSubjectSingleLine:Z

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItem:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItemTmp:Ljava/util/Map;

    .line 98
    return-void
.end method

.method public static getKey(IJ)J
    .locals 3
    .parameter "type"
    .parameter "id"

    .prologue
    const-wide/32 v1, 0x186a0

    .line 163
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 164
    neg-long p1, p1

    .line 170
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 165
    .restart local p1
    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 167
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 168
    add-long/2addr p1, v1

    goto :goto_0

    .line 170
    :cond_2
    add-long v0, v1, p1

    neg-long p1, v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 102
    instance-of v2, p1, Lcom/android/mms/ui/FolderViewListItem;

    if-nez v2, :cond_0

    .line 103
    const-string v2, "FolderViewListAdapter"

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

    .line 113
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 107
    check-cast v1, Lcom/android/mms/ui/FolderViewListItem;

    .line 108
    .local v1, headerView:Lcom/android/mms/ui/FolderViewListItem;
    invoke-static {p2, p3}, Lcom/android/mms/data/FolderView;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/FolderView;

    move-result-object v0

    .line 109
    .local v0, fView:Lcom/android/mms/data/FolderView;
    iget-boolean v2, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mSubjectSingleLine:Z

    if-eqz v2, :cond_1

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/FolderViewListItem;->setSubjectSingleLineMode(Z)V

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItem:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/mms/data/FolderView;->getmType()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/mms/data/FolderView;->getmId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/FolderViewListAdapter;->getKey(IJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Lcom/android/mms/ui/FolderViewListItem;->bind(Landroid/content/Context;Lcom/android/mms/data/FolderView;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public clearbackupstate()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItemTmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    return-void
.end method

.method public clearstate()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    return-void
.end method

.method public getBackUpItemList()Ljava/util/Map;
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
    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItemTmp:Ljava/util/Map;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    const-wide/16 v0, 0x0

    .line 150
    iget-boolean v2, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 151
    const-string v2, "FolderViewListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemId return position ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/FolderViewListAdapter;->getKey(IJ)J

    move-result-wide v0

    .line 158
    :cond_0
    return-wide v0
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
    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItem:Ljava/util/Map;

    return-object v0
.end method

.method public getOnContentChangedListener()Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    return-object v0
.end method

.method public getSelectedNumber()I
    .locals 4

    .prologue
    .line 206
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItemTmp:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    .local v1, iter:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 208
    .local v2, number:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_1
    return v2
.end method

.method public isContainItemId(J)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/FolderViewListAdapter;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 116
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/FolderViewListItem;

    .line 117
    .local v0, headerView:Lcom/android/mms/ui/FolderViewListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewListItem;->unbind()V

    .line 118
    return-void
.end method

.method public removeSelectedState(J)V
    .locals 2
    .parameter "listId"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItemTmp:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    .line 134
    return-void
.end method

.method public setSelectedState(J)V
    .locals 4
    .parameter "listId"

    .prologue
    const/4 v3, 0x1

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mListItemTmp:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setSubjectSingleLineMode(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewListAdapter;->mSubjectSingleLine:Z

    .line 225
    return-void
.end method
