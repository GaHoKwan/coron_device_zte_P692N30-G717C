.class public Lcom/zte/heartservice/RegionChooseSettings;
.super Lcom/zte/heartservice/common/AbstractLocationChooseActivity;
.source "RegionChooseSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionChooseSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadData(Ljava/lang/String;)V
    .locals 18
    .parameter "query"

    .prologue
    .line 37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartservice/RegionChooseSettings;->mGroupData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartservice/RegionChooseSettings;->mChildData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 41
    .local v12, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 42
    .local v6, selection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 43
    const/16 p1, 0x0

    .line 51
    :goto_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/zte/heartservice/ZteServiceCenter;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 52
    const/4 v3, 0x1

    const-string v4, "service_centers"

    .line 53
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "province"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    .line 54
    const-string v8, "city"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "province"

    const/4 v11, 0x0

    .line 52
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 56
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    const/4 v13, 0x0

    .line 58
    .local v13, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v17, ""

    .line 60
    .local v17, lastProvince:Ljava/lang/String;
    :cond_0
    if-eqz v13, :cond_1

    .line 61
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 62
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartservice/RegionChooseSettings;->addGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 65
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, city:Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v15, curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "NAME"

    invoke-interface {v15, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    if-eqz p1, :cond_3

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartservice/RegionChooseSettings;->mList:Landroid/widget/ExpandableListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartservice/RegionChooseSettings;->mGroupData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 72
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 77
    .end local v13           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14           #city:Ljava/lang/String;
    .end local v15           #curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #lastProvince:Ljava/lang/String;
    :cond_4
    if-eqz v12, :cond_5

    .line 78
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_5
    if-eqz v2, :cond_6

    .line 80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartservice/RegionChooseSettings;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 84
    return-void

    .line 45
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "province LIKE \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 46
    const-string v4, "%\' or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "city"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 47
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v16

    .line 75
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "RegionChooseSettings"

    const-string v4, "load zte service centers failed"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz v12, :cond_8

    .line 78
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_8
    if-eqz v2, :cond_6

    .line 80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 76
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 77
    if-eqz v12, :cond_9

    .line 78
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_9
    if-eqz v2, :cond_a

    .line 80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_a
    throw v3
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 25
    iget-object v2, p0, Lcom/zte/heartservice/RegionChooseSettings;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 28
    .local v0, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "zte_service_centers"

    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0, v2, v3}, Lcom/zte/heartservice/RegionChooseSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 29
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "city"

    const-string v2, "NAME"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 30
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    invoke-virtual {p0}, Lcom/zte/heartservice/RegionChooseSettings;->finish()V

    .line 32
    const/4 v2, 0x1

    return v2
.end method
