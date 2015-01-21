.class public Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;
.super Lcom/android/contacts/calllog/CallLogAdapter;
.source "CallLogMultipleDeleteAdapter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallLogMultipleDeleteAdapter"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mSelectedCursorItemStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "callFetcher"
    .parameter "contactInfoHelper"
    .parameter "voicemailNumber"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 231
    const-string v0, "CallLogMultipleDeleteAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method


# virtual methods
.method protected bindCallButtonView(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/android/contacts/PhoneCallDetails;)V
    .locals 0
    .parameter "itemView"
    .parameter "details"

    .prologue
    .line 214
    return-void
.end method

.method protected bindPlayButtonView(Lcom/mediatek/contacts/calllog/CallLogListItemView;)V
    .locals 0
    .parameter "itemView"

    .prologue
    .line 217
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 7
    .parameter "view"
    .parameter "c"
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindView(), cursor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 80
    .local v1, cursorPosition:Ljava/lang/Integer;
    if-nez v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    .local v0, checkState:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 82
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    move-object v2, p1

    .line 87
    check-cast v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 90
    .local v2, itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    invoke-virtual {v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {v2, v4, v4}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setCheckBoxMultiSel(ZZ)V

    .line 95
    invoke-virtual {v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCheckBoxMultiSel()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 96
    return-void

    .line 80
    .end local v0           #checkState:Ljava/lang/Boolean;
    .end local v2           #itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCursor(), cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_1

    .line 63
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    .line 65
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 66
    return-void
.end method

.method public changeSelectedStatusToMap(I)I
    .locals 5
    .parameter "listPosition"

    .prologue
    .line 193
    const-string v2, "changeSelectedStatusToMap()"

    invoke-direct {p0, v2}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, count:I
    invoke-virtual {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;->isGroupHeader(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;->getGroupSize(I)I

    move-result v0

    .line 200
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 201
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 202
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    return v2

    .line 198
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getDeleteFilter()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 136
    const-string v5, "getDeleteFilter()"

    invoke-direct {p0, v5}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .local v4, where:Ljava/lang/StringBuilder;
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 140
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, iterator:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 143
    .local v2, key:Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 144
    .local v3, value:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 145
    :cond_0
    const-string v5, ""

    .line 183
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #value:Ljava/lang/Integer;
    :goto_0
    return-object v5

    .line 147
    .restart local v0       #entry:Ljava/util/Map$Entry;
    .restart local v1       #iterator:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/Integer;
    .restart local v3       #value:Ljava/lang/Integer;
    :cond_1
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_1
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 151
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 152
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 158
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;
    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    .restart local v0       #entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #key:Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 161
    .restart local v2       #key:Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #value:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 162
    .restart local v3       #value:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_2
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 169
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 170
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v5, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 178
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #value:Ljava/lang/Integer;
    :cond_3
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    :cond_4
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeleteFilter() where ==  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getSelectedItemCount()I
    .locals 1

    .prologue
    .line 226
    const-string v0, "getSelectedItemCount()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public selectAllItems()I
    .locals 6

    .prologue
    .line 104
    const-string v3, "selectAllItems()"

    invoke-direct {p0, v3}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 105
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/common/widget/GroupingListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 110
    .local v0, count:I
    invoke-virtual {p0, v2}, Lcom/android/common/widget/GroupingListAdapter;->isGroupHeader(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/common/widget/GroupingListAdapter;->getGroupSize(I)I

    move-result v0

    .line 115
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 116
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 119
    .end local v0           #count:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    return v3
.end method

.method public unSelectAllItems()V
    .locals 1

    .prologue
    .line 126
    const-string v0, "unSelectAllItems()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->mSelectedCursorItemStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    return-void
.end method
