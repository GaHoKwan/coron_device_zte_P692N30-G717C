.class public Lcom/android/email/activity/setup/DropdownAccountsFilter;
.super Landroid/widget/Filter;
.source "DropdownAccountsFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field mFilterString:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;

.field mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsFilter;,"Lcom/android/email/activity/setup/DropdownAccountsFilter<TT;>;"
    .local p1, referenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mFilterString:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mObjects:Ljava/util/List;

    .line 26
    invoke-virtual {p1}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->getOriginalValues()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mOriginalValues:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->getDataLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mLock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    .line 29
    return-void
.end method


# virtual methods
.method public getFilterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsFilter;,"Lcom/android/email/activity/setup/DropdownAccountsFilter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mFilterString:Ljava/lang/String;

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 15
    .parameter "prefix"

    .prologue
    .line 38
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsFilter;,"Lcom/android/email/activity/setup/DropdownAccountsFilter<TT;>;"
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 40
    .local v6, results:Landroid/widget/Filter$FilterResults;
    iget-object v12, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mOriginalValues:Ljava/util/ArrayList;

    if-nez v12, :cond_0

    .line 41
    iget-object v13, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 42
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    iget-object v14, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mObjects:Ljava/util/List;

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v12, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mOriginalValues:Ljava/util/ArrayList;

    .line 43
    iget-object v12, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    iget-object v14, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->setOriginalValues(Ljava/util/ArrayList;)V

    .line 44
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 49
    :cond_1
    iget-object v13, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 50
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    iput-object v3, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 53
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    iput v12, v6, Landroid/widget/Filter$FilterResults;->count:I

    .line 89
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v6

    .line 44
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 51
    :catchall_1
    move-exception v12

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    .line 55
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, prefixString:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 59
    :try_start_4
    new-instance v9, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v9, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v4, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 66
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 67
    .local v7, value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, valueText:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 71
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v7           #value:Ljava/lang/Object;,"TT;"
    .end local v8           #valueText:Ljava/lang/String;
    .end local v9           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v12

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v12

    .line 73
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v4       #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v7       #value:Ljava/lang/Object;,"TT;"
    .restart local v8       #valueText:Ljava/lang/String;
    .restart local v9       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :cond_4
    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, words:[Ljava/lang/String;
    array-length v10, v11

    .line 77
    .local v10, wordCount:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_3
    if-ge v2, v10, :cond_3

    .line 78
    aget-object v12, v11, v2

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 79
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 86
    .end local v2           #k:I
    .end local v7           #value:Ljava/lang/Object;,"TT;"
    .end local v8           #valueText:Ljava/lang/String;
    .end local v10           #wordCount:I
    .end local v11           #words:[Ljava/lang/String;
    :cond_6
    iput-object v4, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    iput v12, v6, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 6
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 94
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsFilter;,"Lcom/android/email/activity/setup/DropdownAccountsFilter<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mFilterString:Ljava/lang/String;

    .line 96
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 97
    .local v2, resultList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, addUserName:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, s:Ljava/lang/Object;,"TT;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v0           #addUserName:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resultList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v3           #s:Ljava/lang/Object;,"TT;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 101
    .restart local v0       #addUserName:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #resultList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_1
    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mObjects:Ljava/util/List;

    .line 102
    iget-object v4, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    iget-object v5, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mObjects:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->setObjects(Ljava/util/List;)V

    .line 103
    iget v4, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 108
    :goto_2
    return-void

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/DropdownAccountsFilter;->mReferenceAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_2
.end method
