.class public Lcom/zte/heartservice/ZteServiceCenter;
.super Ljava/lang/Object;
.source "ZteServiceCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartservice/ZteServiceCenter$Columns;
    }
.end annotation


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "zte_service_info.db"

.field public static final PREF_CITY:Ljava/lang/String; = "city"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "zte_service_centers"

.field private static final TAG:Ljava/lang/String; = "ZteServiceCenter"

.field public static final ZTE_SERVICE_CENTERS_TABLE:Ljava/lang/String; = "service_centers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 20
    .parameter "context"

    .prologue
    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 76
    .local v10, in:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 77
    .local v13, out:Ljava/io/FileOutputStream;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070011

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 79
    .local v12, new_version:I
    :try_start_0
    const-string v17, "zte_service_info.db"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 80
    .local v7, dbf:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 82
    .local v15, path:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v17

    if-eqz v17, :cond_0

    .line 84
    const/16 v17, 0x0

    .line 85
    const/16 v18, 0x1

    .line 84
    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 86
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v16

    .line 87
    .local v16, version:I
    move/from16 v0, v16

    if-ge v0, v12, :cond_4

    .line 88
    const-string v17, "ZteServiceCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "cur version "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " < new version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    .end local v16           #version:I
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_d

    .line 107
    const-string v17, "ZteServiceCenter"

    const-string v18, "copy db"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v17, "zte_service_info.db_tmp"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 109
    .local v8, dbfTmp:Ljava/io/File;
    const-string v17, "zte_service_info.db_tmp1"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 112
    const/high16 v18, 0x7f05

    .line 111
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 113
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 114
    .end local v13           #out:Ljava/io/FileOutputStream;
    .local v14, out:Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_3
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 116
    .local v4, buf:[B
    const/4 v5, 0x1

    .line 118
    .local v5, copyright:Z
    :goto_1
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, len:I
    if-gtz v11, :cond_b

    .line 127
    :goto_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    .line 128
    const/4 v13, 0x0

    .line 130
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    if-eqz v5, :cond_c

    .line 131
    :try_start_4
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 132
    const/16 v17, 0x0

    .line 133
    const/16 v18, 0x0

    .line 132
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v16

    .line 135
    .restart local v16       #version:I
    move/from16 v0, v16

    if-ge v0, v12, :cond_1

    .line 136
    const-string v17, "ZteServiceCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "db version "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " set new version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 162
    :cond_1
    if-eqz v10, :cond_2

    .line 163
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 168
    :cond_2
    :goto_3
    if-eqz v13, :cond_3

    .line 169
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_3
    :goto_4
    move-object/from16 v17, v6

    .line 174
    .end local v4           #buf:[B
    .end local v5           #copyright:Z
    .end local v7           #dbf:Ljava/io/File;
    .end local v8           #dbfTmp:Ljava/io/File;
    .end local v11           #len:I
    .end local v15           #path:Ljava/lang/String;
    .end local v16           #version:I
    :goto_5
    return-object v17

    .line 162
    .restart local v7       #dbf:Ljava/io/File;
    .restart local v15       #path:Ljava/lang/String;
    .restart local v16       #version:I
    :cond_4
    if-eqz v10, :cond_5

    .line 163
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 168
    :cond_5
    :goto_6
    if-eqz v13, :cond_6

    .line 169
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    :goto_7
    move-object/from16 v17, v6

    .line 93
    goto :goto_5

    .line 164
    :catch_0
    move-exception v9

    .line 165
    .local v9, e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 170
    .end local v9           #e:Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 171
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 95
    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #version:I
    :catch_2
    move-exception v9

    .line 96
    .local v9, e:Ljava/lang/Exception;
    :try_start_9
    const-string v17, "ZteServiceCenter"

    const-string v18, "db file error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    if-eqz v6, :cond_7

    .line 99
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    const/4 v6, 0x0

    .line 102
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 153
    .end local v7           #dbf:Ljava/io/File;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v15           #path:Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 154
    .restart local v9       #e:Ljava/lang/Exception;
    :goto_8
    :try_start_a
    const-string v17, "ZteServiceCenter"

    const-string v18, "Exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    if-eqz v6, :cond_8

    .line 157
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 158
    const/4 v6, 0x0

    .line 162
    :cond_8
    if-eqz v10, :cond_9

    .line 163
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 168
    .end local v9           #e:Ljava/lang/Exception;
    :cond_9
    :goto_9
    if-eqz v13, :cond_a

    .line 169
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 174
    :cond_a
    :goto_a
    const/16 v17, 0x0

    goto :goto_5

    .line 120
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v4       #buf:[B
    .restart local v5       #copyright:Z
    .restart local v7       #dbf:Ljava/io/File;
    .restart local v8       #dbfTmp:Ljava/io/File;
    .restart local v11       #len:I
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #path:Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    :try_start_d
    move/from16 v0, v17

    invoke-virtual {v14, v4, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_1

    .line 121
    :catch_4
    move-exception v9

    .line 122
    .local v9, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 123
    goto/16 :goto_2

    .line 164
    .end local v9           #e:Ljava/io/IOException;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    .restart local v16       #version:I
    :catch_5
    move-exception v9

    .line 165
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 170
    .end local v9           #e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 171
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 149
    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #version:I
    :cond_c
    :try_start_e
    const-string v17, "ZteServiceCenter"

    const-string v18, "copy db exception"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 162
    .end local v4           #buf:[B
    .end local v5           #copyright:Z
    .end local v8           #dbfTmp:Ljava/io/File;
    .end local v11           #len:I
    :cond_d
    if-eqz v10, :cond_e

    .line 163
    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 168
    :cond_e
    :goto_b
    if-eqz v13, :cond_a

    .line 169
    :try_start_10
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_a

    .line 170
    :catch_7
    move-exception v9

    .line 171
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 164
    .end local v7           #dbf:Ljava/io/File;
    .end local v15           #path:Ljava/lang/String;
    .local v9, e:Ljava/lang/Exception;
    :catch_8
    move-exception v9

    .line 165
    .local v9, e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 170
    .end local v9           #e:Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 171
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 160
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 162
    :goto_c
    if-eqz v10, :cond_f

    .line 163
    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 168
    :cond_f
    :goto_d
    if-eqz v13, :cond_10

    .line 169
    :try_start_12
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 173
    :cond_10
    :goto_e
    throw v17

    .line 164
    :catch_a
    move-exception v9

    .line 165
    .restart local v9       #e:Ljava/io/IOException;
    const-string v18, "ZteServiceCenter"

    const-string v19, "IOException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 170
    .end local v9           #e:Ljava/io/IOException;
    :catch_b
    move-exception v9

    .line 171
    .restart local v9       #e:Ljava/io/IOException;
    const-string v18, "ZteServiceCenter"

    const-string v19, "IOException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 164
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #dbf:Ljava/io/File;
    .restart local v15       #path:Ljava/lang/String;
    :catch_c
    move-exception v9

    .line 165
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "ZteServiceCenter"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 160
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v8       #dbfTmp:Ljava/io/File;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_c

    .line 153
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v9

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_8
.end method

.method public static showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9
    .parameter "c"
    .parameter "positiveButtonRes"
    .parameter "infoText"
    .parameter "Title"
    .parameter "i"

    .prologue
    const v8, 0x7f08015e

    const v7, 0x7f08015d

    const v6, 0x7f08015c

    const v5, 0x7f08015b

    const v4, 0x7f08015a

    .line 180
    move-object v2, p4

    .line 181
    .local v2, intent:Landroid/content/Intent;
    move-object v1, p0

    .line 182
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 187
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    :goto_0
    if-eqz p1, :cond_0

    .line 209
    new-instance v3, Lcom/zte/heartservice/ZteServiceCenter$1;

    invoke-direct {v3, v2, v1}, Lcom/zte/heartservice/ZteServiceCenter$1;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    :cond_0
    const v3, 0x7f080020

    new-instance v4, Lcom/zte/heartservice/ZteServiceCenter$2;

    invoke-direct {v4}, Lcom/zte/heartservice/ZteServiceCenter$2;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 230
    return-void

    .line 188
    :cond_1
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 189
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 191
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 193
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 195
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 196
    :cond_5
    const v3, 0x7f08015f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 197
    const v3, 0x7f08015f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 198
    :cond_6
    const v3, 0x7f080160

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    .line 199
    const v3, 0x7f080160

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 200
    :cond_7
    const v3, 0x7f080171

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    .line 201
    const v3, 0x7f080171

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 203
    :cond_8
    const v3, 0x7f080156

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method
