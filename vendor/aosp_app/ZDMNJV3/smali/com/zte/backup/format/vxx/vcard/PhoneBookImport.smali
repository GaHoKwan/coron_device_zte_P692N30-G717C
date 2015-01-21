.class public Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;
.super Ljava/lang/Object;
.source "PhoneBookImport.java"


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private composer:Lcom/zte/backup/composer/Composer;

.field private context:Landroid/content/Context;

.field private mAccount:Landroid/accounts/Account;

.field private mCanceled:Z

.field mErrorFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mVCardParser_V21:Lcom/pim/vcard/VCardParser_V21;

.field private mVCardParser_V30:Lcom/pim/vcard/VCardParser_V30;

.field private vcardType:I


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "ImportVCardActivity"

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->LOG_TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->vcardType:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->composer:Lcom/zte/backup/composer/Composer;

    .line 52
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->composer:Lcom/zte/backup/composer/Composer;

    .line 53
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->context:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mResolver:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method

.method private addErrorFileNameToList(Landroid/net/Uri;Ljava/util/List;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, errorFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-void
.end method

.method private doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;ZLcom/pim/vcard/VCardSourceDetector;Ljava/util/List;)Z
    .locals 11
    .parameter "uri"
    .parameter "account"
    .parameter "charset"
    .parameter "showEntryParseProgress"
    .parameter "detector"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/pim/vcard/VCardSourceDetector;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    .local p6, errorFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "default"

    invoke-static {v1}, Lcom/pim/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->vcardType:I

    .line 200
    if-eqz p3, :cond_1

    .line 201
    new-instance v0, Lcom/pim/vcard/VCardEntryConstructor;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->vcardType:I

    iget-object v5, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mAccount:Landroid/accounts/Account;

    move-object v1, p3

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/pim/vcard/VCardEntryConstructor;-><init>(Ljava/lang/String;Ljava/lang/String;ZILandroid/accounts/Account;)V

    .line 206
    .local v0, builder:Lcom/pim/vcard/VCardEntryConstructor;
    :goto_0
    new-instance v9, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mAccount:Landroid/accounts/Account;

    iget v3, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->vcardType:I

    invoke-direct {v9, v1, v2, v3}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;I)V

    .line 207
    .local v9, committer:Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;
    invoke-virtual {v0, v9}, Lcom/pim/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/pim/vcard/VCardEntryHandler;)V

    .line 209
    if-eqz p4, :cond_0

    .line 210
    new-instance v1, Lcom/zte/backup/format/vxx/vcard/ProgressShower;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->composer:Lcom/zte/backup/composer/Composer;

    invoke-direct {v1, v2}, Lcom/zte/backup/format/vxx/vcard/ProgressShower;-><init>(Lcom/zte/backup/composer/Composer;)V

    invoke-virtual {v0, v1}, Lcom/pim/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/pim/vcard/VCardEntryHandler;)V

    .line 214
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, v0

    move-object/from16 v5, p5

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Lcom/pim/vcard/VCardSourceDetector;ZLjava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 215
    .local v8, bRet:Z
    if-nez v8, :cond_2

    .line 216
    const/4 v1, 0x0

    .line 222
    :goto_1
    return v1

    .line 203
    .end local v0           #builder:Lcom/pim/vcard/VCardEntryConstructor;
    .end local v8           #bRet:Z
    .end local v9           #committer:Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;
    :cond_1
    const-string p3, "iso-8859-1"

    .line 204
    new-instance v0, Lcom/pim/vcard/VCardEntryConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->vcardType:I

    iget-object v5, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mAccount:Landroid/accounts/Account;

    invoke-direct/range {v0 .. v5}, Lcom/pim/vcard/VCardEntryConstructor;-><init>(Ljava/lang/String;Ljava/lang/String;ZILandroid/accounts/Account;)V

    .restart local v0       #builder:Lcom/pim/vcard/VCardEntryConstructor;
    goto :goto_0

    .line 219
    .restart local v9       #committer:Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;
    :catch_0
    move-exception v10

    .line 220
    .local v10, e:Ljava/lang/Exception;
    throw v10

    .line 222
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v8       #bRet:Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private parseVCard(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Lcom/pim/vcard/VCardSourceDetector;Ljava/io/InputStream;)Z
    .locals 5
    .parameter "uri"
    .parameter "charset"
    .parameter "builder"
    .parameter "detector"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v3, Lcom/pim/vcard/VCardParser_V21;

    invoke-direct {v3, p4}, Lcom/pim/vcard/VCardParser_V21;-><init>(Lcom/pim/vcard/VCardSourceDetector;)V

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V21:Lcom/pim/vcard/VCardParser_V21;

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V21:Lcom/pim/vcard/VCardParser_V21;

    iget-boolean v4, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mCanceled:Z

    invoke-virtual {v3, p5, p2, p3, v4}, Lcom/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/pim/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    if-eqz p5, :cond_0

    .line 161
    :try_start_1
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 168
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 149
    :catch_0
    move-exception v1

    .line 151
    .local v1, e1:Lcom/pim/vcard/exception/VCardVersionException;
    :try_start_2
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 156
    :goto_2
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->parseVCard_V30(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p5

    .line 159
    if-eqz p5, :cond_0

    .line 161
    :try_start_4
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/IOException;
    goto :goto_1

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Lcom/pim/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v3

    .line 159
    if-eqz p5, :cond_1

    .line 161
    :try_start_5
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 167
    :cond_1
    throw v3

    .line 163
    :catch_2
    move-exception v0

    .line 164
    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_1

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 164
    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_1

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #e1:Lcom/pim/vcard/exception/VCardVersionException;
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method private parseVCard_V30(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;)Ljava/io/InputStream;
    .locals 4
    .parameter "uri"
    .parameter "charset"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 174
    instance-of v2, p3, Lcom/pim/vcard/VCardEntryConstructor;

    if-eqz v2, :cond_0

    move-object v2, p3

    .line 176
    check-cast v2, Lcom/pim/vcard/VCardEntryConstructor;

    invoke-virtual {v2}, Lcom/pim/vcard/VCardEntryConstructor;->clear()V

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 181
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lcom/pim/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/pim/vcard/VCardParser_V30;-><init>()V

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V30:Lcom/pim/vcard/VCardParser_V30;

    .line 182
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V30:Lcom/pim/vcard/VCardParser_V30;

    iget-boolean v3, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mCanceled:Z

    invoke-virtual {v2, v1, p2, p3, v3}, Lcom/pim/vcard/VCardParser_V30;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Z)V
    :try_end_0
    .catch Lcom/pim/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e2:Lcom/pim/vcard/exception/VCardVersionException;
    new-instance v2, Lcom/pim/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Lcom/pim/vcard/VCardSourceDetector;ZLjava/util/List;)Z
    .locals 9
    .parameter "uri"
    .parameter "charset"
    .parameter "builder"
    .parameter "detector"
    .parameter "throwNestedException"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/pim/vcard/VCardInterpreter;",
            "Lcom/pim/vcard/VCardSourceDetector;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardNestedException;,
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .local p6, errorFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .local v5, is:Ljava/io/InputStream;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->parseVCard(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Lcom/pim/vcard/VCardSourceDetector;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pim/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 138
    .end local v5           #is:Ljava/io/InputStream;
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v7

    .line 121
    .local v7, eq:Landroid/database/sqlite/SQLiteFullException;
    throw v7

    .line 123
    .end local v7           #eq:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v6

    .line 124
    .local v6, e:Ljava/io/IOException;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException was emitted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1, p6}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->addErrorFileNameToList(Landroid/net/Uri;Ljava/util/List;)V

    move v0, v8

    .line 127
    goto :goto_0

    .line 129
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 130
    .local v6, e:Lcom/pim/vcard/exception/VCardNotSupportedException;
    instance-of v0, v6, Lcom/pim/vcard/exception/VCardNestedException;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 131
    check-cast v6, Lcom/pim/vcard/exception/VCardNestedException;

    .end local v6           #e:Lcom/pim/vcard/exception/VCardNotSupportedException;
    throw v6

    .line 133
    .restart local v6       #e:Lcom/pim/vcard/exception/VCardNotSupportedException;
    :cond_0
    invoke-direct {p0, p1, p6}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->addErrorFileNameToList(Landroid/net/Uri;Ljava/util/List;)V

    move v0, v8

    .line 134
    goto :goto_0

    .line 136
    .end local v6           #e:Lcom/pim/vcard/exception/VCardNotSupportedException;
    :catch_3
    move-exception v6

    .line 137
    .local v6, e:Lcom/pim/vcard/exception/VCardException;
    invoke-direct {p0, p1, p6}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->addErrorFileNameToList(Landroid/net/Uri;Ljava/util/List;)V

    move v0, v8

    .line 138
    goto :goto_0
.end method


# virtual methods
.method public ReadVCF_Impr(Landroid/net/Uri;I)I
    .locals 22
    .parameter "mUri"
    .parameter "isDelete"

    .prologue
    .line 58
    const/16 v21, 0x0

    .line 60
    .local v21, result:Z
    if-nez p1, :cond_1

    .line 61
    const/16 v20, 0x2002

    .line 109
    :cond_0
    :goto_0
    return v20

    .line 64
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 65
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->deleteAllContact()I

    move-result v20

    .line 66
    .local v20, iResult:I
    const/16 v1, 0x2002

    move/from16 v0, v20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2003

    move/from16 v0, v20

    if-eq v0, v1, :cond_0

    .line 71
    .end local v20           #iResult:I
    :cond_2
    new-instance v8, Lcom/pim/vcard/VCardEntryCounter;

    invoke-direct {v8}, Lcom/pim/vcard/VCardEntryCounter;-><init>()V

    .line 72
    .local v8, counter:Lcom/pim/vcard/VCardEntryCounter;
    new-instance v9, Lcom/pim/vcard/VCardSourceDetector;

    invoke-direct {v9}, Lcom/pim/vcard/VCardSourceDetector;-><init>()V

    .line 73
    .local v9, detector:Lcom/pim/vcard/VCardSourceDetector;
    new-instance v4, Lcom/pim/vcard/VCardInterpreterCollection;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/pim/vcard/VCardInterpreter;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    .line 74
    aput-object v9, v1, v2

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/pim/vcard/VCardInterpreterCollection;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    .local v4, builderCollection:Lcom/pim/vcard/VCardInterpreterCollection;
    :try_start_1
    const-string v3, "iso-8859-1"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Lcom/pim/vcard/VCardSourceDetector;ZLjava/util/List;)Z
    :try_end_1
    .catch Lcom/pim/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v21

    .line 83
    :goto_1
    if-nez v21, :cond_3

    .line 84
    const/16 v20, 0x2002

    goto :goto_0

    .line 79
    :catch_0
    move-exception v18

    .line 80
    .local v18, e:Lcom/pim/vcard/exception/VCardNestedException;
    :try_start_2
    const-string v7, "iso-8859-1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Lcom/pim/vcard/VCardSourceDetector;ZLjava/util/List;)Z

    move-result v21

    goto :goto_1

    .line 86
    .end local v18           #e:Lcom/pim/vcard/exception/VCardNestedException;
    :cond_3
    invoke-virtual {v8}, Lcom/pim/vcard/VCardEntryCounter;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    .line 87
    const/16 v20, 0x2005

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v9}, Lcom/pim/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, charset:Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mErrorFileNameList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v15, v9

    invoke-direct/range {v10 .. v16}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;ZLcom/pim/vcard/VCardSourceDetector;Ljava/util/List;)Z

    move-result v17

    .line 92
    .local v17, bRet:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mCanceled:Z

    if-eqz v1, :cond_5

    .line 93
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mCanceled:Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    const/16 v20, 0x2003

    goto :goto_0

    .line 96
    :cond_5
    if-nez v17, :cond_6

    .line 97
    const/16 v20, 0x2002

    goto/16 :goto_0

    .line 100
    .end local v4           #builderCollection:Lcom/pim/vcard/VCardInterpreterCollection;
    .end local v8           #counter:Lcom/pim/vcard/VCardEntryCounter;
    .end local v9           #detector:Lcom/pim/vcard/VCardSourceDetector;
    .end local v13           #charset:Ljava/lang/String;
    .end local v17           #bRet:Z
    :catch_1
    move-exception v19

    .line 101
    .local v19, ex:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->LOG_TAG:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/16 v20, 0x2004

    goto/16 :goto_0

    .line 104
    .end local v19           #ex:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v18

    .line 105
    .local v18, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->LOG_TAG:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v20, 0x2002

    goto/16 :goto_0

    .line 109
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v4       #builderCollection:Lcom/pim/vcard/VCardInterpreterCollection;
    .restart local v8       #counter:Lcom/pim/vcard/VCardEntryCounter;
    .restart local v9       #detector:Lcom/pim/vcard/VCardSourceDetector;
    .restart local v13       #charset:Ljava/lang/String;
    .restart local v17       #bRet:Z
    :cond_6
    const/16 v20, 0x2001

    goto/16 :goto_0
.end method

.method public deleteAllContact()I
    .locals 10

    .prologue
    .line 243
    const/16 v9, 0x2002

    .line 244
    .local v9, ret:I
    const/4 v7, 0x0

    .line 247
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    .line 248
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 249
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    if-eqz v7, :cond_1

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DeleteAllContact  cancle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    if-eqz v7, :cond_2

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_2
    const/16 v0, 0x2003

    .line 275
    :goto_0
    return v0

    .line 258
    :cond_3
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, Id:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 262
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 250
    if-nez v0, :cond_0

    .line 265
    .end local v6           #Id:Ljava/lang/String;
    :cond_4
    const/16 v9, 0x2001

    .line 271
    if-eqz v7, :cond_5

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move v0, v9

    .line 275
    goto :goto_0

    .line 267
    :catch_0
    move-exception v8

    .line 268
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    if-eqz v7, :cond_5

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 270
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 271
    if-eqz v7, :cond_6

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_6
    throw v0
.end method

.method public stopImport()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 227
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V21:Lcom/pim/vcard/VCardParser_V21;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V21:Lcom/pim/vcard/VCardParser_V21;

    invoke-virtual {v0}, Lcom/pim/vcard/VCardParser_V21;->cancel()V

    .line 229
    iput-boolean v1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mCanceled:Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V30:Lcom/pim/vcard/VCardParser_V30;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mVCardParser_V30:Lcom/pim/vcard/VCardParser_V30;

    invoke-virtual {v0}, Lcom/pim/vcard/VCardParser_V30;->cancel()V

    .line 234
    iput-boolean v1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->mCanceled:Z

    .line 237
    :cond_1
    return-void
.end method
