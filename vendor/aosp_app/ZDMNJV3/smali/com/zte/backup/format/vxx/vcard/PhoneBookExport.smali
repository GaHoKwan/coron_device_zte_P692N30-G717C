.class public Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;
.super Ljava/lang/Object;
.source "PhoneBookExport.java"


# static fields
.field private static final ADD_PHONEBOOK_SIZE:I = 0x200

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneBookExport"

.field private static final PHONEBOOK_ITEM_SIZE:I = 0x1800


# instance fields
.field private composer:Lcom/zte/backup/composer/Composer;

.field private contactNumber:Ljava/lang/String;

.field private contactsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "composer"
    .parameter "number"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/backup/composer/Composer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->composer:Lcom/zte/backup/composer/Composer;

    .line 36
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactNumber:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactsID:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->context:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->composer:Lcom/zte/backup/composer/Composer;

    .line 45
    iput-object p2, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactNumber:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactsID:Ljava/util/List;

    .line 47
    return-void
.end method

.method private buildVcardComposer(Ljava/lang/String;)Lcom/pim/vcard/VCardComposer;
    .locals 5
    .parameter "BackUpPathAndName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, outputStream:Ljava/io/OutputStream;
    new-instance v1, Lcom/pim/vcard/VCardComposer;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->context:Landroid/content/Context;

    const/high16 v3, -0x4000

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 153
    .local v1, vcardComposer:Lcom/pim/vcard/VCardComposer;
    new-instance v2, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v0}, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;-><init>(Lcom/pim/vcard/VCardComposer;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Lcom/pim/vcard/VCardComposer;->addHandler(Lcom/pim/vcard/VCardComposer$OneEntryHandler;)V

    .line 154
    return-object v1
.end method

.method private getContactBackupNum()I
    .locals 9

    .prologue
    .line 237
    const/4 v8, 0x0

    .line 238
    .local v8, result:I
    const/4 v7, 0x0

    .line 239
    .local v7, idCur:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data1 =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 242
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 241
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 243
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v8, 0x1

    .line 249
    :cond_0
    if-eqz v7, :cond_1

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_1
    :goto_0
    return v8

    .line 246
    :catch_0
    move-exception v6

    .line 247
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v7, :cond_1

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 248
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 249
    if-eqz v7, :cond_2

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_2
    throw v0
.end method

.method private getContactRawID()Ljava/lang/String;
    .locals 9

    .prologue
    .line 257
    const-string v6, ""

    .line 258
    .local v6, contactId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 259
    .local v8, idCur:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data1 =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 262
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "raw_contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 269
    :cond_0
    if-eqz v8, :cond_1

    .line 270
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_1
    :goto_0
    return-object v6

    .line 266
    :catch_0
    move-exception v7

    .line 267
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    if-eqz v8, :cond_1

    .line 270
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 268
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 269
    if-eqz v8, :cond_2

    .line 270
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_2
    throw v0
.end method

.method private getSelectionByContactsID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " IN ( 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    .local v1, inSelectionBff:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactsID:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, selection:Ljava/lang/String;
    return-object v2

    .line 107
    .end local v2           #selection:Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, id:Ljava/lang/String;
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseEntrybyComposer(Lcom/pim/vcard/VCardComposer;)I
    .locals 1
    .parameter "vcardComposer"

    .prologue
    .line 133
    :goto_0
    invoke-virtual {p1}, Lcom/pim/vcard/VCardComposer;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/16 v0, 0x2001

    :goto_1
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const/16 v0, 0x2003

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/pim/vcard/VCardComposer;->createOneEntry()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    const/16 v0, 0x2002

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    goto :goto_0
.end method

.method private setTotalCount(Lcom/pim/vcard/VCardComposer;)I
    .locals 2
    .parameter "vcardComposer"

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/pim/vcard/VCardComposer;->getCount()I

    move-result v0

    .line 122
    .local v0, count:I
    if-nez v0, :cond_0

    .line 123
    const/16 v1, 0x2005

    .line 125
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x2001

    goto :goto_0
.end method


# virtual methods
.method public WriteVCF_Exp(Ljava/lang/String;)I
    .locals 11
    .parameter "str"

    .prologue
    const/16 v5, 0x2002

    const/16 v8, 0x2001

    .line 50
    const/4 v7, 0x0

    .line 52
    .local v7, vcardComposer:Lcom/pim/vcard/VCardComposer;
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->getPhoneBookItemNum()I

    move-result v9

    if-nez v9, :cond_1

    .line 53
    const/16 v4, 0x2005

    .line 92
    :cond_0
    :goto_0
    return v4

    .line 56
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->buildVcardComposer(Ljava/lang/String;)Lcom/pim/vcard/VCardComposer;

    move-result-object v7

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, bVcardComposerInit:Z
    iget-object v9, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactNumber:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 59
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->getContactRawID()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, contactId:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 67
    .end local v1           #contactId:Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_5

    .line 68
    const-string v8, "PhoneBookExport"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "initialization of vCard composer failed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    if-eqz v7, :cond_2

    .line 89
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->terminate()V

    :cond_2
    move v4, v5

    .line 69
    goto :goto_0

    .line 61
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactsID:Ljava/util/List;

    if-eqz v9, :cond_4

    .line 62
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->getSelectionByContactsID()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, selection:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Lcom/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 65
    .end local v6           #selection:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->init()Z

    move-result v0

    goto :goto_1

    .line 72
    :cond_5
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->setTotalCount(Lcom/pim/vcard/VCardComposer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 73
    .local v4, iRet:I
    if-eq v8, v4, :cond_6

    .line 88
    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->terminate()V

    goto :goto_0

    .line 76
    :cond_6
    :try_start_2
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->parseEntrybyComposer(Lcom/pim/vcard/VCardComposer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 77
    .local v5, ret:I
    if-eq v8, v5, :cond_b

    .line 88
    if-eqz v7, :cond_7

    .line 89
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->terminate()V

    :cond_7
    move v4, v5

    .line 78
    goto :goto_0

    .line 81
    .end local v0           #bVcardComposerInit:Z
    .end local v4           #iRet:I
    .end local v5           #ret:I
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "PhoneBookExport"

    const-string v9, "could_not_open_file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    if-eqz v7, :cond_8

    .line 89
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->terminate()V

    :cond_8
    move v4, v5

    .line 83
    goto :goto_0

    .line 84
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 85
    .local v3, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v8, "PhoneBookExport"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    if-eqz v7, :cond_9

    .line 89
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->terminate()V

    :cond_9
    move v4, v5

    .line 86
    goto/16 :goto_0

    .line 87
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 88
    if-eqz v7, :cond_a

    .line 89
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->terminate()V

    .line 91
    :cond_a
    throw v8

    .line 88
    .restart local v0       #bVcardComposerInit:Z
    .restart local v4       #iRet:I
    .restart local v5       #ret:I
    :cond_b
    if-eqz v7, :cond_c

    .line 89
    invoke-virtual {v7}, Lcom/pim/vcard/VCardComposer;->terminate()V

    :cond_c
    move v4, v8

    .line 92
    goto/16 :goto_0
.end method

.method public getBackupDataSize()J
    .locals 5

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, iCntNum:I
    const/4 v0, 0x0

    .line 223
    .local v0, iBackupSpace:I
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->getPhoneBookItemNum()I

    move-result v1

    .line 224
    const-string v2, "backup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetPhoneBookItemNum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-lez v1, :cond_0

    .line 226
    add-int/lit16 v0, v0, 0x200

    .line 227
    :cond_0
    mul-int/lit16 v2, v1, 0x1800

    add-int/2addr v0, v2

    .line 228
    int-to-long v2, v0

    return-wide v2
.end method

.method public getPhoneBookItemNum()I
    .locals 9

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->getContactBackupNum()I

    move-result v6

    .line 181
    :cond_0
    :goto_0
    return v6

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactsID:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->contactsID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    .line 163
    :cond_2
    const/4 v6, 0x0

    .line 164
    .local v6, count:I
    const/4 v8, 0x0

    .line 166
    .local v8, myCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 168
    if-eqz v8, :cond_3

    .line 169
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 170
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_3
    if-eqz v8, :cond_0

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 173
    :catch_0
    move-exception v7

    .line 174
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PhoneBookExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    const/4 v6, 0x0

    .line 177
    if-eqz v8, :cond_0

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 176
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 177
    if-eqz v8, :cond_4

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_4
    throw v0
.end method
