.class public Lcom/android/mms/util/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/VCardUtils$MyToStringIterator;,
        Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;
    }
.end annotation


# static fields
.field public static final PARSE_ALL:I = 0x0

.field public static final PARSE_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/VCardUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    return-void
.end method

.method public static getVCardContactsCount(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 14
    .parameter "context"
    .parameter "dataUri"

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x0

    .line 204
    const-string v10, "Mms/VCardUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getVCardContactsCount(): dataUri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v9

    .line 232
    :cond_1
    :goto_0
    return v2

    .line 208
    :cond_2
    const/4 v4, 0x0

    .line 209
    .local v4, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 210
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 212
    .local v2, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 213
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 214
    .local v8, tmpReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v6

    .line 219
    .local v6, line:Ljava/lang/String;
    if-nez v6, :cond_5

    .line 235
    if-eqz v4, :cond_4

    .line 236
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 238
    :cond_4
    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Mms/VCardUtils"

    const-string v10, "getVCardContactsCount(): IOException when close."

    invoke-static {v9, v10, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 221
    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 222
    const-string v10, ":"

    const/4 v11, 0x2

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, strArray:[Ljava/lang/String;
    array-length v5, v7

    .line 224
    .local v5, length:I
    if-ne v5, v13, :cond_3

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BEGIN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "VCARD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v10

    if-eqz v10, :cond_3

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v5           #length:I
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #strArray:[Ljava/lang/String;
    .end local v8           #tmpReader:Ljava/io/InputStreamReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 231
    .restart local v3       #e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v10, "Mms/VCardUtils"

    const-string v11, "getVCardContactsCount(): IOException."

    invoke-static {v10, v11, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    if-eqz v4, :cond_6

    .line 236
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 238
    :cond_6
    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_3
    move v2, v9

    .line 232
    goto :goto_0

    .line 234
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 235
    :goto_4
    if-eqz v4, :cond_8

    .line 236
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 238
    :cond_8
    if-eqz v0, :cond_9

    .line 239
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 234
    :cond_9
    :goto_5
    throw v9

    .line 241
    :catch_2
    move-exception v3

    .line 242
    .restart local v3       #e:Ljava/io/IOException;
    const-string v10, "Mms/VCardUtils"

    const-string v11, "getVCardContactsCount(): IOException when close."

    invoke-static {v10, v11, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 241
    :catch_3
    move-exception v3

    .line 242
    const-string v10, "Mms/VCardUtils"

    const-string v11, "getVCardContactsCount(): IOException when close."

    invoke-static {v10, v11, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 234
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #tmpReader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 230
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getVCardFirstContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "dataUri"

    .prologue
    .line 195
    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/mms/util/VCardUtils;->parserVCardFile(Landroid/content/Context;Landroid/net/Uri;Lcom/android/vcard/VCardEntryConstructor;I)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, vCardEntryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    const-string v1, ""

    .line 199
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static importVCard(Landroid/content/Context;Lcom/android/mms/model/FileAttachmentModel;)V
    .locals 17
    .parameter "context"
    .parameter "attach"

    .prologue
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, filenames:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v4, v1, v6

    .line 116
    .local v4, file:Ljava/lang/String;
    const-string v13, ".vcf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 115
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 121
    .end local v4           #file:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 122
    .local v7, in:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 124
    .local v10, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 126
    const/16 v13, 0x1fa0

    new-array v2, v13, [B

    .line 127
    .local v2, buf:[B
    const/4 v11, 0x0

    .line 128
    .local v11, seg:I
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_7

    .line 129
    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 132
    .end local v2           #buf:[B
    .end local v11           #seg:I
    :catchall_0
    move-exception v13

    if-eqz v7, :cond_2

    .line 133
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_2
    if-eqz v10, :cond_3

    .line 136
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 132
    :cond_3
    throw v13
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v13, "Mms/VCardUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "importVCard, file not found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 145
    .local v12, tempVCard:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gtz v13, :cond_6

    .line 146
    :cond_5
    const-string v13, "Mms/VCardUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "importVCard, file is not exists or empty "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_3
    return-void

    .line 141
    .end local v12           #tempVCard:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 142
    .local v3, e:Ljava/io/IOException;
    const-string v13, "Mms/VCardUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "importVCard, ioexception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 149
    .end local v3           #e:Ljava/io/IOException;
    .restart local v12       #tempVCard:Ljava/io/File;
    :cond_6
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v8, intent:Landroid/content/Intent;
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 132
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #tempVCard:Ljava/io/File;
    .restart local v2       #buf:[B
    .restart local v11       #seg:I
    :cond_7
    if-eqz v7, :cond_8

    .line 133
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_8
    if-eqz v10, :cond_4

    .line 136
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public static parserVCardFile(Landroid/content/Context;Landroid/net/Uri;Lcom/android/vcard/VCardEntryConstructor;I)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "dataUri"
    .parameter "interpreter"
    .parameter "parseFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/android/vcard/VCardEntryConstructor;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, inputStream:Ljava/io/InputStream;
    new-instance v3, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v3}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 159
    .local v3, parser:Lcom/android/vcard/VCardParser;
    new-instance v2, Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;

    invoke-direct {v2, v4}, Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;-><init>(Lcom/android/mms/util/VCardUtils$1;)V

    .line 161
    .local v2, myVCardEntryHandler:Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 162
    invoke-virtual {v3, p2}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 164
    packed-switch p3, :pswitch_data_0

    .line 184
    if-eqz v1, :cond_0

    .line 185
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 191
    :cond_0
    :goto_0
    return-object v4

    .line 166
    :pswitch_0
    :try_start_2
    invoke-virtual {v3, v1}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    :goto_1
    if-eqz v1, :cond_1

    .line 185
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 191
    :cond_1
    :goto_2
    invoke-virtual {v2}, Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;->getVCardEntryList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 169
    :pswitch_1
    :try_start_4
    invoke-virtual {v3, v1}, Lcom/android/vcard/VCardParser_V21;->parseOne(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Lcom/android/vcard/exception/VCardException;
    :try_start_5
    const-string v5, "Mms/VCardUtils"

    const-string v6, "parserVCardFile(): VCardException."

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    const v5, 0x7f0b00b7

    invoke-static {p0, v5}, Lcom/android/mms/util/VCardUtils;->toastErrorHappened(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    if-eqz v1, :cond_0

    .line 185
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    .local v0, e:Ljava/io/IOException;
    const-string v5, "Mms/VCardUtils"

    const-string v6, "parserVCardFile(): IOException when close."

    :goto_3
    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_7
    const-string v5, "Mms/VCardUtils"

    const-string v6, "parserVCardFile(): IOException."

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    const v5, 0x7f0b00b7

    invoke-static {p0, v5}, Lcom/android/mms/util/VCardUtils;->toastErrorHappened(Landroid/content/Context;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 184
    if-eqz v1, :cond_0

    .line 185
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 187
    :catch_3
    move-exception v0

    .line 188
    const-string v5, "Mms/VCardUtils"

    const-string v6, "parserVCardFile(): IOException when close."

    goto :goto_3

    .line 183
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 184
    if-eqz v1, :cond_2

    .line 185
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 183
    :cond_2
    :goto_4
    throw v4

    .line 187
    :catch_4
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/VCardUtils"

    const-string v6, "parserVCardFile(): IOException when close."

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/VCardUtils"

    const-string v5, "parserVCardFile(): IOException when close."

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/VCardUtils"

    const-string v6, "parserVCardFile(): IOException when close."

    goto :goto_3

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toastErrorHappened(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 463
    new-instance v0, Lcom/android/mms/util/VCardUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/VCardUtils$1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 471
    return-void
.end method
