.class final Lack;
.super Landroid/content/AsyncQueryHandler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lace;


# direct methods
.method public constructor <init>(Lace;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lack;->a:Lace;

    .line 1202
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1203
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1207
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 1209
    const/16 v4, 0x4e00

    if-lt v3, v4, :cond_0

    const v4, 0x9fbb

    if-le v3, v4, :cond_1

    .line 1210
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1212
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1216
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1221
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1229
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 1231
    :goto_0
    return-void

    .line 1223
    :sswitch_0
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)Z

    goto :goto_0

    .line 1226
    :sswitch_1
    iget-object v0, p0, Lack;->a:Lace;

    invoke-virtual {v0}, Lace;->g()V

    goto :goto_0

    .line 1221
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1235
    if-nez p3, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1236
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query Result: Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ColCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->a(Ljava/lang/String;)V

    .line 1239
    invoke-static {}, Lace;->a()Lacj;

    move-result-object v3

    invoke-virtual {v3}, Lacj;->a()V

    .line 1242
    if-eqz v0, :cond_a

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    const/16 v0, 0x2710

    .line 1248
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    int-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1249
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0, v11, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    .line 1250
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===============isOpenContactIndetify="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->a(Ljava/lang/String;)V

    .line 1251
    iget-object v3, p0, Lack;->a:Lace;

    invoke-static {v3}, Lace;->a(Lace;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3}, Lafp;->v()Z

    move-result v3

    invoke-static {v3}, Lace;->a(Z)Z

    .line 1252
    invoke-static {}, Lace;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1253
    sget-object v3, Lace;->a:Ljava/lang/StringBuilder;

    if-nez v3, :cond_1

    .line 1254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v3, Lace;->a:Ljava/lang/StringBuilder;

    .line 1267
    :cond_1
    sput-boolean v1, Lace;->a:Z

    move v3, v2

    .line 1269
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1270
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1271
    invoke-static {v5}, Lace;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1272
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_7

    .line 1305
    :cond_3
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1306
    sput-boolean v2, Lace;->a:Z

    .line 1307
    invoke-static {}, Lace;->a()Lacj;

    move-result-object v0

    invoke-static {v0}, Lace;->a(Lacj;)V

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save the Results.total="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->a(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 1313
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0, v11, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    .line 1314
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0, v2}, Lace;->a(Lace;Z)Z

    .line 1321
    :goto_3
    if-eqz p3, :cond_4

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :cond_4
    :goto_4
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0}, Lace;->b(Lace;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1325
    iget-object v0, p0, Lack;->a:Lace;

    iget-object v1, p0, Lack;->a:Lace;

    invoke-static {v1}, Lace;->a(Lace;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lace;->a(Lace;Landroid/content/Context;I)V

    .line 1327
    :cond_5
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lafp;->g(I)V

    .line 1328
    iget-object v0, p0, Lack;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->h()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1249
    goto/16 :goto_1

    .line 1274
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query Name["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lace;->a(Ljava/lang/String;)V

    .line 1276
    invoke-direct {p0, v4}, Lack;->a(Ljava/lang/StringBuilder;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Formated Name["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lace;->a(Ljava/lang/String;)V

    .line 1278
    iget-object v7, p0, Lack;->a:Lace;

    invoke-static {v7}, Lace;->a(Lace;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x2ff

    invoke-virtual {v7, v8, v9, v10}, Lcom/sohu/inputmethod/engine/IMEInterface;->learnWord(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1280
    invoke-static {}, Lace;->a()Lacj;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lacj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 1291
    :cond_9
    invoke-static {}, Lace;->a()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    .line 1292
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1293
    iget-object v6, p0, Lack;->a:Lace;

    invoke-static {v6}, Lace;->a(Lace;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sohu/inputmethod/engine/IMEInterface;->decideAddressType(Ljava/lang/String;)I

    move-result v6

    .line 1294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "======================type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  end decide time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lace;->a(Ljava/lang/String;)V

    .line 1295
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1296
    iget-object v6, p0, Lack;->a:Lace;

    iget-object v7, p0, Lack;->a:Lace;

    invoke-static {v7}, Lace;->a(Lace;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v8

    invoke-static {v6, v7, v8}, Lace;->a(Lace;Landroid/content/Context;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1297
    sget-object v7, Lace;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    sget-object v5, Lace;->a:Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    sget-object v5, Lace;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    sget-object v5, Lace;->a:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1317
    :cond_a
    const-string v0, "Query Result is Null."

    invoke-static {v0}, Lace;->a(Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_3

    .line 1322
    :catch_0
    move-exception v0

    goto/16 :goto_4
.end method
