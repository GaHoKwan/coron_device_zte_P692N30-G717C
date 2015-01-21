.class public Lcom/android/mms/ui/VCardAttachment;
.super Ljava/lang/Object;
.source "VCardAttachment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TextVCardContact"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVCardFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mVCardFileName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mName:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mNumbers:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mEmails:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mOrganizations:Ljava/util/List;

    .line 98
    iput-object p1, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private createVCardFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 328
    const-string v0, ".vcf"

    .line 330
    .local v0, fileExtension:Ljava/lang/String;
    const-string v2, "yyyyMMdd_hhmmss"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getVCardFileNameForIpMessage([J)Ljava/lang/String;
    .locals 12
    .parameter "contactIds"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 369
    const-string v0, "Mms/TextVCardContact"

    const-string v1, "getVCardFileNameForIpMessage()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v9, ""

    .line 371
    .local v9, fileName:Ljava/lang/String;
    array-length v0, p1

    if-ne v0, v11, :cond_3

    .line 372
    aget-wide v6, p1, v10

    .line 373
    .local v6, contactId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "mimetype"

    aput-object v4, v2, v10

    const-string v4, "data1"

    aput-object v4, v2, v11

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 380
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 382
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    const-string v0, "vnd.android.cursor.item/name"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 388
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 394
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #contactId:J
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    const/16 v1, 0xaf

    new-array v2, v11, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method


# virtual methods
.method public attachVCard(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .parameter "mContactIds"
    .parameter "isAddingIpMessageVCardFile"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 282
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 323
    :goto_0
    return-object v3

    .line 284
    :cond_1
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/VCardAttachment;->mVCardFileName:Ljava/lang/String;

    .line 286
    .local v3, fileName:Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 287
    .local v0, composer:Lcom/android/vcard/VCardComposer;
    const/4 v4, 0x0

    .line 289
    .local v4, writer:Ljava/io/Writer;
    if-eqz p2, :cond_6

    .line 290
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local v4           #writer:Ljava/io/Writer;
    .local v5, writer:Ljava/io/Writer;
    move-object v4, v5

    .line 296
    .end local v5           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    :goto_2
    new-instance v1, Lcom/android/vcard/VCardComposer;

    iget-object v6, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .local v1, composer:Lcom/android/vcard/VCardComposer;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 299
    new-instance v6, Lcom/android/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Canot initialize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    :goto_3
    if-eqz v0, :cond_2

    .line 306
    :try_start_2
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 308
    :cond_2
    if-eqz v4, :cond_3

    .line 309
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 305
    :cond_3
    throw v6
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, e:Lcom/android/vcard/exception/VCardException;
    :goto_4
    const-string v6, "Mms/TextVCardContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "export vcard file, vcard exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .end local v2           #e:Lcom/android/vcard/exception/VCardException;
    :cond_4
    :goto_5
    const-string v6, "Mms/TextVCardContact"

    const-string v7, "write vCard file done!"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #writer:Ljava/io/Writer;
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/VCardAttachment;->createVCardFileName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 293
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #writer:Ljava/io/Writer;
    :cond_6
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4           #writer:Ljava/io/Writer;
    .restart local v5       #writer:Ljava/io/Writer;
    move-object v4, v5

    .end local v5           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    goto/16 :goto_2

    .line 301
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    :cond_7
    :goto_6
    :try_start_4
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_8

    .line 302
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 314
    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    :catch_1
    move-exception v2

    .line 315
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_7
    const-string v6, "Mms/TextVCardContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "export vcard file, file not found exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 316
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 317
    .local v2, e:Ljava/io/IOException;
    :goto_8
    const-string v6, "Mms/TextVCardContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "export vcard file, IO exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 318
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/Exception;
    :goto_9
    const-string v6, "Mms/TextVCardContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "export vcard file, exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 305
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    :cond_8
    if-eqz v1, :cond_9

    .line 306
    :try_start_5
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 308
    :cond_9
    if-eqz v4, :cond_4

    .line 309
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    .line 312
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_4

    .line 318
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_9

    .line 316
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_8

    .line 314
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_7

    .line 305
    :catchall_1
    move-exception v6

    goto/16 :goto_3
.end method

.method public getTextVCardString([JLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "contactsIds"
    .parameter "textVCard"

    .prologue
    .line 165
    const-string v1, "Mms/TextVCardContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contactsIds.length() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .local v13, sb:Ljava/lang/StringBuilder;
    move-object/from16 v7, p1

    .local v7, arr$:[J
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_1

    aget-wide v8, v7, v11

    .line 170
    .local v8, contactId:J
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v5, p1, v1

    cmp-long v1, v8, v5

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 176
    .end local v8           #contactId:J
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, selection:Ljava/lang/String;
    const-string v1, "Mms/TextVCardContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compose.addTextVCard(): selection = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "content://com.android.contacts/data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 180
    .local v2, dataUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contact_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "mimetype"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "data1"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "sort_key, contact_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 187
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 188
    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/android/mms/ui/VCardAttachment;->getVCardString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object/from16 v14, p2

    .line 198
    .end local p2
    .local v14, textVCard:Ljava/lang/String;
    :goto_2
    return-object v14

    .end local v14           #textVCard:Ljava/lang/String;
    .restart local p2
    :cond_2
    move-object/from16 v14, p2

    .end local p2
    .restart local v14       #textVCard:Ljava/lang/String;
    goto :goto_2
.end method

.method public getVCardFileNameByContactsId([JZ)Ljava/lang/String;
    .locals 7
    .parameter "contactsIds"
    .parameter "isAddingIpMessageVCardFile"

    .prologue
    .line 256
    const-string v4, "Mms/TextVCardContact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVCardFileNameByContactsId(): isAddingIpMessageVCardFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, contactsIdsStr:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 260
    aget-wide v4, p1, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, p1, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, ids:Ljava/lang/String;
    const-string v1, ""

    .line 266
    .local v1, fileName:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 267
    if-eqz p2, :cond_1

    .line 268
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VCardAttachment;->getVCardFileNameForIpMessage([J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/VCardAttachment;->mVCardFileName:Ljava/lang/String;

    .line 270
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/android/mms/ui/VCardAttachment;->attachVCard(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_2
    return-object v1
.end method

.method public getVCardFileNameByUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    .line 338
    if-nez p1, :cond_1

    .line 339
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 364
    :cond_0
    :goto_0
    return-object v2

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/VCardAttachment;->createVCardFileName()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, filename:Ljava/lang/String;
    const/4 v3, 0x0

    .line 344
    .local v3, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 346
    .local v4, out:Ljava/io/OutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 347
    iget-object v6, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 348
    const/16 v6, 0x1fa0

    new-array v0, v6, [B

    .line 349
    .local v0, buf:[B
    const/4 v5, 0x0

    .line 350
    .local v5, size:I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 351
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 354
    .end local v0           #buf:[B
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_2

    .line 355
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_2
    if-eqz v4, :cond_3

    .line 358
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 354
    :cond_3
    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Mms/TextVCardContact"

    const-string v7, "exception getVCardFileNameByUri "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 354
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buf:[B
    .restart local v5       #size:I
    :cond_4
    if-eqz v3, :cond_5

    .line 355
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_5
    if-eqz v4, :cond_0

    .line 358
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public getVCardString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "cursor"
    .parameter "textVCard"

    .prologue
    .line 204
    const/4 v5, 0x0

    .line 205
    .local v5, dataContactId:I
    const/4 v6, 0x1

    .line 206
    .local v6, dataMimeType:I
    const/4 v7, 0x2

    .line 207
    .local v7, dataString:I
    const-wide/16 v3, 0x0

    .line 208
    .local v3, contactId:J
    const-wide/16 v1, 0x0

    .line 209
    .local v1, contactCurrentId:J
    const/4 v8, 0x1

    .line 211
    .local v8, i:I
    new-instance v11, Lcom/android/mms/ui/VCardAttachment;

    iget-object v12, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/mms/ui/VCardAttachment;-><init>(Landroid/content/Context;)V

    .line 212
    .local v11, tvc:Lcom/android/mms/ui/VCardAttachment;
    const/4 v9, 0x0

    .line 213
    .local v9, j:I
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 214
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 215
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, mimeType:Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-nez v12, :cond_1

    .line 217
    move-wide v1, v3

    .line 221
    :cond_1
    cmp-long v12, v3, v1

    if-eqz v12, :cond_2

    .line 222
    move-wide v1, v3

    .line 223
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/mms/ui/VCardAttachment;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-virtual {v11}, Lcom/android/mms/ui/VCardAttachment;->reset()V

    .line 228
    :cond_2
    const-string v12, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 229
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/mms/ui/VCardAttachment;->mName:Ljava/lang/String;

    .line 231
    :cond_3
    const-string v12, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 232
    iget-object v12, v11, Lcom/android/mms/ui/VCardAttachment;->mNumbers:Ljava/util/List;

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_4
    const-string v12, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 235
    iget-object v12, v11, Lcom/android/mms/ui/VCardAttachment;->mEmails:Ljava/util/List;

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_5
    const-string v12, "vnd.android.cursor.item/organization"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 238
    iget-object v12, v11, Lcom/android/mms/ui/VCardAttachment;->mOrganizations:Ljava/util/List;

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 242
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/mms/ui/VCardAttachment;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 244
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 245
    rem-int/lit8 v12, v9, 0xa

    if-nez v12, :cond_0

    .line 246
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v13

    if-le v12, v13, :cond_0

    .line 251
    .end local v10           #mimeType:Ljava/lang/String;
    :cond_8
    const-string v12, "Mms/TextVCardContact"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "textVCard= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object p2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mName:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mEmails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/VCardAttachment;->mOrganizations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    const v14, 0x7f0b007f

    const v13, 0x7f0b007e

    const v12, 0x7f0b007d

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 110
    const-string v6, ""

    .line 111
    .local v6, textVCardString:Ljava/lang/String;
    const/4 v2, 0x1

    .line 112
    .local v2, i:I
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    const v9, 0x7f0b007c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mNumbers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 116
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mNumbers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v11, :cond_3

    .line 117
    const/4 v2, 0x1

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mNumbers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 121
    .local v4, number:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mEmails:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 131
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mEmails:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v11, :cond_6

    .line 132
    const/4 v2, 0x1

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mEmails:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, email:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mNumbers:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 139
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mOrganizations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 146
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mOrganizations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v11, :cond_9

    .line 147
    const/4 v2, 0x1

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mOrganizations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 151
    .local v5, organization:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 141
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #organization:Ljava/lang/String;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mEmails:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 155
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    return-object v6

    .line 157
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/VCardAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/mms/ui/VCardAttachment;->mOrganizations:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method
