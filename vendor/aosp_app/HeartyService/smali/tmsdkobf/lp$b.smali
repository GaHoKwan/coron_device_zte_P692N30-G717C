.class final Ltmsdkobf/lp$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic CJ:Ltmsdkobf/lp;

.field private volatile CK:Z

.field private CL:Z


# direct methods
.method constructor <init>(Ltmsdkobf/lp;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltmsdkobf/lp$b;-><init>(Ltmsdkobf/lp;Z)V

    .line 104
    return-void
.end method

.method constructor <init>(Ltmsdkobf/lp;Z)V
    .locals 0
    .parameter
    .parameter "isFirstTime"

    .prologue
    .line 106
    iput-object p1, p0, Ltmsdkobf/lp$b;->CJ:Ltmsdkobf/lp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean p2, p0, Ltmsdkobf/lp$b;->CL:Z

    .line 108
    return-void
.end method

.method private gC()V
    .locals 27

    .prologue
    .line 136
    const-string v4, "ContactsLookupCache"

    const-string v6, "reCache() started"

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v24, numbersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v20, namesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 142
    .local v3, resolver:Landroid/content/ContentResolver;
    const/16 v23, 0x0

    .line 144
    .local v23, numberCursor:Landroid/database/Cursor;
    const/4 v4, 0x2

    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "data1"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "contact_id"

    aput-object v6, v5, v4

    .line 145
    .local v5, PROJECTIONS_PHONE:[Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 146
    if-nez v23, :cond_1

    .line 147
    const-string v4, "ContactsLookupCache"

    const-string v6, "null numberCursor"

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    if-eqz v23, :cond_0

    .line 178
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    .end local v5           #PROJECTIONS_PHONE:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v5       #PROJECTIONS_PHONE:[Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 180
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v15           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 153
    .local v22, number:Ljava/lang/String;
    if-eqz v22, :cond_1

    invoke-static/range {v22 .. v22}, Ltmsdkobf/lp;->cP(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 158
    .local v12, contactId:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    .line 159
    .local v26, previousContactId:Ljava/lang/Long;
    if-eqz v26, :cond_1

    .line 160
    const-string v4, "ContactsLookupCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 164
    .end local v5           #PROJECTIONS_PHONE:[Ljava/lang/String;
    .end local v12           #contactId:J
    .end local v22           #number:Ljava/lang/String;
    .end local v26           #previousContactId:Ljava/lang/Long;
    :catch_1
    move-exception v15

    .line 165
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "ContactsLookupCache"

    const-string v6, "reCache"

    invoke-static {v4, v6, v15}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v23, :cond_2

    .line 178
    :try_start_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 185
    .end local v15           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/lp$b;->CK:Z

    if-eqz v4, :cond_5

    .line 186
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 167
    .restart local v5       #PROJECTIONS_PHONE:[Ljava/lang/String;
    :cond_3
    if-eqz v23, :cond_2

    .line 178
    :try_start_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 179
    :catch_2
    move-exception v15

    .line 180
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 179
    .end local v5           #PROJECTIONS_PHONE:[Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 180
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_4

    .line 178
    :try_start_6
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 181
    :cond_4
    :goto_3
    throw v4

    .line 179
    :catch_4
    move-exception v15

    .line 180
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 191
    .end local v15           #e:Ljava/lang/Exception;
    :cond_5
    const/16 v19, 0x0

    .line 193
    .local v19, nameCursor:Landroid/database/Cursor;
    const/4 v4, 0x2

    :try_start_7
    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v8, v4

    const/4 v4, 0x1

    const-string v6, "display_name"

    aput-object v6, v8, v4

    .line 194
    .local v8, PROJECTIONS_CONTACTS:[Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "has_phone_number=1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 197
    if-nez v19, :cond_6

    .line 198
    const-string v4, "ContactsLookupCache"

    const-string v6, "null nameCursor"

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 209
    if-eqz v19, :cond_0

    .line 220
    :try_start_8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 221
    :catch_5
    move-exception v15

    .line 222
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 201
    .end local v15           #e:Ljava/lang/Exception;
    :cond_6
    :goto_4
    :try_start_9
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 202
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 203
    .restart local v12       #contactId:J
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, displayName:Ljava/lang/String;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    .line 206
    .end local v8           #PROJECTIONS_CONTACTS:[Ljava/lang/String;
    .end local v12           #contactId:J
    .end local v14           #displayName:Ljava/lang/String;
    :catch_6
    move-exception v15

    .line 207
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v4, "ContactsLookupCache"

    const-string v6, "reCache"

    invoke-static {v4, v6, v15}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 209
    if-eqz v19, :cond_7

    .line 220
    :try_start_b
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 227
    .end local v15           #e:Ljava/lang/Exception;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/lp$b;->CK:Z

    if-eqz v4, :cond_a

    .line 228
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 229
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 209
    .restart local v8       #PROJECTIONS_CONTACTS:[Ljava/lang/String;
    :cond_8
    if-eqz v19, :cond_7

    .line 220
    :try_start_c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_5

    .line 221
    :catch_7
    move-exception v15

    .line 222
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 221
    .end local v8           #PROJECTIONS_CONTACTS:[Ljava/lang/String;
    :catch_8
    move-exception v15

    .line 222
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 209
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v19, :cond_9

    .line 220
    :try_start_d
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 223
    :cond_9
    :goto_6
    throw v4

    .line 221
    :catch_9
    move-exception v15

    .line 222
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 233
    .end local v15           #e:Ljava/lang/Exception;
    :cond_a
    new-instance v21, Ltmsdk/common/utils/ContactsMap;

    invoke-direct/range {v21 .. v21}, Ltmsdk/common/utils/ContactsMap;-><init>()V

    .line 236
    .local v21, newCache:Ltmsdk/common/utils/ContactsMap;
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 237
    .local v17, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 238
    .local v12, contactId:Ljava/lang/Long;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 239
    .local v18, name:Ljava/lang/String;
    if-nez v18, :cond_b

    .line 241
    const-string v18, ""

    .line 243
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 244
    .local v25, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/utils/ContactsMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 247
    .end local v12           #contactId:Ljava/lang/Long;
    .end local v17           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v18           #name:Ljava/lang/String;
    .end local v25           #phoneNumber:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 248
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 250
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/lp$b;->CK:Z

    if-eqz v4, :cond_d

    .line 251
    invoke-virtual/range {v21 .. v21}, Ltmsdk/common/utils/ContactsMap;->clear()V

    goto/16 :goto_0

    .line 255
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Ltmsdkobf/lp$b;->CJ:Ltmsdkobf/lp;

    monitor-enter v6

    .line 257
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ltmsdkobf/lp$b;->CJ:Ltmsdkobf/lp;

    invoke-static {v4}, Ltmsdkobf/lp;->a(Ltmsdkobf/lp;)Ltmsdk/common/utils/ContactsMap;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/common/utils/ContactsMap;->clear()V

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Ltmsdkobf/lp$b;->CJ:Ltmsdkobf/lp;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Ltmsdkobf/lp;->a(Ltmsdkobf/lp;Ltmsdk/common/utils/ContactsMap;)Ltmsdk/common/utils/ContactsMap;

    .line 259
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 260
    const-string v4, "ContactsLookupCache"

    const-string v6, "reCache() finished"

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 259
    :catchall_2
    move-exception v4

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v4
.end method


# virtual methods
.method F(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 111
    iput-boolean p1, p0, Ltmsdkobf/lp$b;->CK:Z

    .line 112
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ltmsdkobf/lp$b;->F(Z)V

    .line 122
    :try_start_0
    iget-boolean v1, p0, Ltmsdkobf/lp$b;->CL:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x4e20

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    invoke-direct {p0}, Ltmsdkobf/lp$b;->gC()V

    .line 132
    iget-object v1, p0, Ltmsdkobf/lp$b;->CJ:Ltmsdkobf/lp;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ltmsdkobf/lp;->a(Ltmsdkobf/lp;Z)Z

    .line 133
    :goto_1
    return-void

    .line 122
    :cond_1
    const-wide/16 v1, 0x1388

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/InterruptedException;
    iget-boolean v1, p0, Ltmsdkobf/lp$b;->CK:Z

    if-eqz v1, :cond_0

    goto :goto_1
.end method
