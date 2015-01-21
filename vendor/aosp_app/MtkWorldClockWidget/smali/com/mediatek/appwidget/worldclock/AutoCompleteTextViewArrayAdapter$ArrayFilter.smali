.class Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "AutoCompleteTextViewArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;


# direct methods
.method private constructor <init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>.ArrayFilter;"
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 462
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>.ArrayFilter;"
    invoke-direct {p0, p1}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 18
    .parameter "prefix"

    .prologue
    .line 465
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>.ArrayFilter;"
    new-instance v8, Landroid/widget/Filter$FilterResults;

    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 467
    .local v8, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$100(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v14

    if-nez v14, :cond_0

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$200(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 469
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$300(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    #setter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v14, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$102(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 470
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 475
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$200(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 476
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$100(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    iput-object v5, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 479
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    iput v14, v8, Landroid/widget/Filter$FilterResults;->count:I

    .line 529
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v8

    .line 470
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 477
    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .line 481
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 484
    .local v7, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$200(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 485
    :try_start_4
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$100(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 486
    .local v11, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 488
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 489
    .local v2, count:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v6, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 492
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 493
    .local v9, value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 496
    .local v10, valueText:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 498
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_3
    :goto_2
    new-instance v1, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v7}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;Ljava/lang/String;)V

    .line 521
    .local v1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 486
    .end local v1           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v6           #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v9           #value:Ljava/lang/Object;,"TT;"
    .end local v10           #valueText:Ljava/lang/String;
    .end local v11           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v14

    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v14

    .line 500
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v6       #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v9       #value:Ljava/lang/Object;,"TT;"
    .restart local v10       #valueText:Ljava/lang/String;
    .restart local v11       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :cond_4
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 501
    .local v13, words:[Ljava/lang/String;
    array-length v12, v13

    .line 504
    .local v12, wordCount:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    if-ge v4, v12, :cond_3

    .line 505
    aget-object v14, v13, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 506
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 504
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 525
    .end local v4           #k:I
    .end local v9           #value:Ljava/lang/Object;,"TT;"
    .end local v10           #valueText:Ljava/lang/String;
    .end local v12           #wordCount:I
    .end local v13           #words:[Ljava/lang/String;
    :cond_6
    iput-object v6, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 526
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    iput v14, v8, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 535
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>.ArrayFilter;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->access$302(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;Ljava/util/List;)Ljava/util/List;

    .line 536
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
