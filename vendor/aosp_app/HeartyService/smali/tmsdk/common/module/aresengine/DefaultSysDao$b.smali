.class final Ltmsdk/common/module/aresengine/DefaultSysDao$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/aresengine/DefaultSysDao$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/DefaultSysDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field final synthetic yX:Ltmsdk/common/module/aresengine/DefaultSysDao;


# direct methods
.method constructor <init>(Ltmsdk/common/module/aresengine/DefaultSysDao;)V
    .locals 1
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->mContactUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public fu()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 662
    .local v18, name_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 664
    .local v22, number_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v11, contacts:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->mContactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 668
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-static {v2}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Ltmsdk/common/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->mContactUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "has_phone_number=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 669
    .local v19, names:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 671
    .local v14, id_index:I
    const-string v2, "display_name"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 674
    .local v17, name_index:I
    :goto_0
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v12

    .line 682
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 686
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #id_index:I
    .end local v17           #name_index:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Ltmsdk/common/module/aresengine/DefaultSysDao;->b(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)V

    .line 687
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    sget-object v24, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v24

    .line 691
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-static {v2}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Ltmsdk/common/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 692
    .local v23, numbers:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    const-string v2, "data1"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 694
    .local v21, number_index:I
    const-string v2, "contact_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v10

    .line 697
    .local v10, contactid_index:I
    :goto_1
    :try_start_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 701
    :catch_1
    move-exception v12

    .line 702
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    .end local v10           #contactid_index:I
    .end local v12           #e:Ljava/lang/Exception;
    .end local v21           #number_index:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/common/module/aresengine/DefaultSysDao$b;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Ltmsdk/common/module/aresengine/DefaultSysDao;->b(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)V

    .line 707
    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 710
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 711
    .local v15, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 712
    .local v20, number:Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 713
    .local v9, contact_id:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 715
    .local v16, name:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ltmsdkobf/kg;->cl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 716
    new-instance v8, Ltmsdk/common/module/aresengine/ContactEntity;

    invoke-direct {v8}, Ltmsdk/common/module/aresengine/ContactEntity;-><init>()V

    .line 717
    .local v8, contact:Ltmsdk/common/module/aresengine/ContactEntity;
    iput v9, v8, Ltmsdk/common/module/aresengine/ContactEntity;->id:I

    .line 718
    move-object/from16 v0, v16

    iput-object v0, v8, Ltmsdk/common/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    .line 719
    const-string v2, "[ -]+"

    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 721
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 687
    .end local v8           #contact:Ltmsdk/common/module/aresengine/ContactEntity;
    .end local v9           #contact_id:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #names:Landroid/database/Cursor;
    .end local v20           #number:Ljava/lang/String;
    .end local v23           #numbers:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 707
    .restart local v19       #names:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 725
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v23       #numbers:Landroid/database/Cursor;
    :cond_3
    return-object v11
.end method
