.class public Lcom/mediatek/apst/target/data/provider/message/MmsContent;
.super Ljava/lang/Object;
.source "MmsContent.java"


# static fields
.field public static final ADDR_CHARSET_VALUE:I = 0x6a

.field public static final ADDR_TYPE_RECEIVE:I = 0x89

.field public static final ADDR_TYPE_SENT:I = 0x97

.field public static final COLUMN_ADDR_ADDRESS:Ljava/lang/String; = "address"

.field public static final COLUMN_ADDR_CHARSET:Ljava/lang/String; = "charset"

.field public static final COLUMN_ADDR_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final COLUMN_ADDR_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_CT_CLS:Ljava/lang/String; = "ct_cls"

.field public static final COLUMN_CT_L:Ljava/lang/String; = "ct_l"

.field public static final COLUMN_CT_T:Ljava/lang/String; = "ct_t"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_DATE_SENT:Ljava/lang/String; = "date_sent"

.field public static final COLUMN_D_RPT:Ljava/lang/String; = "d_rpt"

.field public static final COLUMN_D_TM:Ljava/lang/String; = "d_tm"

.field public static final COLUMN_EXP:Ljava/lang/String; = "exp"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LOCKED:Ljava/lang/String; = "locked"

.field public static final COLUMN_MSG_BOX:Ljava/lang/String; = "msg_box"

.field public static final COLUMN_M_CLS:Ljava/lang/String; = "m_cls"

.field public static final COLUMN_M_ID:Ljava/lang/String; = "m_id"

.field public static final COLUMN_M_SIZE:Ljava/lang/String; = "m_size"

.field public static final COLUMN_M_TYPE:Ljava/lang/String; = "m_type"

.field public static final COLUMN_PART_CHARSET:Ljava/lang/String; = "chset"

.field public static final COLUMN_PART_CID:Ljava/lang/String; = "cid"

.field public static final COLUMN_PART_CL:Ljava/lang/String; = "cl"

.field public static final COLUMN_PART_CONTENTTYPE:Ljava/lang/String; = "ct"

.field public static final COLUMN_PART_DATAPATH:Ljava/lang/String; = "_data"

.field public static final COLUMN_PART_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_PART_MID:Ljava/lang/String; = "mid"

.field public static final COLUMN_PART_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PART_SEQ:Ljava/lang/String; = "seq"

.field public static final COLUMN_PART_TEXT:Ljava/lang/String; = "text"

.field public static final COLUMN_PRI:Ljava/lang/String; = "pri"

.field public static final COLUMN_READ:Ljava/lang/String; = "read"

.field public static final COLUMN_READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final COLUMN_RESP_ST:Ljava/lang/String; = "resp_st"

.field public static final COLUMN_RESP_TXT:Ljava/lang/String; = "resp_txt"

.field public static final COLUMN_RETR_ST:Ljava/lang/String; = "retr_st"

.field public static final COLUMN_RETR_TXT:Ljava/lang/String; = "retr_txt"

.field public static final COLUMN_RETR_TXT_CS:Ljava/lang/String; = "retr_txt_cs"

.field public static final COLUMN_RPT_A:Ljava/lang/String; = "rpt_a"

.field public static final COLUMN_RR:Ljava/lang/String; = "rr"

.field public static final COLUMN_SEEN:Ljava/lang/String; = "seen"

.field public static final COLUMN_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final COLUMN_ST:Ljava/lang/String; = "st"

.field public static final COLUMN_SUBJECT:Ljava/lang/String; = "sub"

.field public static final COLUMN_SUBJECT_CHAR_SET:Ljava/lang/String; = "sub_cs"

.field public static final COLUMN_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final COLUMN_TR_ID:Ljava/lang/String; = "tr_id"

.field public static final COLUMN_V:Ljava/lang/String; = "v"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ADDR:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CONVERSATIONS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_DRAFT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_INBOX:Landroid/net/Uri; = null

.field public static final CONTENT_URI_OB:Landroid/net/Uri; = null

.field public static final CONTENT_URI_PART:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SENT:Landroid/net/Uri; = null

.field public static final NOTIFY_MMS:Ljava/lang/String; = "130"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "content://mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_PART:Landroid/net/Uri;

    .line 61
    const-string v0, "content://mms/addr"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_ADDR:Landroid/net/Uri;

    .line 63
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_OB:Landroid/net/Uri;

    .line 65
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_INBOX:Landroid/net/Uri;

    .line 68
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_SENT:Landroid/net/Uri;

    .line 70
    const-string v0, "content://mms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_DRAFT:Landroid/net/Uri;

    .line 73
    const-string v0, "content://mms-mms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_CONVERSATIONS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToMms(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/Mms;
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v11, -0x1

    .line 199
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-eq v4, v11, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v4, v7, :cond_2

    :cond_0
    move-object v2, v3

    .line 324
    :cond_1
    :goto_0
    return-object v2

    .line 205
    :cond_2
    new-instance v2, Lcom/mediatek/apst/util/entity/message/Mms;

    invoke-direct {v2}, Lcom/mediatek/apst/util/entity/message/Mms;-><init>()V

    .line 210
    .local v2, mms:Lcom/mediatek/apst/util/entity/message/Mms;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, colId:I
    if-eq v11, v0, :cond_3

    .line 212
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 215
    :cond_3
    const-string v4, "thread_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 216
    if-eq v11, v0, :cond_4

    .line 217
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 221
    :cond_4
    const-string v4, "date"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 222
    if-eq v11, v0, :cond_5

    .line 223
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setDate(J)V

    .line 226
    :cond_5
    const-string v4, "msg_box"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 227
    if-eq v11, v0, :cond_6

    .line 228
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setBox(I)V

    .line 231
    :cond_6
    const-string v4, "read"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 232
    if-eq v11, v0, :cond_7

    .line 233
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_15

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setRead(Z)V

    .line 236
    :cond_7
    const-string v4, "locked"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 237
    if-eq v11, v0, :cond_8

    .line 238
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_16

    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setLocked(Z)V

    .line 242
    :cond_8
    const-string v4, "sub"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 243
    if-eq v11, v0, :cond_9

    .line 244
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setSubject(Ljava/lang/String;)V

    .line 247
    :cond_9
    const-string v4, "ct_t"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 248
    if-eq v11, v0, :cond_a

    .line 249
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setContentType(Ljava/lang/String;)V

    .line 253
    :cond_a
    const-string v4, "m_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 254
    if-eq v11, v0, :cond_b

    .line 255
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setM_id(Ljava/lang/String;)V

    .line 259
    :cond_b
    const-string v4, "sub_cs"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    if-eq v11, v0, :cond_c

    .line 261
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setSub_cs(Ljava/lang/String;)V

    .line 265
    :cond_c
    const-string v4, "m_cls"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 266
    if-eq v11, v0, :cond_d

    .line 267
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setM_cls(Ljava/lang/String;)V

    .line 271
    :cond_d
    const-string v4, "m_type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 272
    if-eq v11, v0, :cond_e

    .line 273
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setM_type(Ljava/lang/String;)V

    .line 277
    :cond_e
    const-string v4, "v"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 278
    if-eq v11, v0, :cond_f

    .line 279
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setV(Ljava/lang/String;)V

    .line 283
    :cond_f
    const-string v4, "m_size"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 284
    if-eq v11, v0, :cond_10

    .line 285
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setM_size(Ljava/lang/String;)V

    .line 289
    :cond_10
    const-string v4, "tr_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 290
    if-eq v11, v0, :cond_11

    .line 291
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setTr_id(Ljava/lang/String;)V

    .line 295
    :cond_11
    const-string v4, "d_rpt"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 296
    if-eq v11, v0, :cond_12

    .line 297
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setD_rpt(Ljava/lang/String;)V

    .line 301
    :cond_12
    const-string v4, "seen"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 302
    if-eq v11, v0, :cond_13

    .line 303
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Mms;->setSeen(Ljava/lang/String;)V

    .line 307
    :cond_13
    const-string v4, "date_sent"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 308
    if-eq v11, v0, :cond_14

    .line 309
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setDate_sent(I)V

    .line 314
    :cond_14
    const-string v4, "sim_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 315
    if-eq v11, v0, :cond_1

    .line 316
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setSimId(I)V

    .line 318
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Global;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setSimName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 320
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-static {v4, v3, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_15
    move v4, v6

    .line 233
    goto/16 :goto_1

    :cond_16
    move v4, v6

    .line 238
    goto/16 :goto_2
.end method

.method public static cursorToMmsPart(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/MmsPart;
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 334
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    :cond_0
    move-object v2, v3

    .line 397
    :cond_1
    :goto_0
    return-object v2

    .line 339
    :cond_2
    new-instance v2, Lcom/mediatek/apst/util/entity/message/MmsPart;

    invoke-direct {v2}, Lcom/mediatek/apst/util/entity/message/MmsPart;-><init>()V

    .line 343
    .local v2, mmsPart:Lcom/mediatek/apst/util/entity/message/MmsPart;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, colId:I
    if-eq v6, v0, :cond_3

    .line 345
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 348
    :cond_3
    const-string v4, "mid"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 349
    if-eq v6, v0, :cond_4

    .line 350
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setMmsId(J)V

    .line 353
    :cond_4
    const-string v4, "seq"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 354
    if-eq v6, v0, :cond_5

    .line 355
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setSequence(I)V

    .line 358
    :cond_5
    const-string v4, "ct"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 359
    if-eq v6, v0, :cond_6

    .line 360
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setContentType(Ljava/lang/String;)V

    .line 363
    :cond_6
    const-string v4, "name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 364
    if-eq v6, v0, :cond_7

    .line 365
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setName(Ljava/lang/String;)V

    .line 368
    :cond_7
    const-string v4, "chset"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 369
    if-eq v6, v0, :cond_8

    .line 370
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setCharset(Ljava/lang/String;)V

    .line 373
    :cond_8
    const-string v4, "cid"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 374
    if-eq v6, v0, :cond_9

    .line 375
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setCid(Ljava/lang/String;)V

    .line 378
    :cond_9
    const-string v4, "cl"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 379
    if-eq v6, v0, :cond_a

    .line 380
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setCl(Ljava/lang/String;)V

    .line 383
    :cond_a
    const-string v4, "_data"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 384
    if-eq v6, v0, :cond_b

    .line 385
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setDataPath(Ljava/lang/String;)V

    .line 388
    :cond_b
    const-string v4, "text"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 389
    if-eq v6, v0, :cond_1

    .line 390
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 393
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 394
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 444
    sget-object v1, Lcom/mediatek/apst/target/util/StringUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 446
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 449
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getParts(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/message/MmsPart;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/message/MmsPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, mMarts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v2, parts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/message/MmsPart;

    .line 411
    .local v1, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getMmsId()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 412
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .end local v1           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    :cond_1
    return-object v2
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 426
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v2

    .line 430
    :cond_1
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 434
    sget-object v2, Lcom/mediatek/apst/target/util/StringUtils;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 435
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method
