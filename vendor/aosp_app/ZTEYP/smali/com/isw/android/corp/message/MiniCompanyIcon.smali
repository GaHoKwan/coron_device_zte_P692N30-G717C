.class public Lcom/isw/android/corp/message/MiniCompanyIcon;
.super Ljava/lang/Object;
.source "MiniCompanyIcon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCompanyIcon"

.field private static bConnecting:Z

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniCompanyIcon;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniCompanyIcon;->bConnecting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyIcon;->process()V

    return-void
.end method

.method public static companyDoticonExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "dotid"

    .prologue
    const/4 v0, 0x1

    .line 294
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static companyIconExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "iconid"

    .prologue
    const/4 v0, 0x1

    .line 260
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 261
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static downloadCompanyIcon(Ljava/lang/String;)Z
    .locals 24
    .parameter "localCompanyFile"

    .prologue
    .line 124
    const/16 v16, 0x1

    .line 125
    .local v16, res:Z
    const/4 v11, 0x0

    .line 126
    .local v11, fr:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 128
    .local v3, br:Ljava/io/BufferedReader;
    const-string v15, ""

    .line 129
    .local v15, iconid:Ljava/lang/String;
    const-string v14, ""

    .line 130
    .local v14, iconUrl:Ljava/lang/String;
    const-string v13, ""

    .line 131
    .local v13, iconLocalFile:Ljava/lang/String;
    const-string v19, ""

    .line 133
    .local v19, vip:Ljava/lang/String;
    const-string v8, ""

    .line 134
    .local v8, dotid:Ljava/lang/String;
    const-string v7, ""

    .line 135
    .local v7, dotUrl:Ljava/lang/String;
    const-string v6, ""

    .line 138
    .local v6, dotLocalFile:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->getCurrentCallRecord()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, currentCallRecord:Ljava/lang/String;
    const-string v20, "MiniCompanyIcon"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "localCompanyFile: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 143
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v11           #fr:Ljava/io/FileReader;
    .local v12, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 145
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 146
    .local v17, s:Ljava/lang/String;
    const/4 v2, 0x0

    .line 147
    .local v2, bDownloadFinish:Z
    :goto_0
    if-nez v17, :cond_3

    .line 229
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 230
    const/4 v11, 0x0

    .line 231
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 232
    const/4 v3, 0x0

    .line 242
    .end local v2           #bDownloadFinish:Z
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v17           #s:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v11, :cond_1

    .line 243
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    .line 245
    :cond_1
    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    .end local v5           #currentCallRecord:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    :cond_2
    :goto_1
    return v16

    .line 148
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v2       #bDownloadFinish:Z
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v5       #currentCallRecord:Ljava/lang/String;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fr:Ljava/io/FileReader;
    .restart local v17       #s:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v20, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 149
    .local v18, split:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 150
    const-string v19, "1"

    .line 151
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 152
    const/16 v20, 0x4

    aget-object v19, v18, v20

    .line 153
    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 154
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 166
    :cond_4
    const/16 v20, 0x3

    aget-object v15, v18, v20

    .line 168
    const/16 v20, 0x3b

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_5

    .line 169
    const/16 v20, 0x0

    .line 170
    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 169
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 173
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "an="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "adccompany="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 175
    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "model="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v22, " "

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 173
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 176
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 177
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 176
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 179
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 178
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 181
    invoke-static {v15}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-static {v15}, Lcom/isw/android/corp/message/MiniCompanyIcon;->companyIconExist(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 183
    invoke-static {v14, v13}, Lcom/isw/android/corp/http/WinksHttp;->downloadIconURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 184
    if-nez v2, :cond_6

    .line 185
    const/16 v16, 0x0

    .line 193
    :cond_6
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 194
    const/16 v20, 0x5

    aget-object v8, v18, v20

    .line 196
    const/16 v20, 0x3b

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_7

    .line 197
    const/16 v20, 0x0

    .line 198
    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 197
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 201
    :cond_7
    const-string v20, "s"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 202
    const-string v20, "p"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 204
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "an="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "adccompany="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 206
    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "model="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v22, " "

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 204
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 207
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 208
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 207
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-static {v8}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 212
    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 213
    invoke-static {v8}, Lcom/isw/android/corp/message/MiniCompanyIcon;->companyDoticonExist(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 215
    invoke-static {v7, v6}, Lcom/isw/android/corp/http/WinksHttp;->downloadIconURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 216
    if-nez v2, :cond_8

    .line 217
    const/16 v16, 0x0

    .line 227
    :cond_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v17

    goto/16 :goto_0

    .line 236
    .end local v2           #bDownloadFinish:Z
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v5           #currentCallRecord:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #split:[Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v9

    .line 237
    .local v9, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    const-string v20, "MiniCompanyIcon"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ex: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    if-eqz v11, :cond_9

    .line 243
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    .line 245
    :cond_9
    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 249
    :catch_1
    move-exception v9

    .line 250
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v20, "MiniCompanyIcon"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ex: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 242
    :goto_3
    if-eqz v11, :cond_a

    .line 243
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    .line 245
    :cond_a
    if-eqz v3, :cond_b

    .line 246
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 253
    :cond_b
    :goto_4
    throw v20

    .line 249
    :catch_2
    move-exception v9

    .line 250
    .restart local v9       #ex:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v21, "MiniCompanyIcon"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ex: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 249
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v5       #currentCallRecord:Ljava/lang/String;
    .restart local v10       #file:Ljava/io/File;
    :catch_3
    move-exception v9

    .line 250
    .restart local v9       #ex:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v20, "MiniCompanyIcon"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ex: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v20

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v20

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #bDownloadFinish:Z
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v17       #s:Ljava/lang/String;
    :catchall_3
    move-exception v20

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 236
    .end local v2           #bDownloadFinish:Z
    .end local v11           #fr:Ljava/io/FileReader;
    .end local v17           #s:Ljava/lang/String;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v9

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v9

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #bDownloadFinish:Z
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v17       #s:Ljava/lang/String;
    :catch_6
    move-exception v9

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private static isCallRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "currentCallRecord"
    .parameter "companyNumbers"

    .prologue
    .line 109
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, split:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 120
    .end local v0           #i:I
    .end local v1           #split:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 112
    .restart local v0       #i:I
    .restart local v1       #split:[Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const/4 v2, 0x1

    goto :goto_1

    .line 111
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static process()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 64
    sget-boolean v6, Lcom/isw/android/corp/message/MiniCompanyIcon;->bConnecting:Z

    if-eqz v6, :cond_0

    .line 65
    const-string v6, "MiniCompanyIcon"

    const-string v7, "Warning! bConnecting is true!"

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, bAllFinish:Z
    .local v1, bRes:Z
    .local v2, currentCompanyArr:[Ljava/lang/String;
    :goto_0
    return-void

    .line 70
    .end local v0           #bAllFinish:Z
    .end local v1           #bRes:Z
    .end local v2           #currentCompanyArr:[Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v6, Lcom/isw/android/corp/message/MiniCompanyIcon;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v7, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    const/4 v6, 0x1

    sput-boolean v6, Lcom/isw/android/corp/message/MiniCompanyIcon;->bConnecting:Z

    .line 73
    const-string v6, "localCompanyFile"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 74
    .restart local v2       #currentCompanyArr:[Ljava/lang/String;
    const/4 v1, 0x1

    .line 75
    .restart local v1       #bRes:Z
    const/4 v0, 0x1

    .line 76
    .restart local v0       #bAllFinish:Z
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    sget-object v6, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/isw/android/corp/util/InitFuncs;->initFS(Landroid/content/Context;)V

    .line 79
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v2

    if-lt v5, v6, :cond_3

    .line 89
    const-string v6, "lastCheckCompanyIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :cond_2
    sput-boolean v10, Lcom/isw/android/corp/message/MiniCompanyIcon;->bConnecting:Z

    goto :goto_0

    .line 80
    :cond_3
    :try_start_1
    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 82
    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isw/android/corp/message/MiniCompanyIcon;->downloadCompanyIcon(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 84
    const/4 v0, 0x0

    .line 79
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    .end local v5           #i:I
    :catch_0
    move-exception v4

    .line 94
    .local v4, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const-string v6, "MiniCompanyIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    sput-boolean v10, Lcom/isw/android/corp/message/MiniCompanyIcon;->bConnecting:Z

    goto/16 :goto_0

    .line 97
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 98
    .local v3, err:Ljava/lang/Error;
    :try_start_3
    const-string v6, "MiniCompanyIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "err: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    sput-boolean v10, Lcom/isw/android/corp/message/MiniCompanyIcon;->bConnecting:Z

    goto/16 :goto_0

    .line 100
    .end local v3           #err:Ljava/lang/Error;
    :catchall_0
    move-exception v6

    .line 101
    sput-boolean v10, Lcom/isw/android/corp/message/MiniCompanyIcon;->bConnecting:Z

    .line 102
    throw v6
.end method

.method public static update()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/WinksTools;->canDownload(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/isw/android/corp/message/MiniCompanyIcon$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniCompanyIcon$1;-><init>()V

    .line 58
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCompanyIcon$1;->start()V

    goto :goto_0
.end method
