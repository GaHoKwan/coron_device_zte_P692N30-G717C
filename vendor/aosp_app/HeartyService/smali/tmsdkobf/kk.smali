.class public Ltmsdkobf/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter
    .parameter "encodeName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, obj:Ljava/lang/Object;,"TT;"
    move-object v1, p3

    .line 52
    .local v1, wupObject:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object p3, v1

    .line 61
    .end local p3           #obj:Ljava/lang/Object;,"TT;"
    :cond_1
    :goto_0
    return-object p3

    .line 55
    .restart local p3       #obj:Ljava/lang/Object;,"TT;"
    :cond_2
    invoke-static {p0, p1, p4}, Ltmsdkobf/kk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/cw;

    move-result-object v0

    .line 57
    .local v0, attribute:Ltmsdkobf/cw;
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ltmsdkobf/cw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_1
    if-eqz v1, :cond_1

    move-object p3, v1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, obj:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ltmsdkobf/kk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/cw;
    .locals 11
    .parameter "context"
    .parameter "filename"
    .parameter "encodeName"

    .prologue
    const/4 v9, 0x0

    .line 109
    new-instance v0, Ltmsdkobf/cw;

    invoke-direct {v0}, Ltmsdkobf/cw;-><init>()V

    .line 110
    .local v0, attribute:Ltmsdkobf/cw;
    invoke-static {p0, p1, v9}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 118
    const/4 v6, 0x0

    .line 120
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v7}, Ltmsdkobf/ju;->a(Ljava/io/InputStream;)Ltmsdkobf/jt;

    move-result-object v4

    .line 122
    .local v4, fh:Ltmsdkobf/jt;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v1, v9, [B

    .line 123
    .local v1, data:[B
    invoke-virtual {v7, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 125
    invoke-static {v1}, Ltmsdkobf/kd;->t([B)[B

    move-result-object v9

    invoke-static {v9}, Ltmsdkobf/jr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ltmsdkobf/jt;->eQ()[B

    move-result-object v10

    invoke-static {v10}, Ltmsdkobf/jr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v9

    if-nez v9, :cond_2

    .line 138
    if-eqz v7, :cond_5

    .line 140
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :goto_1
    const/4 v6, 0x0

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 141
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    const/4 v9, 0x0

    :try_start_3
    invoke-static {v1, v9}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v2

    .line 130
    .local v2, decryptData:[B
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 131
    invoke-virtual {v0, p2}, Ltmsdkobf/cw;->an(Ljava/lang/String;)V

    .line 133
    :cond_3
    invoke-virtual {v0, v2}, Ltmsdkobf/cw;->b([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 138
    if-eqz v7, :cond_5

    .line 140
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 144
    :goto_2
    const/4 v6, 0x0

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 141
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 142
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v1           #data:[B
    .end local v2           #decryptData:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fh:Ltmsdkobf/jt;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 136
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    if-eqz v6, :cond_0

    .line 140
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 144
    .end local v3           #e:Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x0

    goto :goto_0

    .line 141
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 142
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 138
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v6, :cond_4

    .line 140
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 144
    :goto_6
    const/4 v6, 0x0

    :cond_4
    throw v9

    .line 141
    :catch_4
    move-exception v3

    .line 142
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 138
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 134
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #data:[B
    .restart local v4       #fh:Ltmsdkobf/jt;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :cond_5
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method
