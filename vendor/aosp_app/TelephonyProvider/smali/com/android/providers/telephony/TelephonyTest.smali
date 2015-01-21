.class public Lcom/android/providers/telephony/TelephonyTest;
.super Landroid/test/AndroidTestCase;
.source "TelephonyTest.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS:Ljava/lang/String; = "10086"

.field private static final BODY:Ljava/lang/String; = "hello, i\'m e"

.field private static final DATE:Ljava/lang/String; = "1326673820718"

.field private static final DB_NAME:Ljava/lang/String; = "mms0.pdu"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony/databases/mms_test.zip"

.field private static final FOR_MULTIDELETE:Ljava/lang/String; = "ForMultiDelete"

.field private static final MMS_URI:Landroid/net/Uri; = null

.field private static final SERVICE_CENTER:Ljava/lang/String; = "+86138003800"

.field private static final SMS_ALL_THREADID:Landroid/net/Uri; = null

.field private static final SMS_ALL_URI:Landroid/net/Uri; = null

.field private static final SMS_CONVERSATIONS:Landroid/net/Uri; = null

.field private static final SMS_FAILED:Landroid/net/Uri; = null

.field private static final SMS_STATUS_PENDING:Landroid/net/Uri; = null

.field private static final SMS_UNDELIVERED:Landroid/net/Uri; = null

.field private static final SMS_UNREAD:Landroid/net/Uri; = null

.field static final TAG:Ljava/lang/String; = "TelephonyTest"

.field private static final TEST_MMS_COUNT:I = 0x5

.field private static final TEST_SMS_COUNT:I = 0x32

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri; = null

.field private static final UPDATE_BODY:Ljava/lang/String; = "you are not e"

.field private static final URI_CANONICAL_ADDRESS:Landroid/net/Uri;

.field private static final URI_CONVERSATIONS_MESSAGES:Landroid/net/Uri;

.field private static final URI_OBSOLETE_THREADS:Landroid/net/Uri;

.field private static insertMmsUri:Landroid/net/Uri;

.field private static insertSmsId:Ljava/lang/String;

.field private static insertSmsUri:Landroid/net/Uri;


# instance fields
.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/providers/telephony/TelephonyTest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    .line 49
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->SMS_ALL_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->SMS_UNDELIVERED:Landroid/net/Uri;

    .line 51
    const-string v0, "content://sms/failed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->SMS_FAILED:Landroid/net/Uri;

    .line 52
    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->SMS_CONVERSATIONS:Landroid/net/Uri;

    .line 53
    const-string v0, "content://sms/sr_pending"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->SMS_STATUS_PENDING:Landroid/net/Uri;

    .line 54
    const-string v0, "content://sms/all_threadid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->SMS_ALL_THREADID:Landroid/net/Uri;

    .line 55
    const-string v0, "content://mms-sms/unread_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->SMS_UNREAD:Landroid/net/Uri;

    .line 58
    const-string v0, "content://mms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->MMS_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->URI_CONVERSATIONS_MESSAGES:Landroid/net/Uri;

    .line 61
    const-string v0, "content://mms-sms/conversations/obsolete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->URI_OBSOLETE_THREADS:Landroid/net/Uri;

    .line 62
    const-string v0, "content://mms-sms/canonical-address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyTest;->URI_CANONICAL_ADDRESS:Landroid/net/Uri;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method

.method public static readFileContent(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .parameter "zipFileString"
    .parameter "fileString"

    .prologue
    .line 484
    const-string v8, "TelephonyTest"

    const-string v9, "readFileContent "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 488
    .local v7, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v7, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 489
    .local v6, zipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_1

    .line 490
    invoke-virtual {v7, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 491
    .local v4, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 492
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, -0x1

    .line 493
    .local v5, len:I
    const/16 v8, 0x200

    :try_start_1
    new-array v2, v8, [B

    .line 494
    .local v2, buffer:[B
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x200

    invoke-virtual {v4, v2, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 495
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 499
    .end local v2           #buffer:[B
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 500
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #len:I
    .end local v6           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v7           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 501
    const/4 v8, 0x0

    .line 504
    .end local v3           #e:Ljava/io/IOException;
    :goto_2
    return-object v8

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v6       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v7       #zipFile:Ljava/util/zip/ZipFile;
    :cond_0
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buffer:[B
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #len:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto :goto_2

    .line 499
    .end local v6           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v7           #zipFile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method protected assertSms(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 430
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V

    .line 431
    const-string v9, "thread_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 432
    .local v6, threadId:I
    const-string v9, "address"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, address:Ljava/lang/String;
    const-string v9, "body"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, body:Ljava/lang/String;
    const-string v9, "date"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 435
    .local v2, dates:Ljava/lang/Long;
    const-string v9, "sim_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 436
    .local v5, simId:I
    const-string v9, "read"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 437
    .local v3, read:I
    const-string v9, "service_center"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, serviceCenter:Ljava/lang/String;
    if-lez v6, :cond_0

    move v9, v7

    :goto_0
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V

    .line 439
    const-string v9, "10086"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V

    .line 440
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v11, "1326673820718"

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    move v9, v7

    :goto_1
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V

    .line 441
    const-string v9, "hello, i\'m e"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V

    .line 442
    const/4 v9, 0x2

    if-ne v5, v9, :cond_2

    move v9, v7

    :goto_2
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V

    .line 443
    if-nez v3, :cond_3

    :goto_3
    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V

    .line 444
    const-string v7, "+86138003800"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 448
    return-void

    :cond_0
    move v9, v8

    .line 438
    goto :goto_0

    :cond_1
    move v9, v8

    .line 440
    goto :goto_1

    :cond_2
    move v9, v8

    .line 442
    goto :goto_2

    :cond_3
    move v7, v8

    .line 443
    goto :goto_3

    .line 446
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #body:Ljava/lang/String;
    .end local v2           #dates:Ljava/lang/Long;
    .end local v3           #read:I
    .end local v4           #serviceCenter:Ljava/lang/String;
    .end local v5           #simId:I
    .end local v6           #threadId:I
    :catchall_0
    move-exception v7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method protected deleteMsg(Landroid/net/Uri;)I
    .locals 3
    .parameter "deleteUri"

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, row:I
    return v0
.end method

.method protected deleteMsg(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "deleteUri"
    .parameter "selection"
    .parameter "args"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 475
    .local v0, row:I
    return v0
.end method

.method protected deleteSms(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 463
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 464
    .local v0, deleteUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 465
    .local v1, row:I
    return v1
.end method

.method protected getSmsValue(I)Landroid/content/ContentValues;
    .locals 3
    .parameter "boxType"

    .prologue
    .line 451
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v0, insertValues:Landroid/content/ContentValues;
    const-string v1, "address"

    const-string v2, "10086"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "date"

    const-string v2, "1326673820718"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v1, "body"

    const-string v2, "hello, i\'m e"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "sim_id"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v1, "service_center"

    const-string v2, "+86138003800"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    return-object v0
.end method

.method protected insertSms(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 381
    .local v0, resultUri:Landroid/net/Uri;
    return-object v0
.end method

.method protected queryMsg(Landroid/net/Uri;J)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "smsId"

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public readFile(Ljava/lang/String;)[B
    .locals 9
    .parameter "filePath"

    .prologue
    .line 509
    const-string v7, "TelephonyTest"

    const-string v8, "readFile"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 513
    .local v3, context:Landroid/content/Context;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, -0x1

    .line 515
    .local v5, len:I
    const/16 v7, 0x200

    :try_start_1
    new-array v2, v7, [B

    .line 516
    .local v2, buffer:[B
    invoke-virtual {v3, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 517
    .local v6, words:Ljava/io/FileInputStream;
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x200

    invoke-virtual {v6, v2, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 518
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 520
    .end local v2           #buffer:[B
    .end local v6           #words:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 521
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #len:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v4, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 522
    const/4 v7, 0x0

    .line 525
    .end local v4           #e:Ljava/io/IOException;
    :goto_2
    return-object v7

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #len:I
    .restart local v6       #words:Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 520
    .end local v2           #buffer:[B
    .end local v5           #len:I
    .end local v6           #words:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 85
    const-string v0, "TelephonyTest"

    const-string v1, "TelephonyTest setUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    .line 87
    return-void
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const-string v0, "TelephonyTest"

    const-string v1, "TelephonyTest tearDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public testCase01_insertSms()V
    .locals 4

    .prologue
    .line 95
    const-string v1, "TelephonyTest"

    const-string v2, "testCase01"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/TelephonyTest;->getSmsValue(I)Landroid/content/ContentValues;

    move-result-object v0

    .line 97
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/telephony/TelephonyTest;->insertSms(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    .line 98
    sget-boolean v1, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 99
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertSmsId:Ljava/lang/String;

    .line 100
    const-string v1, "TelephonyTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCase01 end resultUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/TelephonyTest;->insertSmsId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public testCase02_querySms()V
    .locals 3

    .prologue
    .line 104
    const-string v1, "TelephonyTest"

    const-string v2, "testCase02"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/TelephonyTest;->assertSms(Landroid/database/Cursor;)V

    .line 107
    const-string v1, "TelephonyTest"

    const-string v2, "testCase02 end "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public testCase03_updateSms()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "TelephonyTest"

    const-string v1, "testCase03"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/TelephonyTest;->updateSms(Landroid/net/Uri;)V

    .line 113
    const-string v0, "TelephonyTest"

    const-string v1, "testCase03 end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public testCase04_deleteSms()V
    .locals 4

    .prologue
    .line 117
    const-string v1, "TelephonyTest"

    const-string v2, "testCase04"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertSmsId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/TelephonyTest;->deleteSms(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, row:I
    sget-boolean v1, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_0
    const-string v1, "TelephonyTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCase04 end deleteSms row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public testCase05_inboxSms()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "TelephonyTest"

    const-string v1, "testCase05"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x1

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyTest;->testSmsBox(ILandroid/net/Uri;)V

    .line 127
    const-string v0, "TelephonyTest"

    const-string v1, "testCase05 end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public testCase06_sentSms()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "TelephonyTest"

    const-string v1, "testCase06"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x2

    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyTest;->testSmsBox(ILandroid/net/Uri;)V

    .line 134
    const-string v0, "TelephonyTest"

    const-string v1, "testCase06 end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public testCase07_outboxSms()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "TelephonyTest"

    const-string v1, "testCase07"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x4

    sget-object v1, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyTest;->testSmsBox(ILandroid/net/Uri;)V

    .line 141
    const-string v0, "TelephonyTest"

    const-string v1, "testCase07 end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public testCase08_draftboxSms()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "TelephonyTest"

    const-string v1, "testCase08"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x3

    sget-object v1, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyTest;->testSmsBox(ILandroid/net/Uri;)V

    .line 148
    const-string v0, "TelephonyTest"

    const-string v1, "testCase08 end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public testCase09_failedboxSms()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "TelephonyTest"

    const-string v1, "testCase9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x5

    sget-object v1, Lcom/android/providers/telephony/TelephonyTest;->SMS_FAILED:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyTest;->testSmsBox(ILandroid/net/Uri;)V

    .line 155
    const-string v0, "TelephonyTest"

    const-string v1, "testCase9 end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public testCase10_conversationSms()V
    .locals 8

    .prologue
    .line 159
    const-string v6, "TelephonyTest"

    const-string v7, "testCase10"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/providers/telephony/TelephonyTest;->getSmsValue(I)Landroid/content/ContentValues;

    move-result-object v5

    .line 161
    .local v5, values:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Lcom/android/providers/telephony/TelephonyTest;->insertSms(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    .line 162
    sget-boolean v6, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "10086"

    invoke-static {v6, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 164
    .local v1, threadid:J
    sget-object v6, Lcom/android/providers/telephony/TelephonyTest;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 165
    .local v4, uriBuilder:Landroid/net/Uri$Builder;
    const-string v6, "recipient"

    const-string v7, "10086"

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 167
    .local v3, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, cur:Landroid/database/Cursor;
    :try_start_0
    sget-boolean v6, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 173
    sget-object v6, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    invoke-virtual {p0, v6}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;)I

    .line 174
    const-string v6, "TelephonyTest"

    const-string v7, "testCase10 end"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public testCase11_unreadSms()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 178
    const-string v4, "TelephonyTest"

    const-string v5, "testCase11"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v4, Lcom/android/providers/telephony/TelephonyTest;->SMS_UNREAD:Landroid/net/Uri;

    invoke-virtual {p0, v4, v7}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, cur:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 182
    .local v1, unread:I
    :try_start_0
    sget-boolean v4, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 183
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 187
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    invoke-virtual {p0, v6}, Lcom/android/providers/telephony/TelephonyTest;->getSmsValue(I)Landroid/content/ContentValues;

    move-result-object v3

    .line 190
    .local v3, values:Landroid/content/ContentValues;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Lcom/android/providers/telephony/TelephonyTest;->insertSms(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    .line 191
    sget-boolean v4, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 192
    :cond_3
    sget-object v4, Lcom/android/providers/telephony/TelephonyTest;->SMS_UNREAD:Landroid/net/Uri;

    invoke-virtual {p0, v4, v7}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 193
    const/4 v2, 0x0

    .line 195
    .local v2, unreadAfter:I
    :try_start_2
    sget-boolean v4, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    :catchall_1
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 196
    :cond_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 197
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    .line 200
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 202
    sget-boolean v4, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    sub-int v4, v2, v1

    if-eq v4, v6, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 203
    :cond_7
    const-string v4, "TelephonyTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testCase11 unread After= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v4, Lcom/android/providers/telephony/TelephonyTest;->insertSmsUri:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;)I

    .line 205
    const-string v4, "TelephonyTest"

    const-string v5, "testCase11 end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public testCase12_multiDeletSms()V
    .locals 12

    .prologue
    const/16 v11, 0x32

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 211
    const-string v7, "TelephonyTest"

    const-string v8, "testCase12_multiDeletSms"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0, v9}, Lcom/android/providers/telephony/TelephonyTest;->getSmsValue(I)Landroid/content/ContentValues;

    move-result-object v5

    .line 213
    .local v5, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v11, :cond_0

    .line 214
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v5}, Lcom/android/providers/telephony/TelephonyTest;->insertSms(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    sget-object v7, Lcom/android/providers/telephony/TelephonyTest;->SMS_ALL_URI:Landroid/net/Uri;

    new-array v8, v9, [Ljava/lang/String;

    const-string v9, "_id"

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 218
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_3

    .line 219
    :cond_1
    const-string v7, "TelephonyTest"

    const-string v8, "testCase12 cur == null || cur.getCount("

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz v0, :cond_2

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_2
    :goto_1
    return-void

    .line 222
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 223
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 224
    .local v3, index:I
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 225
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 226
    .local v2, id:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 227
    add-int/lit8 v3, v3, 0x1

    .line 228
    goto :goto_2

    .line 229
    .end local v2           #id:I
    :cond_4
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "ForMultiDelete"

    invoke-virtual {p0, v7, v8, v6}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 230
    .local v4, res:I
    sget-boolean v7, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v7, :cond_6

    if-eq v4, v11, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .end local v3           #index:I
    .end local v4           #res:I
    .end local v6           #whereArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_5

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v7

    .line 233
    .restart local v3       #index:I
    .restart local v4       #res:I
    .restart local v6       #whereArgs:[Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_2

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public testCase13_insertMms()V
    .locals 9

    .prologue
    .line 242
    const-string v3, "TelephonyTest"

    const-string v4, "testCase_insertMms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v3, "mmspdu"

    invoke-virtual {p0, v3}, Lcom/android/providers/telephony/TelephonyTest;->readFile(Ljava/lang/String;)[B

    move-result-object v8

    .line 246
    .local v8, pduMms:[B
    sget-boolean v3, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v8, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 247
    :cond_0
    iget-object v3, p0, Landroid/test/AndroidTestCase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 248
    .local v1, persister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v2, 0x0

    .line 250
    .local v2, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :try_start_0
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v3, v8}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v2, v0

    .line 251
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    .line 253
    sget-boolean v3, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    move-exception v7

    .line 256
    .local v7, e:Ljava/lang/Exception;
    const-string v3, "TelephonyTest"

    const-string v4, "testCase_insertMms Exception e"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    .end local v7           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 254
    :cond_1
    :try_start_1
    const-string v3, "TelephonyTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testCase_insertMms insertMmsUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public testCase14_queryMms()V
    .locals 5

    .prologue
    .line 265
    const-string v1, "TelephonyTest"

    const-string v2, "testCase14_queryMms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    .local v0, cur:Landroid/database/Cursor;
    :try_start_0
    sget-boolean v1, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 269
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    return-void
.end method

.method public testCase15_updateMms()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 279
    const-string v2, "TelephonyTest"

    const-string v3, "testCase15_updateMms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v2, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/TelephonyTest;->updateOneMms(Landroid/net/Uri;)I

    move-result v0

    .line 281
    .local v0, count:I
    sget-boolean v2, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eq v0, v5, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 282
    :cond_0
    sget-object v2, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "read"

    aput-object v4, v3, v6

    const-string v4, "seen"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 284
    .local v1, cur:Landroid/database/Cursor;
    :try_start_0
    sget-boolean v2, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 285
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 286
    :cond_2
    sget-boolean v2, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v5, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 287
    :cond_3
    sget-boolean v2, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v5, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    return-void
.end method

.method public testCase16_updatePart()V
    .locals 6

    .prologue
    .line 297
    const-string v3, "TelephonyTest"

    const-string v4, "testCase16_updatePart"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v3, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/part"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, partUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/TelephonyTest;->updatePart(Landroid/net/Uri;)I

    move-result v2

    .line 301
    .local v2, row:I
    sget-boolean v3, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-gtz v2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 302
    :cond_0
    const-string v3, "TelephonyTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testCase16_updatePart row = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public testCase17_deletePart()V
    .locals 4

    .prologue
    .line 309
    const-string v1, "TelephonyTest"

    const-string v2, "testCase17_deletePart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v1, Lcom/android/providers/telephony/TelephonyTest;->insertMmsUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;)I

    move-result v0

    .line 311
    .local v0, row:I
    sget-boolean v1, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 312
    :cond_0
    const-string v1, "TelephonyTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCase17_deletePart row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method public testCase18_deleteAllMms()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 318
    const-string v6, "TelephonyTest"

    const-string v7, "testCase18_deleteAllMms"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyTest;->testCase13_insertMms()V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_0
    sget-object v6, Lcom/android/providers/telephony/TelephonyTest;->MMS_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 324
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_3

    .line 325
    :cond_1
    const-string v6, "TelephonyTest"

    const-string v7, "testCase18 cur == null || cur.getCount("

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    if-eqz v0, :cond_2

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_2
    :goto_1
    return-void

    .line 328
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 329
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 330
    .local v3, index:I
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 331
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 332
    .local v2, id:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    .line 334
    goto :goto_2

    .line 335
    .end local v2           #id:I
    :cond_4
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "ForMultiDelete"

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 336
    .local v4, row:I
    sget-boolean v6, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v6, :cond_6

    if-ge v4, v10, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v3           #index:I
    .end local v4           #row:I
    .end local v5           #whereArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_5

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6

    .line 337
    .restart local v3       #index:I
    .restart local v4       #row:I
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v6, "TelephonyTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testCase18_deleteAllMms row = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    if-eqz v0, :cond_2

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public testCase19_getOrCreateThreadId()V
    .locals 4

    .prologue
    .line 349
    const-string v2, "TelephonyTest"

    const-string v3, "testCase19_getOrCreateThreadId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "10086"

    invoke-static {v2, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 351
    .local v0, threadid:J
    sget-boolean v2, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 352
    :cond_0
    sget-object v2, Lcom/android/providers/telephony/TelephonyTest;->URI_CONVERSATIONS_MESSAGES:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;)I

    .line 354
    sget-object v2, Lcom/android/providers/telephony/TelephonyTest;->URI_OBSOLETE_THREADS:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;)I

    .line 356
    return-void
.end method

.method protected testSmsBox(ILandroid/net/Uri;)V
    .locals 10
    .parameter "type"
    .parameter "box"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/TelephonyTest;->getSmsValue(I)Landroid/content/ContentValues;

    move-result-object v5

    .line 363
    .local v5, values:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Lcom/android/providers/telephony/TelephonyTest;->insertSms(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 364
    .local v3, uri:Landroid/net/Uri;
    sget-boolean v6, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v3, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 366
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, id:Ljava/lang/String;
    sget-boolean v6, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 368
    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 369
    .local v4, uribox:Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 370
    .local v0, cursor:Landroid/database/Cursor;
    sget-boolean v6, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 371
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 373
    invoke-virtual {p0, v4}, Lcom/android/providers/telephony/TelephonyTest;->updateSms(Landroid/net/Uri;)V

    .line 375
    invoke-virtual {p0, v3}, Lcom/android/providers/telephony/TelephonyTest;->deleteMsg(Landroid/net/Uri;)I

    move-result v2

    .line 376
    .local v2, row:I
    sget-boolean v6, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    if-gtz v2, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 377
    :cond_5
    return-void
.end method

.method protected updateOneMms(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 416
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 417
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected updateOneSms(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, id:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "body"

    const-string v3, "you are not e"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected updatePart(Landroid/net/Uri;)I
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 423
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 424
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "chset"

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyTest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected updateSms(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/TelephonyTest;->updateOneSms(Landroid/net/Uri;)I

    move-result v2

    .line 395
    .local v2, row:I
    sget-boolean v3, Lcom/android/providers/telephony/TelephonyTest;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-gtz v2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 396
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "body"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/android/providers/telephony/TelephonyTest;->queryMsg(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 398
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 399
    const-string v3, "body"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, body:Ljava/lang/String;
    const-string v3, "you are not e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyTest;->assertTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    if-eqz v1, :cond_1

    .line 403
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_1
    return-void

    .line 402
    .end local v0           #body:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 403
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method
