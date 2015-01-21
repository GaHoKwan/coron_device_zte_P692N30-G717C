.class public Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;
.super Lcom/zte/heartyservice/porting/All/VirusDBEngine;
.source "PortingInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;,
        Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PortingInterfaceUtils"

.field public static mCallback1:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

.field private static sSMSContentObserverCallBack:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;


# instance fields
.field private mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

.field private mCallback:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

.field private mEventsMonitor:Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1191
    sput-object v0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->sSMSContentObserverCallBack:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;

    .line 1213
    sput-object v0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback1:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;-><init>()V

    .line 874
    new-instance v0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$3;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    iput-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    .line 1194
    new-instance v0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$7;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$7;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    iput-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mHandler:Landroid/os/Handler;

    .line 111
    const-string v0, "Tencent"

    iput-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mEngineName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->loadLogs()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)Ltmsdk/bg/module/aresengine/AresEngineManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadLogs()V
    .locals 25

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 277
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    .line 278
    .local v12, context:Landroid/content/Context;
    const-string v3, "nq_antiharass.db"

    invoke-virtual {v12, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 279
    .local v15, dbf:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 282
    const-string v3, "nq_calllog"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 283
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v14

    .line 284
    .local v14, dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    const-string v3, "address"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 286
    .local v20, numIndex:I
    const-string v3, "date"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 287
    .local v13, dateIndex:I
    const-string v3, "duration"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 288
    .local v16, durationIndex:I
    const-string v3, "type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 289
    .local v23, typeIndex:I
    const-string v3, "name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 290
    .local v18, nameIndex:I
    const-string v3, "read"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 292
    .local v21, readIndex:I
    :cond_0
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 293
    .local v19, num:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 319
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    .end local v13           #dateIndex:I
    .end local v16           #durationIndex:I
    .end local v18           #nameIndex:I
    .end local v19           #num:Ljava/lang/String;
    .end local v20           #numIndex:I
    .end local v21           #readIndex:I
    .end local v23           #typeIndex:I
    :cond_1
    if-eqz v11, :cond_2

    .line 323
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v11, 0x0

    .line 327
    :cond_2
    const-string v3, "nq_sms"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 328
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 329
    const-string v3, "address"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 330
    .restart local v20       #numIndex:I
    const-string v3, "date"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 331
    .restart local v13       #dateIndex:I
    const-string v3, "type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 332
    .restart local v23       #typeIndex:I
    const-string v3, "name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 333
    .restart local v18       #nameIndex:I
    const-string v3, "read"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 334
    .restart local v21       #readIndex:I
    const-string v3, "body"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 336
    .local v10, bodyIndex:I
    :cond_3
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 337
    .restart local v19       #num:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 356
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 358
    .end local v10           #bodyIndex:I
    .end local v13           #dateIndex:I
    .end local v18           #nameIndex:I
    .end local v19           #num:Ljava/lang/String;
    .end local v20           #numIndex:I
    .end local v21           #readIndex:I
    .end local v23           #typeIndex:I
    :cond_4
    invoke-virtual {v14}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 360
    if-eqz v11, :cond_5

    .line 361
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 362
    const/4 v11, 0x0

    .line 364
    :cond_5
    if-eqz v2, :cond_6

    .line 365
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 366
    const/4 v2, 0x0

    .line 369
    :cond_6
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v14           #dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    :cond_7
    if-eqz v11, :cond_8

    .line 375
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_8
    if-eqz v2, :cond_9

    .line 377
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 379
    .end local v12           #context:Landroid/content/Context;
    .end local v15           #dbf:Ljava/io/File;
    :cond_9
    :goto_2
    return-void

    .line 297
    .restart local v12       #context:Landroid/content/Context;
    .restart local v13       #dateIndex:I
    .restart local v14       #dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .restart local v15       #dbf:Ljava/io/File;
    .restart local v16       #durationIndex:I
    .restart local v18       #nameIndex:I
    .restart local v19       #num:Ljava/lang/String;
    .restart local v20       #numIndex:I
    .restart local v21       #readIndex:I
    .restart local v23       #typeIndex:I
    :cond_a
    :try_start_1
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 298
    .local v22, type:I
    if-nez v22, :cond_b

    .line 299
    const/16 v22, 0x3

    .line 302
    :cond_b
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v3, "date"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    const-string v3, "duration"

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    const-string v3, "type"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v3, "name"

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "numbertype"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v3, "numberlabel"

    const-string v4, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v3, "tagnew"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v3, "privateflag"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v3, "read_extend"

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v3, "pimcalllog"

    const-string v4, "id"

    move-object/from16 v0, v24

    invoke-virtual {v14, v3, v4, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 371
    .end local v12           #context:Landroid/content/Context;
    .end local v13           #dateIndex:I
    .end local v14           #dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .end local v15           #dbf:Ljava/io/File;
    .end local v16           #durationIndex:I
    .end local v18           #nameIndex:I
    .end local v19           #num:Ljava/lang/String;
    .end local v20           #numIndex:I
    .end local v21           #readIndex:I
    .end local v22           #type:I
    .end local v23           #typeIndex:I
    .end local v24           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v17

    .line 372
    .local v17, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    if-eqz v11, :cond_c

    .line 375
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_c
    if-eqz v2, :cond_9

    .line 377
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_2

    .line 341
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v10       #bodyIndex:I
    .restart local v12       #context:Landroid/content/Context;
    .restart local v13       #dateIndex:I
    .restart local v14       #dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .restart local v15       #dbf:Ljava/io/File;
    .restart local v18       #nameIndex:I
    .restart local v19       #num:Ljava/lang/String;
    .restart local v20       #numIndex:I
    .restart local v21       #readIndex:I
    .restart local v23       #typeIndex:I
    :cond_d
    :try_start_3
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .restart local v24       #values:Landroid/content/ContentValues;
    const-string v3, "address"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v3, "date"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-string v3, "protocol"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v3, "read"

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string v3, "body"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v3, "read_extend"

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v3, "displayName"

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v3, "smslog"

    const-string v4, "id"

    move-object/from16 v0, v24

    invoke-virtual {v14, v3, v4, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 374
    .end local v10           #bodyIndex:I
    .end local v12           #context:Landroid/content/Context;
    .end local v13           #dateIndex:I
    .end local v14           #dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .end local v15           #dbf:Ljava/io/File;
    .end local v18           #nameIndex:I
    .end local v19           #num:Ljava/lang/String;
    .end local v20           #numIndex:I
    .end local v21           #readIndex:I
    .end local v23           #typeIndex:I
    .end local v24           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_e

    .line 375
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_e
    if-eqz v2, :cond_f

    .line 377
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f
    throw v3
.end method

.method private loadNetQinData()V
    .locals 28

    .prologue
    .line 125
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v13

    .line 126
    .local v13, context:Landroid/content/Context;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "has_load_netqin_data"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v13, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 131
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v12

    .line 132
    .local v12, configDao:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    const-string v4, "intercept_setting"

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "filter_mode"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 134
    .local v20, mode:I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_0

    .line 135
    const-string v4, "nq_antispam"

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "scene_mode"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 139
    :cond_0
    packed-switch v20, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    const-string v4, "intercept_setting"

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v4, "nq_antispam"

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 169
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    const-string v4, "KeyWordsDB"

    invoke-virtual {v13, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 170
    .local v14, dbf:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 171
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 173
    const-string v4, "KeyWords"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 174
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v19, keywordlistdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v13}, Lcom/zte/heartyservice/intercept/Tencent/KeyWordDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v18

    .line 178
    .local v18, keyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;
    invoke-interface/range {v18 .. v18}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    const-string v4, "KeyWord"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 181
    .local v17, keyIndex:I
    :cond_1
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, key:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    invoke-interface/range {v18 .. v19}, Ltmsdk/common/module/aresengine/IKeyWordDao;->setAll(Ljava/util/List;)V

    .line 190
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #keyIndex:I
    .end local v18           #keyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;
    .end local v19           #keywordlistdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz v11, :cond_4

    .line 191
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 192
    const/4 v11, 0x0

    .line 194
    :cond_4
    if-eqz v3, :cond_5

    .line 195
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 196
    const/4 v3, 0x0

    .line 199
    :cond_5
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 203
    :cond_6
    const-string v4, "nq_antiharass.db"

    invoke-virtual {v13, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 204
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 205
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 207
    const-string v4, "nq_black_white"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 209
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 210
    const-string v4, "address"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 211
    .local v23, numIndex:I
    const-string v4, "name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 212
    .local v21, nameIndex:I
    const-string v4, "rule"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 213
    .local v25, ruleIndex:I
    const-string v4, "type"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 214
    .local v27, typeIndex:I
    const/16 v24, 0x0

    .line 215
    .local v24, rule:I
    const/16 v26, -0x1

    .line 217
    .local v26, type:I
    :cond_7
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 218
    .local v22, num:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 236
    :cond_8
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 237
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reloadCacheList(I)V

    .line 238
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reloadCacheList(I)V

    .line 241
    .end local v21           #nameIndex:I
    .end local v22           #num:Ljava/lang/String;
    .end local v23           #numIndex:I
    .end local v24           #rule:I
    .end local v25           #ruleIndex:I
    .end local v26           #type:I
    .end local v27           #typeIndex:I
    :cond_9
    if-eqz v11, :cond_a

    .line 242
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v11, 0x0

    .line 246
    :cond_a
    if-eqz v3, :cond_b

    .line 247
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 248
    const/4 v3, 0x0

    .line 251
    :cond_b
    new-instance v4, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    invoke-virtual {v4}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_c
    if-eqz v11, :cond_d

    .line 263
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_d
    if-eqz v3, :cond_e

    .line 265
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 268
    .end local v14           #dbf:Ljava/io/File;
    :cond_e
    :goto_2
    const-string v4, "has_load_netqin_data"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v13, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 271
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #configDao:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    .end local v20           #mode:I
    :cond_f
    return-void

    .line 141
    .restart local v12       #configDao:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    .restart local v20       #mode:I
    :pswitch_1
    const/16 v20, 0x0

    .line 142
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterModOnlyFlag(I)V

    goto/16 :goto_0

    .line 145
    :pswitch_2
    const/16 v20, 0x1

    .line 146
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterModOnlyFlag(I)V

    goto/16 :goto_0

    .line 149
    :pswitch_3
    const/16 v20, 0x2

    .line 150
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterModOnlyFlag(I)V

    goto/16 :goto_0

    .line 153
    :pswitch_4
    const/16 v20, 0x4

    .line 154
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterModOnlyFlag(I)V

    goto/16 :goto_0

    .line 157
    :pswitch_5
    const/16 v20, 0x5

    .line 158
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterModOnlyFlag(I)V

    goto/16 :goto_0

    .line 221
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v14       #dbf:Ljava/io/File;
    .restart local v21       #nameIndex:I
    .restart local v22       #num:Ljava/lang/String;
    .restart local v23       #numIndex:I
    .restart local v24       #rule:I
    .restart local v25       #ruleIndex:I
    .restart local v26       #type:I
    .restart local v27       #typeIndex:I
    :cond_10
    :try_start_1
    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 222
    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 223
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_12

    .line 224
    const/16 v26, 0x0

    .line 225
    and-int/lit8 v4, v24, 0x3

    if-eqz v4, :cond_8

    .line 233
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteFromList(ILjava/lang/String;)Z

    .line 234
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteFromList(ILjava/lang/String;)Z

    .line 235
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v4, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->addToList(ILjava/lang/String;Ljava/lang/String;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 259
    .end local v14           #dbf:Ljava/io/File;
    .end local v21           #nameIndex:I
    .end local v22           #num:Ljava/lang/String;
    .end local v23           #numIndex:I
    .end local v24           #rule:I
    .end local v25           #ruleIndex:I
    .end local v26           #type:I
    .end local v27           #typeIndex:I
    :catch_0
    move-exception v15

    .line 260
    .local v15, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    if-eqz v11, :cond_11

    .line 263
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_11
    if-eqz v3, :cond_e

    .line 265
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 228
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v14       #dbf:Ljava/io/File;
    .restart local v21       #nameIndex:I
    .restart local v22       #num:Ljava/lang/String;
    .restart local v23       #numIndex:I
    .restart local v24       #rule:I
    .restart local v25       #ruleIndex:I
    .restart local v26       #type:I
    .restart local v27       #typeIndex:I
    :cond_12
    if-nez v26, :cond_8

    .line 229
    const/16 v26, 0x1

    goto :goto_3

    .line 262
    .end local v14           #dbf:Ljava/io/File;
    .end local v21           #nameIndex:I
    .end local v22           #num:Ljava/lang/String;
    .end local v23           #numIndex:I
    .end local v24           #rule:I
    .end local v25           #ruleIndex:I
    .end local v26           #type:I
    .end local v27           #typeIndex:I
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_13

    .line 263
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_13
    if-eqz v3, :cond_14

    .line 265
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    throw v4

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setVirusScanResultApkType(Lcom/zte/heartyservice/common/datatype/VirusScanResult;Ltmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 4
    .parameter "virusScanResult"
    .parameter "result"

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, resultcode:I
    const-string v1, "PortingInterfaceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \tresult.type ================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget v1, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    packed-switch v1, :pswitch_data_0

    .line 840
    :pswitch_0
    const/4 v0, 0x0

    .line 844
    :goto_0
    iget-object v1, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 845
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    .line 846
    iget-object v1, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    .line 847
    iget v1, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    packed-switch v1, :pswitch_data_1

    .line 859
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    .line 863
    :goto_1
    iget-object v1, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    .line 864
    return-void

    .line 819
    :pswitch_1
    const/4 v0, 0x1

    .line 820
    goto :goto_0

    .line 822
    :pswitch_2
    const/4 v0, 0x2

    .line 823
    goto :goto_0

    .line 828
    :pswitch_3
    const/4 v0, 0x4

    .line 829
    goto :goto_0

    .line 831
    :pswitch_4
    const/4 v0, 0x5

    .line 832
    goto :goto_0

    .line 834
    :pswitch_5
    const/4 v0, 0x6

    .line 835
    goto :goto_0

    .line 837
    :pswitch_6
    const/4 v0, 0x7

    .line 838
    goto :goto_0

    .line 849
    :pswitch_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    goto :goto_1

    .line 852
    :pswitch_8
    const/4 v1, 0x1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    goto :goto_1

    .line 855
    :pswitch_9
    iget-object v1, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    .line 856
    const/4 v1, 0x2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    goto :goto_1

    .line 817
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 847
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public SIUInit()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public SIUcloudVinusScan()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    return-object v0
.end method

.method public SIUgetDetectedNotSecurityAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDetectedNotSecurityAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public SIUgetInterceptedPhoneAndMsgList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/InterceptResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    iget-object v8, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    if-nez v8, :cond_1

    .line 548
    :cond_0
    return-object v4

    .line 514
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createCallLogDao()Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v2

    .line 515
    .local v2, calllogdao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createSMSDao()Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v7

    .line 516
    .local v7, smslogdao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    const-class v8, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v8}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v5

    check-cast v5, Ltmsdk/bg/module/location/LocationManager;

    .line 519
    .local v5, locationManager:Ltmsdk/bg/module/location/LocationManager;
    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->getAllNoRead()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 521
    .local v1, calllog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    invoke-virtual {v7}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->getAllNoRead()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 522
    .local v6, smslog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    const-string v8, "zhangchi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calllog all: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v8, "zhangchi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smslog all: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 525
    new-instance v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/InterceptResult;-><init>()V

    .line 526
    .local v0, IR:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    const/4 v8, 0x0

    iput v8, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    .line 527
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    iget-object v8, v8, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    iput-object v8, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->number:Ljava/lang/String;

    .line 528
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    iget-object v8, v8, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ltmsdk/bg/module/location/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->introduction:Ljava/lang/String;

    .line 530
    const-string v8, "zhangchi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->number:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "----  introduction:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->introduction:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    .end local v0           #IR:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 538
    new-instance v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/InterceptResult;-><init>()V

    .line 539
    .restart local v0       #IR:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    const/4 v8, 0x1

    iput v8, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    .line 540
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    iget-object v8, v8, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    iput-object v8, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->number:Ljava/lang/String;

    .line 541
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-virtual {v8}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->introduction:Ljava/lang/String;

    .line 542
    const-string v8, "zhangchi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smsnumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->number:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "----  smsintroduction:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->introduction:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public SIUinitAntivirusEngine()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public SIUscanApkPathForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 7
    .parameter "apkPath"

    .prologue
    .line 481
    new-instance v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-direct {v3}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;-><init>()V

    .line 482
    .local v3, result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    iput-object p1, v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 483
    const/4 v4, 0x0

    iput v4, v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    .line 484
    const-string v4, ""

    iput-object v4, v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v1, pkgnamelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PortingInterfaceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " apkPath ==============="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :try_start_0
    const-class v4, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    invoke-static {v4}, Ltmsdk/fg/creator/ManagerCreatorF;->getManager(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;

    move-result-object v2

    check-cast v2, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    .line 492
    .local v2, qScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    new-instance v4, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;Lcom/zte/heartyservice/common/datatype/VirusScanResult;Lcom/zte/heartyservice/common/utils/CallBack;)V

    invoke-virtual {v2, v1, v4}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->nativeScanSelectedApks(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;

    .line 495
    invoke-virtual {v2}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->freeScanner()V

    .line 496
    const-string v4, "PortingInterfaceUtils"

    const-string v5, " apkPath ========ddd======="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v2           #qScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    :goto_0
    return-object v3

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public SIUscanAppForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 461
    new-instance v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-direct {v3}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;-><init>()V

    .line 462
    .local v3, result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    iput-object p1, v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 463
    const/4 v4, 0x0

    iput v4, v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    .line 464
    const-string v4, ""

    iput-object v4, v3, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v1, pkgnamelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :try_start_0
    const-class v4, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    invoke-static {v4}, Ltmsdk/fg/creator/ManagerCreatorF;->getManager(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;

    move-result-object v2

    check-cast v2, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    .line 470
    .local v2, qScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    new-instance v4, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;Lcom/zte/heartyservice/common/datatype/VirusScanResult;Lcom/zte/heartyservice/common/utils/CallBack;)V

    invoke-virtual {v2, v1, v4}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->nativeScanSelectedPackages(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;

    .line 472
    invoke-virtual {v2}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->freeScanner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v2           #qScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    :goto_0
    return-object v3

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public SIUscanAppForVinus(Ljava/util/List;Lcom/zte/heartyservice/common/utils/CallBack;)V
    .locals 4
    .parameter
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/heartyservice/common/utils/CallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, pkgNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "chenlu"

    const-string v3, "scanAppsForVinus packageScan"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :try_start_0
    const-class v2, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    invoke-static {v2}, Ltmsdk/fg/creator/ManagerCreatorF;->getManager(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;

    move-result-object v1

    check-cast v1, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    .line 450
    .local v1, qScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    new-instance v2, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p2}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;Lcom/zte/heartyservice/common/datatype/VirusScanResult;Lcom/zte/heartyservice/common/utils/CallBack;)V

    invoke-virtual {v1, p1, v2}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->nativeScanSelectedPackages(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;

    .line 451
    invoke-virtual {v1}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->freeScanner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1           #qScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addToBlackList(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "num"
    .parameter "name"
    .parameter "rule"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 1022
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->removeFromWhiteList(Ljava/lang/String;)Z

    .line 1024
    invoke-static {v3, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteFromList(ILjava/lang/String;)Z

    move-result v2

    .line 1025
    .local v2, ret:Z
    invoke-static {v3, p1, p2, p3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->addToList(ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    .line 1026
    .local v0, id:J
    if-nez v2, :cond_0

    cmp-long v4, v0, v5

    if-lez v4, :cond_1

    .line 1027
    :cond_0
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reloadCacheList(I)V

    .line 1029
    :cond_1
    cmp-long v4, v0, v5

    if-lez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public addToWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "num"
    .parameter "name"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1034
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->removeFromBlackList(Ljava/lang/String;)Z

    .line 1036
    invoke-static {v3, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteFromList(ILjava/lang/String;)Z

    move-result v2

    .line 1037
    .local v2, ret:Z
    invoke-static {v3, p1, p2, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->addToList(ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    .line 1038
    .local v0, id:J
    if-nez v2, :cond_0

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 1039
    :cond_0
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reloadCacheList(I)V

    .line 1041
    :cond_1
    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public engineAppInit(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const/4 v3, 0x0

    .line 382
    const-string v0, "porting"

    const-string v1, "enter Tencent_PortingInterface::engineAppInit!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->loadNetQinData()V

    .line 388
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {v3}, Ltmsdk/common/TMSDKContext;->setAutoConnectionSwitch(Z)V

    .line 392
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-class v1, Lcom/zte/heartyservice/intercept/Tencent/SecureService;

    new-instance v2, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$2;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    invoke-static {v0, v1, v3, v2}, Ltmsdk/common/TMSDKContext;->init(Landroid/content/Context;Ljava/lang/Class;ILtmsdk/common/ITMSApplicaionConfig;)V

    .line 403
    invoke-virtual {p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->initIntercept()V

    .line 404
    return-void
.end method

.method public getNumLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    const/4 v0, 0x0

    .line 989
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/location/LocationManager;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/location/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrafficCorrection()Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    .locals 1

    .prologue
    .line 871
    new-instance v0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    invoke-direct {v0}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;-><init>()V

    return-object v0
.end method

.method public initIntercept()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    .line 1045
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    if-nez v10, :cond_2

    .line 1046
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    .line 1047
    .local v0, app:Landroid/app/Application;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "user_enter"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v0, v10, v11}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1049
    :cond_0
    const-class v10, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v10}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v10

    check-cast v10, Ltmsdk/bg/module/aresengine/AresEngineManager;

    iput-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 1050
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    new-instance v11, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;

    invoke-direct {v11, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/AresEngineManager;->setAresEngineFactor(Ltmsdk/bg/module/aresengine/AresEngineFactor;)V

    .line 1053
    invoke-static {}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->createInComingSmsInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;

    move-result-object v9

    .line 1054
    .local v9, smsbuilder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    new-instance v7, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$4;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$4;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    .line 1055
    .local v7, inComingSmsDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    new-instance v10, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;

    invoke-direct {v10, v0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mEventsMonitor:Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;

    .line 1056
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mEventsMonitor:Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;

    invoke-virtual {v10, v7}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->setSmsMonitor(Ltmsdk/bg/module/aresengine/DataMonitor;)V

    .line 1058
    invoke-virtual {v9, v7}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->setDataMonitor(Ltmsdk/bg/module/aresengine/DataMonitor;)V

    .line 1059
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v10, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->addInterceptor(Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;)V

    .line 1061
    const/4 v1, 0x0

    .line 1073
    .local v1, builder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<*>;"
    invoke-static {}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->createInComingCallInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;

    move-result-object v2

    .line 1074
    .local v2, callbuilder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    new-instance v6, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$5;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$5;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    .line 1075
    .local v6, inComingCallDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mEventsMonitor:Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;

    invoke-virtual {v10, v6}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->setCallMonitor(Ltmsdk/bg/module/aresengine/DataMonitor;)V

    .line 1076
    invoke-virtual {v2, v6}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->setDataMonitor(Ltmsdk/bg/module/aresengine/DataMonitor;)V

    .line 1077
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v10, v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->addInterceptor(Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;)V

    .line 1079
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mEventsMonitor:Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;

    invoke-virtual {v10}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->startMonitor()V

    .line 1083
    invoke-static {}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->createSystemCallLogInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;

    move-result-object v1

    .line 1084
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v10, v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->addInterceptor(Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;)V

    .line 1087
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v4

    .line 1088
    .local v4, configDao:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    invoke-virtual {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getFilterMod()I

    move-result v8

    .line 1089
    .local v8, intercepterMode:I
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v11, "incoming_sms"

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v10

    invoke-interface {v10}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v5

    .line 1090
    .local v5, filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v3

    .line 1091
    .local v3, config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v3, v12, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 1092
    invoke-virtual {v5, v3}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 1099
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v11, "incoming_call"

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v10

    invoke-interface {v10}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v5

    .line 1100
    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v3

    .line 1101
    invoke-virtual {v3, v12, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 1102
    invoke-virtual {v5, v3}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 1104
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v11, "system_call"

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v10

    invoke-interface {v10}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v5

    .line 1105
    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v3

    .line 1106
    invoke-virtual {v3, v12, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 1107
    invoke-virtual {v5, v3}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 1109
    invoke-virtual {v4, v8}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    .line 1111
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->checkAutoUpdate()V

    .line 1113
    sput-boolean v12, Lcom/zte/heartyservice/main/HeartyServiceApp;->isVirusDBEngineInited:Z

    .line 1115
    sget-object v10, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback1:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

    if-nez v10, :cond_1

    .line 1116
    new-instance v10, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;)V

    sput-object v10, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback1:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

    .line 1117
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v11, "incoming_sms"

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v10

    invoke-interface {v10}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v10

    sget-object v11, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback1:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/DataHandler;->addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 1118
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v11, "incoming_call"

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v10

    invoke-interface {v10}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v10

    sget-object v11, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback1:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/DataHandler;->addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 1119
    iget-object v10, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v11, "system_call"

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v10

    invoke-interface {v10}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v10

    sget-object v11, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback1:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;

    invoke-virtual {v10, v11}, Ltmsdk/bg/module/aresengine/DataHandler;->addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 1122
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-ne v10, v11, :cond_2

    .line 1123
    sget-object v10, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->sSMSContentObserverCallBack:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;

    if-nez v10, :cond_2

    .line 1124
    new-instance v10, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$6;

    invoke-direct {v10, p0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$6;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    sput-object v10, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->sSMSContentObserverCallBack:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;

    .line 1182
    sget-object v10, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->sSMSContentObserverCallBack:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->addCallBack(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;)V

    .line 1189
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #builder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<*>;"
    .end local v2           #callbuilder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    .end local v3           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v4           #configDao:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    .end local v5           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #inComingCallDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    .end local v7           #inComingSmsDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    .end local v8           #intercepterMode:I
    .end local v9           #smsbuilder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    :cond_2
    return-void
.end method

.method public isInBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "num"

    .prologue
    .line 999
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->isInList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .parameter "num"

    .prologue
    .line 994
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->isInList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 1013
    invoke-static {v1, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteFromList(ILjava/lang/String;)Z

    move-result v0

    .line 1014
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 1015
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reloadCacheList(I)V

    .line 1017
    :cond_0
    return v0
.end method

.method public removeFromWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "num"

    .prologue
    const/4 v1, 0x1

    .line 1004
    invoke-static {v1, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteFromList(ILjava/lang/String;)Z

    move-result v0

    .line 1005
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 1006
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reloadCacheList(I)V

    .line 1008
    :cond_0
    return v0
.end method

.method public reset2CurrentInterceptMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 979
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v0

    .line 980
    .local v0, configDao:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getFilterMod()I

    move-result v1

    .line 981
    .local v1, intercepterMode:I
    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    .line 982
    return-void
.end method

.method public set2InterceptAll(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 916
    const-class v8, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v8}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 917
    .local v0, aresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;
    const-string v8, "incoming_sms"

    invoke-virtual {v0, v8}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v5

    .line 918
    .local v5, intercepter:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    invoke-interface {v5}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v4

    .line 919
    .local v4, incomingSMSFilter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v3

    .line 925
    .local v3, incomingSMSConfig:Ltmsdk/common/module/aresengine/FilterConfig;
    const-string v8, "incoming_call"

    invoke-virtual {v0, v8}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v5

    .line 926
    invoke-interface {v5}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 927
    .local v2, incomingCallFilter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v1

    .line 929
    .local v1, incomingCallConfig:Ltmsdk/common/module/aresengine/FilterConfig;
    const-string v8, "system_call"

    invoke-virtual {v0, v8}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v5

    .line 930
    invoke-interface {v5}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v7

    .line 931
    .local v7, systemCallFilter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v7}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 934
    .local v6, systemCallConfig:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v3, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 936
    invoke-virtual {v1, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 937
    invoke-virtual {v6, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 939
    invoke-virtual {v3, v11, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 940
    invoke-virtual {v1, v11, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 941
    invoke-virtual {v6, v11, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 943
    invoke-virtual {v3, v12, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 944
    invoke-virtual {v1, v12, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 945
    invoke-virtual {v6, v12, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 947
    invoke-virtual {v3, v13, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 948
    invoke-virtual {v1, v13, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 949
    invoke-virtual {v6, v13, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 951
    const/16 v8, 0x20

    invoke-virtual {v3, v8, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 953
    const/16 v8, 0x40

    invoke-virtual {v3, v8, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 954
    const/16 v8, 0x80

    invoke-virtual {v6, v8, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 956
    const/16 v8, 0x80

    invoke-virtual {v3, v8, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 958
    const/16 v8, 0x20

    invoke-virtual {v1, v8, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 959
    const/16 v8, 0x20

    invoke-virtual {v6, v8, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 961
    const/16 v8, 0x10

    invoke-virtual {v3, v8, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 962
    const/16 v8, 0x10

    invoke-virtual {v1, v8, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 963
    const/16 v8, 0x10

    invoke-virtual {v6, v8, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 965
    const/16 v8, 0x40

    invoke-virtual {v1, v8, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 966
    const/16 v8, 0x200

    invoke-virtual {v6, v8, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 967
    const/16 v8, 0x100

    invoke-virtual {v6, v8, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 968
    const/16 v8, 0x40

    invoke-virtual {v6, v8, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 969
    const/16 v8, 0x100

    invoke-virtual {v3, v8, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 971
    invoke-virtual {v4, v3}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 973
    invoke-virtual {v2, v1}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 974
    invoke-virtual {v7, v6}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 975
    return-void
.end method

.method public set2OnlyAcceptWhiteList(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 911
    const/4 v0, 0x2

    invoke-static {v0}, Ltmsdk/bg/module/aresengine/InterceptorFilterUtils;->setInterceptorMode(I)V

    .line 912
    return-void
.end method

.method public startWhiteListActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 904
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "list_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-class v1, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 906
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 907
    return-void
.end method

.method public supportAutoTrafficCorrection()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x1

    return v0
.end method

.method public trafficCorrectionStart()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v0

    invoke-interface {v0}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/DataHandler;->addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 894
    :cond_0
    return-void
.end method

.method public trafficCorrectionStop()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v0

    invoke-interface {v0}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mCallback:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/DataHandler;->removeCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 899
    :cond_0
    return-void
.end method

.method public turnOffVipMode()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    .line 121
    return-void
.end method

.method public turnOnVipMode()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    .line 116
    return-void
.end method
