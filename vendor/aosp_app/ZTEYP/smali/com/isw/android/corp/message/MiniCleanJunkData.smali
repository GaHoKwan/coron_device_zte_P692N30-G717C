.class public Lcom/isw/android/corp/message/MiniCleanJunkData;
.super Ljava/lang/Object;
.source "MiniCleanJunkData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCleanJunkData"

.field private static bActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniCleanJunkData;->bActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/isw/android/corp/message/MiniCleanJunkData;->process()V

    return-void
.end method

.method private static checkCallCahce(Ljava/util/Vector;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v9, "MiniCleanJunkData"

    const-string v10, "check call icon..."

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 251
    .local v8, validList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    sget-object v9, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 253
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 254
    .local v5, list:[Ljava/io/File;
    const/4 v7, 0x0

    .line 255
    .local v7, sub:[Ljava/lang/String;
    const-string v0, ""

    .line 256
    .local v0, content:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 257
    const-string v1, ""

    .line 258
    .local v1, dotid:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v5

    if-lt v3, v9, :cond_3

    .line 277
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #dotid:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #list:[Ljava/io/File;
    .end local v7           #sub:[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    sget-object v9, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 279
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 280
    .restart local v5       #list:[Ljava/io/File;
    const-string v6, ""

    .line 281
    .local v6, name:Ljava/lang/String;
    const-string v4, ""

    .line 282
    .local v4, iconid:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 283
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v9, v5

    if-lt v3, v9, :cond_7

    .line 299
    .end local v3           #i:I
    .end local v4           #iconid:Ljava/lang/String;
    .end local v5           #list:[Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    sget-object v9, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 302
    .restart local v5       #list:[Ljava/io/File;
    const-string v6, ""

    .line 303
    .restart local v6       #name:Ljava/lang/String;
    const-string v1, ""

    .line 304
    .restart local v1       #dotid:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 305
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v9, v5

    if-lt v3, v9, :cond_9

    .line 319
    .end local v1           #dotid:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #list:[Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    return-void

    .line 259
    .restart local v0       #content:Ljava/lang/String;
    .restart local v1       #dotid:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #list:[Ljava/io/File;
    .restart local v7       #sub:[Ljava/lang/String;
    :cond_3
    aget-object v9, v5, v3

    invoke-static {v9}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 261
    array-length v9, v7

    const/4 v10, 0x3

    if-lt v9, v10, :cond_4

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-static {v9}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 262
    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_4
    array-length v9, v7

    const/4 v10, 0x4

    if-lt v9, v10, :cond_6

    .line 266
    const/4 v9, 0x3

    aget-object v1, v7, v9

    .line 267
    const/16 v9, 0x3b

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_5

    .line 268
    const/4 v9, 0x0

    const/16 v10, 0x3b

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #dotid:Ljava/lang/String;
    .end local v7           #sub:[Ljava/lang/String;
    .restart local v4       #iconid:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    :cond_7
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 285
    if-eqz v6, :cond_8

    const/16 v9, 0x2e

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_8

    .line 286
    const/4 v9, 0x0

    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {v8, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 288
    const-string v9, "MiniCleanJunkData"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Delete call icon: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 283
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 306
    .end local v4           #iconid:Ljava/lang/String;
    .restart local v1       #dotid:Ljava/lang/String;
    :cond_9
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 307
    if-eqz v6, :cond_a

    const/16 v9, 0x2e

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_a

    .line 308
    const/4 v9, 0x0

    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {p0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 310
    const-string v9, "MiniCleanJunkData"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Delete dot icon: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 305
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public static deleteCompanyIcon(Ljava/lang/String;)V
    .locals 3
    .parameter "iconid"

    .prologue
    .line 219
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 233
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static process()V
    .locals 29

    .prologue
    .line 59
    sget-boolean v25, Lcom/isw/android/corp/message/MiniCleanJunkData;->bActive:Z

    if-eqz v25, :cond_0

    .line 60
    const-string v25, "MiniCleanJunkData"

    const-string v26, "Warning! bActive is true!"

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v21, localCompanyTs:Ljava/lang/String;
    :goto_0
    return-void

    .line 64
    .end local v21           #localCompanyTs:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->getConnection()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 65
    const-string v25, "MiniCleanJunkData"

    const-string v26, "Warning! bMiniCompanyData Connecting is true!"

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    const/16 v25, 0x1

    :try_start_0
    sput-boolean v25, Lcom/isw/android/corp/message/MiniCleanJunkData;->bActive:Z

    .line 71
    const-string v25, "localCompanyTs"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 73
    .restart local v21       #localCompanyTs:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 74
    new-instance v8, Ljava/io/File;

    sget-object v25, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v8, dir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 76
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    .line 77
    .local v19, list:[Ljava/io/File;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_2

    .line 78
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_4

    .line 91
    .end local v8           #dir:Ljava/io/File;
    .end local v16           #i:I
    .end local v19           #list:[Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 92
    .local v3, activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 94
    .local v4, availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    sget-object v25, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v8       #dir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 96
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v19

    .line 97
    .local v19, list:[Ljava/lang/String;
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_3

    .line 99
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 100
    .local v22, localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v18, ""

    .line 101
    .local v18, id:Ljava/lang/String;
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_6

    .line 110
    const-string v25, "localCompanyFile"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, currentCompanyArr:[Ljava/lang/String;
    const-string v20, ""

    .line 113
    .local v20, localCompanyFile:Ljava/lang/String;
    const/16 v16, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    .line 188
    const/16 v16, 0x0

    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_14

    .line 195
    const/16 v22, 0x0

    .line 196
    const/4 v3, 0x0

    .line 200
    .end local v7           #currentCompanyArr:[Ljava/lang/String;
    .end local v16           #i:I
    .end local v18           #id:Ljava/lang/String;
    .end local v19           #list:[Ljava/lang/String;
    .end local v20           #localCompanyFile:Ljava/lang/String;
    .end local v22           #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_3
    invoke-static {v4}, Lcom/isw/android/corp/message/MiniCleanJunkData;->checkCallCahce(Ljava/util/Vector;)V

    .line 204
    const-string v25, "lastCleanJunkData"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    new-instance v27, Ljava/util/Date;

    invoke-direct/range {v27 .. v27}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 204
    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 214
    const/16 v25, 0x0

    sput-boolean v25, Lcom/isw/android/corp/message/MiniCleanJunkData;->bActive:Z

    goto/16 :goto_0

    .line 79
    .end local v3           #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v4           #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v16       #i:I
    .local v19, list:[Ljava/io/File;
    :cond_4
    :try_start_1
    aget-object v25, v19, v16

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 80
    .local v13, fileName:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 81
    const-string v25, "MiniCleanJunkData"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "delete file "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    aget-object v27, v19, v16

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 81
    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    aget-object v25, v19, v16

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 78
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 102
    .end local v13           #fileName:Ljava/lang/String;
    .restart local v3       #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v4       #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v18       #id:Ljava/lang/String;
    .local v19, list:[Ljava/lang/String;
    .restart local v22       #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_6
    aget-object v25, v19, v16

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_7

    .line 103
    aget-object v25, v19, v16

    const/16 v26, 0x0

    aget-object v27, v19, v16

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 104
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 114
    .restart local v7       #currentCompanyArr:[Ljava/lang/String;
    .restart local v20       #localCompanyFile:Ljava/lang/String;
    :cond_8
    new-instance v25, Ljava/lang/StringBuilder;

    sget-object v26, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 115
    aget-object v26, v7, v16

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 114
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v20

    .line 116
    const/4 v14, 0x0

    .line 117
    .local v14, fr:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 119
    .local v5, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v17, ""

    .line 120
    .local v17, iconid:Ljava/lang/String;
    const-string v9, ""

    .line 121
    .local v9, dotid:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 123
    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .end local v14           #fr:Ljava/io/FileReader;
    .local v15, fr:Ljava/io/FileReader;
    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 125
    .end local v5           #br:Ljava/io/BufferedReader;
    .local v6, br:Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .line 127
    .local v23, s:Ljava/lang/String;
    :goto_5
    if-nez v23, :cond_c

    .line 155
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 156
    const/4 v14, 0x0

    .line 157
    .end local v15           #fr:Ljava/io/FileReader;
    .restart local v14       #fr:Ljava/io/FileReader;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 158
    const/4 v5, 0x0

    .line 167
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v23           #s:Ljava/lang/String;
    .restart local v5       #br:Ljava/io/BufferedReader;
    :cond_9
    if-eqz v14, :cond_a

    .line 168
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_a
    if-eqz v5, :cond_b

    .line 171
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3

    .line 113
    .end local v9           #dotid:Ljava/lang/String;
    .end local v12           #file:Ljava/io/File;
    .end local v17           #iconid:Ljava/lang/String;
    :cond_b
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 128
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v14           #fr:Ljava/io/FileReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v9       #dotid:Ljava/lang/String;
    .restart local v12       #file:Ljava/io/File;
    .restart local v15       #fr:Ljava/io/FileReader;
    .restart local v17       #iconid:Ljava/lang/String;
    .restart local v23       #s:Ljava/lang/String;
    :cond_c
    :try_start_7
    const-string v25, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 129
    .local v24, split:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e

    .line 130
    const/16 v25, 0x3

    aget-object v17, v24, v25

    .line 131
    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    if-ltz v25, :cond_d

    .line 132
    const/16 v25, 0x0

    .line 133
    const/16 v26, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 132
    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 135
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 136
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_e
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_10

    .line 142
    const/16 v25, 0x5

    aget-object v9, v24, v25

    .line 143
    const/16 v25, 0x3b

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    if-ltz v25, :cond_f

    .line 144
    const/16 v25, 0x0

    .line 145
    const/16 v26, 0x3b

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 144
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 147
    :cond_f
    invoke-virtual {v4, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 148
    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_10
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v23

    goto/16 :goto_5

    .line 161
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v9           #dotid:Ljava/lang/String;
    .end local v12           #file:Ljava/io/File;
    .end local v15           #fr:Ljava/io/FileReader;
    .end local v17           #iconid:Ljava/lang/String;
    .end local v23           #s:Ljava/lang/String;
    .end local v24           #split:[Ljava/lang/String;
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v14       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v11

    .line 162
    .local v11, ex:Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string v25, "MiniCleanJunkData"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "ex: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 167
    if-eqz v14, :cond_11

    .line 168
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_11
    if-eqz v5, :cond_b

    .line 171
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_6

    .line 174
    :catch_1
    move-exception v11

    .line 175
    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string v25, "MiniCleanJunkData"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "ex: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_6

    .line 207
    .end local v3           #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v4           #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v7           #currentCompanyArr:[Ljava/lang/String;
    .end local v8           #dir:Ljava/io/File;
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v14           #fr:Ljava/io/FileReader;
    .end local v16           #i:I
    .end local v18           #id:Ljava/lang/String;
    .end local v19           #list:[Ljava/lang/String;
    .end local v20           #localCompanyFile:Ljava/lang/String;
    .end local v22           #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_2
    move-exception v11

    .line 208
    .restart local v11       #ex:Ljava/lang/Exception;
    :try_start_b
    const-string v25, "MiniCleanJunkData"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "ex: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 214
    const/16 v25, 0x0

    sput-boolean v25, Lcom/isw/android/corp/message/MiniCleanJunkData;->bActive:Z

    goto/16 :goto_0

    .line 165
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v3       #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v4       #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v7       #currentCompanyArr:[Ljava/lang/String;
    .restart local v8       #dir:Ljava/io/File;
    .restart local v14       #fr:Ljava/io/FileReader;
    .restart local v16       #i:I
    .restart local v18       #id:Ljava/lang/String;
    .restart local v19       #list:[Ljava/lang/String;
    .restart local v20       #localCompanyFile:Ljava/lang/String;
    .restart local v22       #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catchall_0
    move-exception v25

    .line 167
    :goto_8
    if-eqz v14, :cond_12

    .line 168
    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_12
    if-eqz v5, :cond_13

    .line 171
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_3

    .line 178
    :cond_13
    :goto_9
    :try_start_d
    throw v25
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_3

    .line 210
    .end local v3           #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v4           #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v7           #currentCompanyArr:[Ljava/lang/String;
    .end local v8           #dir:Ljava/io/File;
    .end local v14           #fr:Ljava/io/FileReader;
    .end local v16           #i:I
    .end local v18           #id:Ljava/lang/String;
    .end local v19           #list:[Ljava/lang/String;
    .end local v20           #localCompanyFile:Ljava/lang/String;
    .end local v22           #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_3
    move-exception v10

    .line 211
    .local v10, err:Ljava/lang/Error;
    :try_start_e
    const-string v25, "MiniCleanJunkData"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "err: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 214
    const/16 v25, 0x0

    sput-boolean v25, Lcom/isw/android/corp/message/MiniCleanJunkData;->bActive:Z

    goto/16 :goto_0

    .line 174
    .end local v10           #err:Ljava/lang/Error;
    .restart local v3       #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v4       #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v7       #currentCompanyArr:[Ljava/lang/String;
    .restart local v8       #dir:Ljava/io/File;
    .restart local v14       #fr:Ljava/io/FileReader;
    .restart local v16       #i:I
    .restart local v18       #id:Ljava/lang/String;
    .restart local v19       #list:[Ljava/lang/String;
    .restart local v20       #localCompanyFile:Ljava/lang/String;
    .restart local v22       #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_4
    move-exception v11

    .line 175
    .restart local v11       #ex:Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string v26, "MiniCleanJunkData"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "ex: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_9

    .line 213
    .end local v3           #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v4           #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v7           #currentCompanyArr:[Ljava/lang/String;
    .end local v8           #dir:Ljava/io/File;
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v14           #fr:Ljava/io/FileReader;
    .end local v16           #i:I
    .end local v18           #id:Ljava/lang/String;
    .end local v19           #list:[Ljava/lang/String;
    .end local v20           #localCompanyFile:Ljava/lang/String;
    .end local v22           #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catchall_1
    move-exception v25

    .line 214
    const/16 v26, 0x0

    sput-boolean v26, Lcom/isw/android/corp/message/MiniCleanJunkData;->bActive:Z

    .line 215
    throw v25

    .line 174
    .restart local v3       #activeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v4       #availableDot:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v7       #currentCompanyArr:[Ljava/lang/String;
    .restart local v8       #dir:Ljava/io/File;
    .restart local v9       #dotid:Ljava/lang/String;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #fr:Ljava/io/FileReader;
    .restart local v16       #i:I
    .restart local v17       #iconid:Ljava/lang/String;
    .restart local v18       #id:Ljava/lang/String;
    .restart local v19       #list:[Ljava/lang/String;
    .restart local v20       #localCompanyFile:Ljava/lang/String;
    .restart local v22       #localVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_5
    move-exception v11

    .line 175
    .restart local v11       #ex:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string v25, "MiniCleanJunkData"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "ex: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 191
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v9           #dotid:Ljava/lang/String;
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v12           #file:Ljava/io/File;
    .end local v14           #fr:Ljava/io/FileReader;
    .end local v17           #iconid:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    .line 192
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/isw/android/corp/message/MiniCleanJunkData;->deleteCompanyIcon(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_3

    .line 188
    :cond_15
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 165
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v9       #dotid:Ljava/lang/String;
    .restart local v12       #file:Ljava/io/File;
    .restart local v15       #fr:Ljava/io/FileReader;
    .restart local v17       #iconid:Ljava/lang/String;
    :catchall_2
    move-exception v25

    move-object v14, v15

    .end local v15           #fr:Ljava/io/FileReader;
    .restart local v14       #fr:Ljava/io/FileReader;
    goto/16 :goto_8

    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v14           #fr:Ljava/io/FileReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v15       #fr:Ljava/io/FileReader;
    :catchall_3
    move-exception v25

    move-object v5, v6

    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15           #fr:Ljava/io/FileReader;
    .restart local v14       #fr:Ljava/io/FileReader;
    goto/16 :goto_8

    .end local v5           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v23       #s:Ljava/lang/String;
    :catchall_4
    move-exception v25

    move-object v5, v6

    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 161
    .end local v14           #fr:Ljava/io/FileReader;
    .end local v23           #s:Ljava/lang/String;
    .restart local v15       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v11

    move-object v14, v15

    .end local v15           #fr:Ljava/io/FileReader;
    .restart local v14       #fr:Ljava/io/FileReader;
    goto/16 :goto_7

    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v14           #fr:Ljava/io/FileReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v15       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v11

    move-object v5, v6

    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15           #fr:Ljava/io/FileReader;
    .restart local v14       #fr:Ljava/io/FileReader;
    goto/16 :goto_7

    .end local v5           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v23       #s:Ljava/lang/String;
    :catch_8
    move-exception v11

    move-object v5, v6

    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    goto/16 :goto_7
.end method

.method public static update()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/isw/android/corp/message/MiniCleanJunkData$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniCleanJunkData$1;-><init>()V

    .line 53
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCleanJunkData$1;->start()V

    .line 54
    return-void
.end method
