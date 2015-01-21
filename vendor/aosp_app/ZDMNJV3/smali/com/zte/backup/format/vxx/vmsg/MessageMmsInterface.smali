.class public Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;
.super Ljava/lang/Object;
.source "MessageMmsInterface.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MessageMms"

.field private static final MESSAGE_TYPE:Ljava/lang/String; = "m_type"

.field public static final MMS_ADDR_TYPE_FROM:Ljava/lang/String; = "137"

.field public static final MMS_ADDR_TYPE_TO:Ljava/lang/String; = "151"

.field private static final SIM_ID:Ljava/lang/String; = "sim_id"

.field private static final SUB_ID:Ljava/lang/String; = "sub_id"


# instance fields
.field private IDArrayCounts:I

.field private MmsIDArrays:[Ljava/lang/String;

.field public bDoubleCard:Z

.field public bHasSimId:Z

.field public bcc:Ljava/lang/String;

.field public cc:Ljava/lang/String;

.field private contactNumber:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public fromPhoneNumber:Ljava/lang/String;

.field public messageSubID:Ljava/lang/String;

.field public mmsBoxType:I

.field public mmsContentLocation:Ljava/lang/String;

.field public mmsContentType:Ljava/lang/String;

.field public mmsDate:Ljava/lang/String;

.field public mmsDelReport:Ljava/lang/String;

.field public mmsExpiry:Ljava/lang/String;

.field public mmsID:Ljava/lang/String;

.field public mmsLocked:I

.field public mmsMsgCls:Ljava/lang/String;

.field public mmsMsgType:Ljava/lang/String;

.field public mmsPriority:Ljava/lang/String;

.field public mmsRead:I

.field public mmsReadReport:Ljava/lang/String;

.field public mmsSize:Ljava/lang/String;

.field public mmsSubject:Ljava/lang/String;

.field public mmsSubjectCharset:Ljava/lang/String;

.field public mmsTransID:Ljava/lang/String;

.field public mmsVersion:Ljava/lang/String;

.field public partCTStart:[Ljava/lang/String;

.field public partCTType:[Ljava/lang/String;

.field public partCharset:[Ljava/lang/String;

.field public partContentDisposition:[Ljava/lang/String;

.field public partContentID:[Ljava/lang/String;

.field public partContentLocation:[Ljava/lang/String;

.field public partContentType:[Ljava/lang/String;

.field public partData:[Ljava/lang/String;

.field public partFileName:[Ljava/lang/String;

.field public partName:[Ljava/lang/String;

.field public partSeq:[Ljava/lang/String;

.field public partText:[Ljava/lang/String;

.field public partsNumber:I

.field public toPhoneNumber:[Ljava/lang/String;

.field public toPhoneNumberCounts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "cx"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->contactNumber:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    .line 94
    const-string v0, "sub_id"

    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->has_sub_id_Column(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->bDoubleCard:Z

    .line 95
    const-string v0, "sim_id"

    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->has_sub_id_Column(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->bHasSimId:Z

    .line 96
    return-void
.end method

.method public static B64StringTobytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "str"

    .prologue
    .line 1384
    if-nez p0, :cond_0

    .line 1385
    const/4 v0, 0x0

    .line 1387
    :goto_0
    return-object v0

    .line 1386
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1387
    .local v0, bin:[B
    goto :goto_0
.end method

.method public static final bytesToB64String([B)Ljava/lang/String;
    .locals 2
    .parameter "bArray"

    .prologue
    .line 1376
    if-nez p0, :cond_0

    .line 1377
    const/4 v0, 0x0

    .line 1379
    :goto_0
    return-object v0

    .line 1378
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, encodeStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private checkByFromPhoneNumber(Ljava/lang/String;)Z
    .locals 9
    .parameter "msgId"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 671
    const/4 v6, 0x0

    .line 693
    :cond_0
    :goto_0
    return v6

    .line 674
    :cond_1
    const/4 v8, 0x0

    .line 675
    .local v8, temp:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 677
    .local v6, bResult:Z
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "address = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "137"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://mms/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/addr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 679
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 678
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 680
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_2

    .line 681
    const/4 v6, 0x0

    .line 688
    :goto_1
    if-eqz v8, :cond_0

    .line 689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 683
    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    .line 685
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 686
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    if-eqz v8, :cond_0

    .line 689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 687
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 688
    if-eqz v8, :cond_3

    .line 689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 691
    :cond_3
    throw v0
.end method

.method private checkMmsUri(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v0, 0x2002

    .line 807
    if-nez p1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v0

    .line 810
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->addMmsPhoneNumber(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    const/16 v0, 0x2004

    goto :goto_0

    .line 812
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->addMmsPartContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const/16 v0, 0x2001

    goto :goto_0
.end method

.method private createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7
    .parameter "SmsId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Landroid/net/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x3e8

    .line 759
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getSmsThreadIdForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, threadID:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 761
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "can not create get threadId"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v2, "date"

    .line 765
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 764
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v2, "read"

    iget v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsRead:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 768
    const-string v2, "sub"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_1
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubjectCharset:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 770
    const-string v2, "sub_cs"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubjectCharset:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_2
    const-string v2, "ct_t"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v2, "ct_l"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsExpiry:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 778
    const-string v2, "exp"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsExpiry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 779
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v5

    .line 778
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_3
    const-string v2, "m_cls"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgCls:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v2, "m_type"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsMsgTypeInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    const-string v2, "v"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v2, "m_size"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSize:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsPriority:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 786
    const-string v2, "pri"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsPriority:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsPriorityInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    :cond_4
    const-string v2, "tr_id"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsTransID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v2, "locked"

    iget v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsLocked:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v2, "rr"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsReadReport:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsIntStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v2, "d_rpt"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDelReport:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsIntStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v2, "msg_box"

    iget v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsBoxType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v2, "seen"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v2, "_id"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/zte/backup/common/CommonFunctions;->getSimID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    .line 797
    iget-boolean v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->bDoubleCard:Z

    if-eqz v2, :cond_5

    .line 798
    const-string v2, "sub_id"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_5
    iget-boolean v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->bHasSimId:Z

    if-eqz v2, :cond_6

    .line 801
    const-string v2, "sim_id"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_6
    return-object v1
.end method

.method private formatMmsParam(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x3e8

    .line 865
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsID:Ljava/lang/String;

    .line 866
    const-string v3, "sub"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    .line 867
    const-string v3, "ct_t"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentType:Ljava/lang/String;

    .line 868
    const-string v3, "ct_l"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentLocation:Ljava/lang/String;

    .line 869
    const-string v3, "m_cls"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgCls:Ljava/lang/String;

    .line 870
    const-string v3, "v"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsVersion:Ljava/lang/String;

    .line 871
    const-string v3, "m_size"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSize:Ljava/lang/String;

    .line 872
    const-string v3, "tr_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsTransID:Ljava/lang/String;

    .line 873
    const-string v3, "read"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsRead:I

    .line 874
    const-string v3, "locked"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsLocked:I

    .line 875
    const-string v3, "pri"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsPriorityStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsPriority:Ljava/lang/String;

    .line 876
    const-string v3, "m_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsMsgTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgType:Ljava/lang/String;

    .line 877
    const-string v3, "rr"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsReadReport:Ljava/lang/String;

    .line 878
    const-string v3, "d_rpt"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDelReport:Ljava/lang/String;

    .line 880
    new-instance v0, Ljava/sql/Date;

    const-string v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 881
    .local v0, date:Ljava/sql/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 882
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDate:Ljava/lang/String;

    .line 883
    const-string v3, "exp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 884
    new-instance v1, Ljava/sql/Date;

    const-string v3, "exp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 885
    .local v1, expDate:Ljava/sql/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsExpiry:Ljava/lang/String;

    .line 892
    .end local v1           #expDate:Ljava/sql/Date;
    :cond_0
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/zte/backup/common/CommonFunctions;->getCardID(Landroid/database/Cursor;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    .line 896
    return-void
.end method

.method private getCheckSelectionStr()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 697
    const-string v0, ""

    .line 699
    .local v0, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "m_type =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsMsgTypeInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "date ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 704
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "msg_box = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsBoxType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tr_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsTransID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    return-object v0
.end method

.method private getMmsCountByContactNumber(Landroid/database/Cursor;)I
    .locals 10
    .parameter "cur"

    .prologue
    .line 472
    const/4 v6, 0x0

    .line 473
    .local v6, count:I
    const/4 v9, 0x0

    .line 475
    .local v9, temp:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 478
    .local v8, msgId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "address = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://mms/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/addr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 480
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 479
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 481
    if-eqz v9, :cond_1

    .line 482
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v6, v0

    .line 483
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 476
    if-nez v0, :cond_0

    .line 493
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #msgId:Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    .line 494
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_3
    :goto_0
    return v6

    .line 489
    :catch_0
    move-exception v7

    .line 490
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    if-eqz v9, :cond_3

    .line 494
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 492
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 493
    if-eqz v9, :cond_4

    .line 494
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_4
    throw v0
.end method

.method private getSmsId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->addSmsForMms()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, SmsId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 753
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "create sms failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_0
    return-object v0
.end method

.method private has_sub_id_Column(Ljava/lang/String;)Z
    .locals 10
    .parameter "msgCardId"

    .prologue
    .line 106
    const/4 v6, 0x0

    .line 107
    .local v6, bFind:Z
    const/4 v8, 0x0

    .line 109
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 110
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 111
    const/4 v6, 0x1

    .line 117
    if-eqz v8, :cond_0

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v7, v6

    .line 121
    .end local v6           #bFind:Z
    .local v7, bFind:I
    :goto_0
    return v7

    .line 113
    .end local v7           #bFind:I
    .restart local v6       #bFind:Z
    :catch_0
    move-exception v9

    .line 117
    .local v9, e:Ljava/lang/Exception;
    if-eqz v8, :cond_1

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v7, v6

    .line 114
    .restart local v7       #bFind:I
    goto :goto_0

    .line 116
    .end local v7           #bFind:I
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 117
    if-eqz v8, :cond_2

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2
    throw v0
.end method

.method private notAddByNumber(Ljava/lang/String;)Z
    .locals 9
    .parameter "IDString"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->contactNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 549
    const/4 v6, 0x0

    .line 570
    :cond_0
    :goto_0
    return v6

    .line 552
    :cond_1
    const/4 v6, 0x1

    .line 553
    .local v6, bNotAdd:Z
    const/4 v8, 0x0

    .line 554
    .local v8, temp:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "address = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, sel:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://mms/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/addr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 558
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 557
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 559
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_2

    .line 560
    const/4 v6, 0x0

    .line 565
    :cond_2
    if-eqz v8, :cond_0

    .line 566
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 562
    :catch_0
    move-exception v7

    .line 563
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    if-eqz v8, :cond_0

    .line 566
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 564
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 565
    if-eqz v8, :cond_3

    .line 566
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_3
    throw v0
.end method

.method private processResults(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cur"

    .prologue
    const/4 v1, 0x0

    .line 822
    if-nez p1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v1

    .line 827
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->formatMmsParam(Landroid/database/Cursor;)V

    .line 829
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsID:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsPartContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsID:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsPhoneNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "MessageMms"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public AddMmsItem()I
    .locals 10

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->checkMmsIsExist()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    const/16 v5, 0x2001

    .line 743
    :goto_0
    return v5

    .line 722
    :cond_0
    const/4 v2, 0x0

    .line 724
    .local v2, smsId:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getSmsId()Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-direct {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 726
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://mms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 727
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 728
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 729
    .local v0, date:Landroid/content/ContentValues;
    const-string v5, "date"

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 730
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 729
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 733
    .end local v0           #date:Landroid/content/ContentValues;
    :cond_1
    invoke-direct {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->checkMmsUri(Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 746
    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->DeleteSmsForMms(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 736
    .local v1, ex:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v5, "MessageMms"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->DeleteSmsForMms(Ljava/lang/String;)V

    .line 737
    const/16 v5, 0x2004

    goto :goto_0

    .line 739
    .end local v1           #ex:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 740
    .local v1, ex:Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 741
    :try_start_2
    const-string v5, "MessageMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    :cond_2
    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->DeleteSmsForMms(Ljava/lang/String;)V

    .line 743
    const/16 v5, 0x2002

    goto :goto_0

    .line 745
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 746
    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->DeleteSmsForMms(Ljava/lang/String;)V

    .line 747
    throw v5
.end method

.method DeleteSmsForMms(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 918
    new-instance v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;-><init>(Landroid/content/Context;)V

    .line 919
    .local v0, sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;
    invoke-virtual {v0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->deleteSmsForMms(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 920
    return-void
.end method

.method public GetMmsIDArrayByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 127
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->IDArrayCounts:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 128
    :cond_0
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->MmsIDArrays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartCTStartByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 242
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 248
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 245
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartCTTypeByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 252
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 258
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 255
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartCharsetByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 192
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 198
    :goto_0
    return-object v0

    .line 194
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 195
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartContentDispositionByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 202
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 205
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartContentIDByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 222
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 225
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartContentLocationByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 232
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-object v0

    .line 234
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 235
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartContentTypeByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 172
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 178
    :goto_0
    return-object v0

    .line 174
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 175
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartDataByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 262
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 268
    :goto_0
    return-object v0

    .line 264
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 265
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartFileNameByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 212
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 215
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartNameByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 182
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 185
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsPartSeqByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 162
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 165
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsTextByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 272
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 275
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetMmsToPhoneNumberByIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 135
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 138
    :cond_1
    const-string v1, "MessageMms"

    const-string v2, "index arrange error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartCTStartByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 380
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 383
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartCTTypeByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 390
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 393
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartCharsetByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 330
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 332
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 333
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartContentDispositionByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 340
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 342
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 343
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartContentIDByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 360
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 362
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 363
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartContentLocationByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 370
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 373
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartContentTypeByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 310
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 312
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 313
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartDataByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 400
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 403
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartFileNameByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 350
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 352
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 353
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartNameByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 320
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 323
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsPartSeqByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 300
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 303
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsTextByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 410
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 413
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsToPhoneNumberByIndex(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "number"

    .prologue
    .line 152
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 155
    :cond_1
    const-string v0, "MessageMms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetMmsToPhoneNumberCounts(I)V
    .locals 1
    .parameter "counts"

    .prologue
    .line 145
    iput p1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    .line 146
    if-gtz p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    goto :goto_0
.end method

.method public SetMmspartsNumber(I)V
    .locals 1
    .parameter "counts"

    .prologue
    .line 282
    iput p1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    .line 283
    if-gtz p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 285
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    .line 286
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    .line 287
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    .line 288
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    .line 289
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    .line 290
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    .line 291
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    .line 292
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    .line 293
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    .line 294
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    .line 295
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    .line 296
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    goto :goto_0
.end method

.method addMmsData(Landroid/net/Uri;I)Z
    .locals 11
    .parameter "uri"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1084
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1086
    .local v7, rawContactId:J
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    aget-object v9, v9, p2

    invoke-static {v9}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->B64StringTobytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1087
    .local v3, is:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 1089
    .local v5, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "content://mms/part/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1090
    .local v6, partURI:Landroid/net/Uri;
    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 1091
    const/16 v9, 0x100

    new-array v0, v9, [B

    .line 1092
    .local v0, buffer:[B
    const/4 v4, 0x0

    .local v4, len:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_2

    .line 1100
    if-eqz v3, :cond_0

    .line 1102
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1109
    :cond_0
    if-eqz v5, :cond_1

    .line 1111
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1127
    :cond_1
    const/4 v9, 0x1

    return v9

    .line 1093
    :cond_2
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v9, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1096
    .end local v0           #buffer:[B
    .end local v4           #len:I
    .end local v6           #partURI:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1097
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1099
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1100
    if-eqz v3, :cond_3

    .line 1102
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1109
    :cond_3
    if-eqz v5, :cond_4

    .line 1111
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1118
    :cond_4
    :try_start_8
    throw v9
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1120
    .end local v3           #is:Ljava/io/ByteArrayInputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 1121
    .local v2, ex:Landroid/database/sqlite/SQLiteFullException;
    const-string v9, "MessageMms"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    throw v2

    .line 1104
    .end local v2           #ex:Landroid/database/sqlite/SQLiteFullException;
    .restart local v3       #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 1105
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_9
    throw v1
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1124
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/ByteArrayInputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 1125
    .local v1, e:Ljava/lang/Exception;
    throw v1

    .line 1113
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    .line 1114
    .local v1, e:Ljava/io/IOException;
    :try_start_a
    throw v1

    .line 1104
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v4       #len:I
    .restart local v6       #partURI:Landroid/net/Uri;
    :catch_5
    move-exception v1

    .line 1105
    .restart local v1       #e:Ljava/io/IOException;
    throw v1

    .line 1113
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 1114
    .restart local v1       #e:Ljava/io/IOException;
    throw v1
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
.end method

.method addMmsPartContent(Landroid/net/Uri;)Z
    .locals 11
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v0, 0x1

    .line 1038
    .local v0, bRet:Z
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1039
    .local v4, rawContactId:J
    iget v8, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-gtz v8, :cond_0

    .line 1040
    const/4 v8, 0x1

    .line 1079
    :goto_0
    return v8

    .line 1043
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_0
    iget v8, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-lt v3, v8, :cond_1

    :goto_2
    move v8, v0

    .line 1079
    goto :goto_0

    .line 1044
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1046
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "seq"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v8, "ct"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v8, "name"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v8, "chset"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v8, "cd"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v8, "fn"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v8, "cid"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v8, "cl"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v8, "ctt_s"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v8, "ctt_t"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v8, "text"

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v8, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "content://mms/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/part"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1062
    .local v6, uriPart:Landroid/net/Uri;
    if-nez v6, :cond_2

    .line 1063
    const/4 v0, 0x0

    .line 1064
    goto/16 :goto_2

    .line 1066
    :cond_2
    iget-object v8, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    aget-object v8, v8, v3

    if-eqz v8, :cond_3

    .line 1067
    invoke-virtual {p0, v6, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->addMmsData(Landroid/net/Uri;I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1043
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1071
    .end local v6           #uriPart:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1072
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v8, "MessageMms"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    throw v1

    .line 1075
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    .line 1076
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "MessageMms"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    throw v2
.end method

.method addMmsPhoneNumber(Landroid/net/Uri;)Z
    .locals 12
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1177
    const/4 v0, 0x1

    .line 1178
    .local v0, bRet:Z
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1179
    .local v4, rawContactId:J
    iget v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    if-gtz v9, :cond_0

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 1180
    const/4 v9, 0x1

    .line 1211
    :goto_0
    return v9

    .line 1183
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_0
    iget v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    if-lt v3, v9, :cond_2

    .line 1193
    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1194
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1195
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "address"

    iget-object v10, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v9, "type"

    const-string v10, "137"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "content://mms/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1198
    const-string v11, "/addr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1197
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1199
    .local v6, uriAddrFrom:Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 1200
    const/4 v0, 0x0

    .end local v6           #uriAddrFrom:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    move v9, v0

    .line 1211
    goto :goto_0

    .line 1184
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1185
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v9, "address"

    iget-object v10, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v9, "type"

    const-string v10, "151"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v9, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1188
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "content://mms/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/addr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1190
    .local v7, uriAddrTo:Landroid/net/Uri;
    if-nez v7, :cond_3

    .line 1191
    const/4 v0, 0x0

    .line 1183
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1203
    .end local v7           #uriAddrTo:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1204
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v9, "MessageMms"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    throw v1

    .line 1207
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    .line 1208
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "MessageMms"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    throw v2
.end method

.method addSmsForMms()Ljava/lang/String;
    .locals 3

    .prologue
    .line 842
    new-instance v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;-><init>(Landroid/content/Context;)V

    .line 843
    .local v0, sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;
    const/4 v1, 0x1

    iput v1, v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageType:I

    .line 844
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsBoxType:I

    packed-switch v1, :pswitch_data_0

    .line 859
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 860
    const-string v1, "test"

    iput-object v1, v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    .line 861
    :cond_1
    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->createSmsItemForMms()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 847
    :pswitch_0
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 848
    const/4 v1, 0x0

    goto :goto_1

    .line 849
    :cond_2
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 853
    :pswitch_1
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public checkMmsIsExist()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 626
    const/4 v7, 0x0

    .line 628
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getCheckSelectionStr()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 630
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 660
    :cond_0
    if-eqz v7, :cond_1

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v12

    .line 663
    .end local v3           #selection:Ljava/lang/String;
    :goto_0
    return v0

    .line 632
    .restart local v3       #selection:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    .line 633
    .local v11, temp:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_5

    .line 660
    if-eqz v7, :cond_4

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v3           #selection:Ljava/lang/String;
    .end local v11           #temp:Landroid/database/Cursor;
    :cond_4
    :goto_1
    move v0, v12

    .line 663
    goto :goto_0

    .line 634
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v11       #temp:Landroid/database/Cursor;
    :cond_5
    const/4 v6, 0x0

    .line 635
    .local v6, bDif:Z
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 636
    .local v10, msgId:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    if-lt v9, v0, :cond_7

    .line 651
    :goto_3
    if-nez v6, :cond_3

    invoke-direct {p0, v10}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->checkByFromPhoneNumber(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 660
    if-eqz v7, :cond_6

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 655
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 637
    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "address = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "151"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 638
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://mms/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/addr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 639
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 638
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 640
    if-nez v11, :cond_8

    .line 641
    const/4 v6, 0x1

    .line 636
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 643
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 644
    const/4 v6, 0x1

    .line 645
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 657
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #bDif:Z
    .end local v9           #i:I
    .end local v10           #msgId:Ljava/lang/String;
    .end local v11           #temp:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 658
    .local v8, ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 660
    if-eqz v7, :cond_4

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 648
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #bDif:Z
    .restart local v9       #i:I
    .restart local v10       #msgId:Ljava/lang/String;
    .restart local v11       #temp:Landroid/database/Cursor;
    :cond_9
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 659
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #bDif:Z
    .end local v9           #i:I
    .end local v10           #msgId:Ljava/lang/String;
    .end local v11           #temp:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 660
    if-eqz v7, :cond_a

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_a
    throw v0
.end method

.method public deleteAllMms(Ljava/lang/String;)Z
    .locals 10
    .parameter "MessageType"

    .prologue
    .line 602
    const/4 v9, 0x0

    .line 605
    .local v9, status:Z
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 606
    const/4 v5, 0x0

    .line 605
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 607
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, Id:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 612
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 608
    if-nez v0, :cond_0

    .line 614
    .end local v6           #Id:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 615
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_2
    const/4 v9, 0x1

    .line 622
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return v9

    .line 619
    :catch_0
    move-exception v8

    .line 620
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "MessageMms"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBackupCount()I
    .locals 2

    .prologue
    .line 1403
    const/4 v0, 0x0

    .line 1404
    .local v0, result:I
    const-string v1, "content://mms/inbox"

    invoke-virtual {p0, v1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsCount(Ljava/lang/String;)I

    move-result v0

    .line 1405
    const-string v1, "content://mms/sent"

    invoke-virtual {p0, v1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1406
    return v0
.end method

.method public getBackupDataSize()J
    .locals 5

    .prologue
    .line 1391
    const/4 v1, 0x0

    .line 1392
    .local v1, iMmsNum:I
    const/4 v0, 0x0

    .line 1394
    .local v0, iBackupSpace:I
    const-string v2, "content://mms/inbox"

    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1395
    const-string v2, "content://mms/sent"

    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1397
    const-string v2, "backup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMmsCount "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const v2, 0x4b000

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 1399
    int-to-long v2, v0

    return-wide v2
.end method

.method public getMmsCount(Ljava/lang/String;)I
    .locals 9
    .parameter "MessageType"

    .prologue
    .line 447
    const/4 v6, 0x0

    .line 448
    .local v6, count:I
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .line 451
    .local v8, myCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 452
    if-eqz v8, :cond_0

    .line 453
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->contactNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 464
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_1
    :goto_1
    return v6

    .line 456
    :cond_2
    :try_start_1
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsCountByContactNumber(Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0

    .line 460
    :catch_0
    move-exception v7

    .line 461
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MessageMms"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    if-eqz v8, :cond_1

    .line 465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 463
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 464
    if-eqz v8, :cond_3

    .line 465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_3
    throw v0
.end method

.method getMmsData(ILjava/lang/String;)Z
    .locals 8
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 992
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 993
    .local v4, os:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 995
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "content://mms/part/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 996
    .local v5, partURI:Landroid/net/Uri;
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 997
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 998
    .local v0, buffer:[B
    const/4 v3, 0x0

    .local v3, len:I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 1001
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->bytesToB64String([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1007
    if-eqz v2, :cond_0

    .line 1009
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1016
    :cond_0
    if-eqz v4, :cond_1

    .line 1018
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1030
    :cond_1
    const/4 v6, 0x1

    return v6

    .line 999
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1003
    .end local v0           #buffer:[B
    .end local v3           #len:I
    .end local v5           #partURI:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1004
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1006
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1007
    if-eqz v2, :cond_3

    .line 1009
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1016
    :cond_3
    if-eqz v4, :cond_4

    .line 1018
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1025
    :cond_4
    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1027
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v1

    .line 1028
    .local v1, e:Ljava/lang/Exception;
    throw v1

    .line 1011
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #os:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v1

    .line 1012
    .local v1, e:Ljava/io/IOException;
    :try_start_9
    throw v1

    .line 1020
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1021
    .restart local v1       #e:Ljava/io/IOException;
    throw v1

    .line 1011
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v3       #len:I
    .restart local v5       #partURI:Landroid/net/Uri;
    :catch_4
    move-exception v1

    .line 1012
    .restart local v1       #e:Ljava/io/IOException;
    throw v1

    .line 1020
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 1021
    .restart local v1       #e:Ljava/io/IOException;
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method public getMmsIDArray(Ljava/lang/String;)I
    .locals 13
    .parameter "MessageType"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 504
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 505
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .line 507
    .local v8, cur:Landroid/database/Cursor;
    iput v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->IDArrayCounts:I

    .line 508
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->MmsIDArrays:[Ljava/lang/String;

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 512
    if-nez v8, :cond_1

    .line 513
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->IDArrayCounts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    if-eqz v8, :cond_0

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    const/4 v6, 0x0

    .line 516
    .local v6, IDCounts:I
    :try_start_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->contactNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 517
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsCountByContactNumber(Landroid/database/Cursor;)I

    move-result v6

    .line 521
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 522
    :cond_2
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->IDArrayCounts:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 539
    if-eqz v8, :cond_0

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 519
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    goto :goto_1

    .line 524
    :cond_4
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->MmsIDArrays:[Ljava/lang/String;

    .line 525
    const/4 v11, 0x0

    .local v11, numIndex:I
    move v12, v11

    .line 528
    .end local v11           #numIndex:I
    .local v12, numIndex:I
    :goto_2
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 529
    .local v10, id:I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, IDString:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->notAddByNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v11, v12

    .line 534
    .end local v12           #numIndex:I
    .restart local v11       #numIndex:I
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 526
    if-nez v0, :cond_8

    .line 535
    iput v11, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->IDArrayCounts:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    if-eqz v8, :cond_5

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 543
    .end local v6           #IDCounts:I
    .end local v7           #IDString:Ljava/lang/String;
    .end local v10           #id:I
    .end local v11           #numIndex:I
    :cond_5
    :goto_4
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->IDArrayCounts:I

    goto :goto_0

    .line 533
    .restart local v6       #IDCounts:I
    .restart local v7       #IDString:Ljava/lang/String;
    .restart local v10       #id:I
    .restart local v12       #numIndex:I
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->MmsIDArrays:[Ljava/lang/String;

    add-int/lit8 v11, v12, 0x1

    .end local v12           #numIndex:I
    .restart local v11       #numIndex:I
    aput-object v7, v0, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 536
    .end local v6           #IDCounts:I
    .end local v7           #IDString:Ljava/lang/String;
    .end local v10           #id:I
    .end local v11           #numIndex:I
    :catch_0
    move-exception v9

    .line 537
    .local v9, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "MessageMms"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 539
    if-eqz v8, :cond_5

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 538
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 539
    if-eqz v8, :cond_7

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_7
    throw v0

    .restart local v6       #IDCounts:I
    .restart local v7       #IDString:Ljava/lang/String;
    .restart local v10       #id:I
    .restart local v11       #numIndex:I
    :cond_8
    move v12, v11

    .end local v11           #numIndex:I
    .restart local v12       #numIndex:I
    goto :goto_2
.end method

.method getMmsInt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 1289
    if-nez p1, :cond_0

    .line 1298
    :goto_0
    return-object v1

    .line 1291
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1292
    .local v0, typeInt:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1294
    :pswitch_0
    const-string v1, "1"

    goto :goto_0

    .line 1296
    :pswitch_1
    const-string v1, "0"

    goto :goto_0

    .line 1292
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getMmsIntStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 1303
    if-nez p1, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-object v0

    .line 1305
    :cond_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1306
    const-string v0, "128"

    goto :goto_0

    .line 1307
    :cond_2
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    const-string v0, "129"

    goto :goto_0
.end method

.method public getMmsItemByID(Ljava/lang/String;I)Z
    .locals 9
    .parameter "MessageType"
    .parameter "id"

    .prologue
    .line 577
    const/4 v8, 0x0

    .line 578
    .local v8, result:Z
    const/4 v7, 0x0

    .line 580
    .local v7, myCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 581
    const-string v5, "date desc"

    .line 580
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 582
    if-eqz v7, :cond_0

    .line 583
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->processResults(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 590
    :cond_0
    if-eqz v7, :cond_1

    .line 591
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 592
    const/4 v7, 0x0

    .line 595
    :cond_1
    :goto_0
    return v8

    .line 586
    :catch_0
    move-exception v6

    .line 587
    .local v6, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageMms"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    if-eqz v7, :cond_1

    .line 591
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 592
    const/4 v7, 0x0

    goto :goto_0

    .line 589
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 590
    if-eqz v7, :cond_2

    .line 591
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 592
    const/4 v7, 0x0

    .line 594
    :cond_2
    throw v0
.end method

.method getMmsMsgTypeInt(Ljava/lang/String;)I
    .locals 2
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 1316
    if-nez p1, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return v0

    .line 1318
    :cond_1
    const-string v1, "SEND_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1319
    const/16 v0, 0x80

    goto :goto_0

    .line 1320
    :cond_2
    const-string v1, "SEND_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1321
    const/16 v0, 0x81

    goto :goto_0

    .line 1322
    :cond_3
    const-string v1, "NOTIFICATION_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1323
    const/16 v0, 0x82

    goto :goto_0

    .line 1324
    :cond_4
    const-string v1, "NOTIFYRESP_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1325
    const/16 v0, 0x83

    goto :goto_0

    .line 1326
    :cond_5
    const-string v1, "RETRIEVE_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1327
    const/16 v0, 0x84

    goto :goto_0

    .line 1328
    :cond_6
    const-string v1, "ACKNOWLEDGE_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1329
    const/16 v0, 0x85

    goto :goto_0

    .line 1330
    :cond_7
    const-string v1, "DELIVERY_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1331
    const/16 v0, 0x86

    goto :goto_0

    .line 1332
    :cond_8
    const-string v1, "READ_REC_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1333
    const/16 v0, 0x87

    goto :goto_0

    .line 1334
    :cond_9
    const-string v1, "READ_ORIG_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1335
    const/16 v0, 0x88

    goto :goto_0

    .line 1336
    :cond_a
    const-string v1, "FORWARD_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1337
    const/16 v0, 0x89

    goto :goto_0

    .line 1338
    :cond_b
    const-string v1, "FORWARD_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1339
    const/16 v0, 0x8a

    goto :goto_0

    .line 1340
    :cond_c
    const-string v1, "MBOX_STORE_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1341
    const/16 v0, 0x8b

    goto/16 :goto_0

    .line 1342
    :cond_d
    const-string v1, "MBOX_STORE_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1343
    const/16 v0, 0x8c

    goto/16 :goto_0

    .line 1344
    :cond_e
    const-string v1, "MBOX_VIEW_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1345
    const/16 v0, 0x8d

    goto/16 :goto_0

    .line 1346
    :cond_f
    const-string v1, "MBOX_VIEW_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1347
    const/16 v0, 0x8e

    goto/16 :goto_0

    .line 1348
    :cond_10
    const-string v1, "MBOX_UPLOAD_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1349
    const/16 v0, 0x8f

    goto/16 :goto_0

    .line 1350
    :cond_11
    const-string v1, "MBOX_UPLOAD_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1351
    const/16 v0, 0x90

    goto/16 :goto_0

    .line 1352
    :cond_12
    const-string v1, "MBOX_DELETE_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1353
    const/16 v0, 0x91

    goto/16 :goto_0

    .line 1354
    :cond_13
    const-string v1, "MBOX_DELETE_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1355
    const/16 v0, 0x92

    goto/16 :goto_0

    .line 1356
    :cond_14
    const-string v1, "MBOX_DESCR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1357
    const/16 v0, 0x93

    goto/16 :goto_0

    .line 1358
    :cond_15
    const-string v1, "DELETE_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1359
    const/16 v0, 0x94

    goto/16 :goto_0

    .line 1360
    :cond_16
    const-string v1, "DELETE_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1361
    const/16 v0, 0x95

    goto/16 :goto_0

    .line 1362
    :cond_17
    const-string v1, "CANCEL_REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1363
    const/16 v0, 0x96

    goto/16 :goto_0

    .line 1364
    :cond_18
    const-string v1, "CANCEL_CONF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1365
    const/16 v0, 0x97

    goto/16 :goto_0

    .line 1366
    :cond_19
    const-string v1, "PUSH_SI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1367
    const/16 v0, 0xa0

    goto/16 :goto_0

    .line 1368
    :cond_1a
    const-string v1, "PUSH_SL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    const/16 v0, 0xa1

    goto/16 :goto_0
.end method

.method getMmsMsgTypeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "msgType"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1260
    if-nez p1, :cond_0

    .line 1261
    const/4 v3, 0x0

    .line 1284
    :goto_0
    return-object v3

    .line 1262
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1264
    .local v2, typeInt:I
    const/16 v3, 0x22

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "SEND_REQ"

    aput-object v3, v1, v5

    const-string v3, "SEND_CONF"

    aput-object v3, v1, v6

    .line 1265
    const-string v3, "NOTIFICATION_IND"

    aput-object v3, v1, v7

    const-string v3, "NOTIFYRESP_IND"

    aput-object v3, v1, v8

    .line 1266
    const-string v3, "RETRIEVE_CONF"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "ACKNOWLEDGE_IND"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 1267
    const-string v4, "DELIVERY_IND"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "READ_REC_IND"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 1268
    const-string v4, "READ_ORIG_IND"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "FORWARD_REQ"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 1269
    const-string v4, "FORWARD_CONF"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "MBOX_STORE_REQ"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    .line 1270
    const-string v4, "MBOX_STORE_CONF"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "MBOX_VIEW_REQ"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    .line 1271
    const-string v4, "MBOX_VIEW_CONF"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "MBOX_UPLOAD_REQ"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    .line 1272
    const-string v4, "MBOX_UPLOAD_CONF"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "MBOX_DELETE_REQ"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    .line 1273
    const-string v4, "MBOX_DELETE_CONF"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "MBOX_DESCR"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    .line 1274
    const-string v4, "DELETE_REQ"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "DELETE_CONF"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "CANCEL_REQ"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    .line 1275
    const-string v4, "CANCEL_CONF"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    .line 1276
    const-string v4, "PUSH_SI"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "PUSH_SL"

    aput-object v4, v1, v3

    .line 1277
    .local v1, type:[Ljava/lang/String;
    const/16 v3, 0x22

    new-array v0, v3, [Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    const/16 v3, 0x84

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x5

    const/16 v4, 0x85

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x86

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const/16 v4, 0x88

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const/16 v4, 0x89

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0x8a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0x8b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, 0x8c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    .line 1278
    const/16 v4, 0x8d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const/16 v4, 0x8e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const/16 v4, 0x8f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const/16 v4, 0x90

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const/16 v4, 0x91

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const/16 v4, 0x92

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const/16 v4, 0x93

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const/16 v4, 0x94

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const/16 v4, 0x95

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const/16 v4, 0x96

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const/16 v4, 0x98

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const/16 v4, 0x9a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const/16 v4, 0x9b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const/16 v4, 0x9c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const/16 v4, 0x9d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    .line 1279
    const/16 v4, 0x9e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const/16 v4, 0x9f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const/16 v4, 0xa1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1281
    .local v0, in:[Ljava/lang/Integer;
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1282
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1284
    :cond_2
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, v2, v3

    aget-object v3, v1, v3

    goto/16 :goto_0
.end method

.method getMmsPartContent(Ljava/lang/String;)Z
    .locals 12
    .parameter "id"

    .prologue
    .line 926
    const/4 v11, 0x0

    .line 928
    .local v11, result:Z
    const/4 v6, 0x0

    .line 930
    .local v6, curPart:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://mms/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 931
    const/4 v5, 0x0

    .line 930
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 932
    if-eqz v6, :cond_3

    .line 933
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    .line 935
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    .line 937
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    .line 938
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    .line 939
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    .line 940
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    .line 941
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    .line 942
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    .line 943
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    .line 944
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    .line 945
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    .line 946
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    .line 947
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v7, v0, [Ljava/lang/String;

    .line 948
    .local v7, data:[Ljava/lang/String;
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    .line 950
    const/4 v9, 0x0

    .line 952
    .local v9, numIndex:I
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    const-string v1, "seq"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 953
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    const-string v1, "ct"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 954
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 955
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    const-string v1, "chset"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 956
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    const-string v1, "cd"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 957
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    const-string v1, "fn"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 958
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    const-string v1, "cid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 959
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    const-string v1, "cl"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 960
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    const-string v1, "ctt_s"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 961
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    const-string v1, "ctt_t"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 962
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    .line 963
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    const-string v1, "text"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 964
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 965
    .local v10, partId:Ljava/lang/String;
    aget-object v0, v7, v9

    if-eqz v0, :cond_1

    aget-object v0, v7, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    const-string v0, "MessageMms"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v7, v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {p0, v9, v10}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsData(ILjava/lang/String;)Z

    .line 969
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 971
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 951
    if-nez v0, :cond_0

    .line 973
    .end local v7           #data:[Ljava/lang/String;
    .end local v9           #numIndex:I
    .end local v10           #partId:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    const/4 v11, 0x1

    .line 982
    :cond_3
    if-eqz v6, :cond_4

    .line 983
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 986
    :cond_4
    :goto_0
    return v11

    .line 977
    :catch_0
    move-exception v8

    .line 978
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageMms"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    const/4 v11, 0x0

    .line 982
    if-eqz v6, :cond_4

    .line 983
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 981
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 982
    if-eqz v6, :cond_5

    .line 983
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 985
    :cond_5
    throw v0
.end method

.method getMmsPhoneNumber(Ljava/lang/String;)Z
    .locals 11
    .parameter "id"

    .prologue
    .line 1134
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 1135
    .local v2, projection:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1138
    .local v10, result:Z
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://mms/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/addr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1139
    const-string v3, "type =151"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1138
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1140
    .local v7, curAddrTo:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1141
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    .line 1142
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    .line 1144
    const/4 v9, 0x0

    .line 1146
    .local v9, numIndex:I
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    const-string v1, "address"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1147
    add-int/lit8 v9, v9, 0x1

    .line 1149
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 1145
    if-nez v0, :cond_0

    .line 1151
    .end local v9           #numIndex:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1155
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://mms/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/addr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1156
    const-string v3, "type =137"

    const/4 v4, 0x0

    .line 1157
    const/4 v5, 0x0

    .line 1155
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1158
    .local v6, curAddrFrom:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1159
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    .line 1162
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :cond_4
    const/4 v10, 0x1

    .line 1170
    .end local v6           #curAddrFrom:Landroid/database/Cursor;
    .end local v7           #curAddrTo:Landroid/database/Cursor;
    :goto_0
    return v10

    .line 1167
    :catch_0
    move-exception v8

    .line 1168
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "MessageMms"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getMmsPriorityInt(Ljava/lang/String;)I
    .locals 2
    .parameter "pri"

    .prologue
    const/4 v0, 0x0

    .line 1245
    if-nez p1, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    const-string v1, "low"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1248
    const/16 v0, 0x80

    goto :goto_0

    .line 1249
    :cond_2
    const-string v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1250
    const/16 v0, 0x81

    goto :goto_0

    .line 1251
    :cond_3
    const-string v1, "high"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    const/16 v0, 0x82

    goto :goto_0
.end method

.method getMmsPriorityStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "priStr"

    .prologue
    const/4 v2, 0x0

    .line 1218
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1237
    :goto_0
    return-object v2

    .line 1222
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1223
    .local v1, priInt:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1225
    :pswitch_0
    const-string v2, "low"

    goto :goto_0

    .line 1227
    :pswitch_1
    const-string v2, "normal"

    goto :goto_0

    .line 1229
    :pswitch_2
    const-string v2, "high"

    goto :goto_0

    .line 1234
    .end local v1           #priInt:I
    :catch_0
    move-exception v0

    .line 1235
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1236
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1223
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getMmsSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "MessageType"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, sel:Ljava/lang/String;
    const-string v1, "content://mms/inbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    const-string v0, "m_type = 132 OR m_type = 130 OR m_type = 160"

    .line 437
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    const-string v1, "content://mms/sent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    const-string v0, "m_type = 128"

    goto :goto_0

    .line 434
    :cond_2
    const-string v1, "content://mms/drafts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSmsThreadIdForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 913
    new-instance v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;-><init>(Landroid/content/Context;)V

    .line 914
    .local v0, sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;
    invoke-virtual {v0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getSmsThreadID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 905
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 906
    :cond_0
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
