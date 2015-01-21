.class public Lcom/isw/android/corp/util/ZipFiles;
.super Ljava/lang/Object;
.source "ZipFiles.java"


# static fields
.field private static final BUFF_SIZE:I = 0x19000

.field private static final TAG:Ljava/lang/String; = "ZipFiles"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized WriteStringToLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "data"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 225
    const-class v6, Lcom/isw/android/corp/util/ZipFiles;

    monitor-enter v6

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 228
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 234
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v3, v5, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 235
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    :goto_1
    monitor-exit v6

    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, e1:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 225
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #out:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 237
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static upZipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "zipFile"
    .parameter "rawDir"

    .prologue
    .line 159
    const/4 v9, 0x0

    .line 160
    .local v9, in:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 161
    .local v10, out:Ljava/io/OutputStream;
    const/4 v15, 0x0

    .line 163
    .local v15, zf:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v16, Ljava/util/zip/ZipFile;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 164
    .end local v15           #zf:Ljava/util/zip/ZipFile;
    .local v16, zf:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, desDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 168
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .local v5, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    move-object v11, v10

    .line 169
    .end local v10           #out:Ljava/io/OutputStream;
    .local v11, out:Ljava/lang/Object;
    :goto_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-nez v17, :cond_3

    .line 195
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 196
    const/4 v15, 0x0

    .line 203
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v15       #zf:Ljava/util/zip/ZipFile;
    if-eqz v9, :cond_1

    .line 204
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v9, 0x0

    .line 207
    :cond_1
    if-eqz v11, :cond_c

    .line 208
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 209
    const/4 v10, 0x0

    .line 211
    .end local v11           #out:Ljava/lang/Object;
    :goto_1
    if-eqz v15, :cond_2

    .line 212
    :try_start_4
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 213
    const/4 v15, 0x0

    .line 220
    .end local v3           #desDir:Ljava/io/File;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_2
    :goto_2
    return-void

    .line 171
    .end local v15           #zf:Ljava/util/zip/ZipFile;
    .restart local v3       #desDir:Ljava/io/File;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v11       #out:Ljava/lang/Object;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_5
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 172
    .local v6, entry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 173
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, str:Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    const-string v17, "8859_1"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    const-string v18, "GB2312"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 175
    .end local v13           #str:Ljava/lang/String;
    .local v14, str:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v4, desFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_5

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 178
    .local v8, fileParentDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_4

    .line 179
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 181
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 183
    .end local v8           #fileParentDir:Ljava/io/File;
    :cond_5
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 184
    .restart local v10       #out:Ljava/io/OutputStream;
    const v17, 0x19000

    :try_start_6
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 186
    .end local v11           #out:Ljava/lang/Object;
    .local v2, buffer:[B
    :goto_3
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, realLength:I
    if-gtz v12, :cond_6

    .line 189
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 190
    const/4 v10, 0x0

    .line 191
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 192
    const/4 v9, 0x0

    move-object v11, v10

    .restart local v11       #out:Ljava/lang/Object;
    goto/16 :goto_0

    .line 187
    .end local v11           #out:Ljava/lang/Object;
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v2, v0, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 198
    .end local v2           #buffer:[B
    .end local v3           #desDir:Ljava/io/File;
    .end local v4           #desFile:Ljava/io/File;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #realLength:I
    .end local v14           #str:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object/from16 v15, v16

    .line 199
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .local v7, ex:Ljava/lang/Exception;
    .restart local v15       #zf:Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const-string v17, "ZipFiles"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    if-eqz v9, :cond_7

    .line 204
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v9, 0x0

    .line 207
    :cond_7
    if-eqz v10, :cond_8

    .line 208
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 209
    const/4 v10, 0x0

    .line 211
    :cond_8
    if-eqz v15, :cond_2

    .line 212
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 213
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 215
    :catch_1
    move-exception v7

    .line 216
    const-string v17, "ZipFiles"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 201
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 203
    :goto_5
    if-eqz v9, :cond_9

    .line 204
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v9, 0x0

    .line 207
    :cond_9
    if-eqz v10, :cond_a

    .line 208
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 209
    const/4 v10, 0x0

    .line 211
    :cond_a
    if-eqz v15, :cond_b

    .line 212
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 213
    const/4 v15, 0x0

    .line 218
    :cond_b
    :goto_6
    throw v17

    .line 215
    :catch_2
    move-exception v7

    .line 216
    .restart local v7       #ex:Ljava/lang/Exception;
    const-string v18, "ZipFiles"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 215
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v3       #desDir:Ljava/io/File;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v11       #out:Ljava/lang/Object;
    :catch_3
    move-exception v7

    move-object v10, v11

    .line 216
    .end local v11           #out:Ljava/lang/Object;
    .restart local v7       #ex:Ljava/lang/Exception;
    :goto_7
    const-string v17, "ZipFiles"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_7

    .line 201
    .end local v3           #desDir:Ljava/io/File;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v15           #zf:Ljava/util/zip/ZipFile;
    .restart local v10       #out:Ljava/io/OutputStream;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v15       #zf:Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v10           #out:Ljava/io/OutputStream;
    .end local v15           #zf:Ljava/util/zip/ZipFile;
    .restart local v3       #desDir:Ljava/io/File;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v11       #out:Ljava/lang/Object;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v17

    move-object/from16 v15, v16

    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v15       #zf:Ljava/util/zip/ZipFile;
    move-object v10, v11

    .restart local v10       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 198
    .end local v3           #desDir:Ljava/io/File;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v11           #out:Ljava/lang/Object;
    :catch_5
    move-exception v7

    goto/16 :goto_4

    .end local v10           #out:Ljava/io/OutputStream;
    .end local v15           #zf:Ljava/util/zip/ZipFile;
    .restart local v3       #desDir:Ljava/io/File;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v11       #out:Ljava/lang/Object;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v7

    move-object/from16 v15, v16

    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v15       #zf:Ljava/util/zip/ZipFile;
    move-object v10, v11

    .restart local v10       #out:Ljava/io/OutputStream;
    goto/16 :goto_4

    .end local v10           #out:Ljava/io/OutputStream;
    :cond_c
    move-object v10, v11

    .end local v11           #out:Ljava/lang/Object;
    .local v10, out:Ljava/lang/Object;
    goto/16 :goto_1
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 9
    .parameter "resFile"
    .parameter "zipout"
    .parameter "rootpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    new-instance v5, Ljava/lang/String;

    const-string v6, "8859_1"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v8, "GB2312"

    invoke-direct {v5, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 126
    .end local p2
    .local v5, rootpath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 128
    .local v2, fileList:[Ljava/io/File;
    array-length v8, v2

    move v6, v7

    :goto_1
    if-lt v6, v8, :cond_1

    .line 145
    .end local v2           #fileList:[Ljava/io/File;
    :goto_2
    return-void

    .line 123
    .end local v5           #rootpath:Ljava/lang/String;
    .restart local p2
    :cond_0
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 128
    .end local p2
    .restart local v2       #fileList:[Ljava/io/File;
    .restart local v5       #rootpath:Ljava/lang/String;
    :cond_1
    aget-object v1, v2, v6

    .line 129
    .local v1, file:Ljava/io/File;
    invoke-static {v1, p1, v5}, Lcom/isw/android/corp/util/ZipFiles;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 128
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 133
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileList:[Ljava/io/File;
    :cond_2
    const v6, 0x19000

    new-array v0, v6, [B

    .line 134
    .local v0, buffer:[B
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 135
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v3, in:Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 138
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, realLength:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 141
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 142
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 143
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {p1, v0, v7, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "rawFile"
    .parameter "zipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 80
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 79
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 81
    .local v0, zipout:Ljava/util/zip/ZipOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/isw/android/corp/util/ZipFiles;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 83
    return-void
.end method
