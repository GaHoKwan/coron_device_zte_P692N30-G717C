.class Lcom/mediatek/bluetooth/map/MmsController;
.super Lcom/mediatek/bluetooth/map/Controller;
.source "MmsController.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
.implements Lcom/mediatek/bluetooth/map/MmsConnection$ConnectionListener;


# static fields
.field private static final ADDRESS_CHARSET_COLUMN:I = 0x2

.field private static final ADDRESS_COLUMN:I = 0x0

.field private static final ADDRESS_TYPE_BCC:I = 0x81

.field private static final ADDRESS_TYPE_CC:I = 0x82

.field private static final ADDRESS_TYPE_COLUMN:I = 0x1

.field private static final ADDRESS_TYPE_FROM:I = 0x89

.field private static final ADDRESS_TYPE_TO:I = 0x97

.field private static final BASE_FROM_COLUMN:I = 0x2

.field private static final BASE_ID_COLUMN:I = 0x0

.field private static final BASE_READ_COLUMN:I = 0x1

.field private static final BASE_TO_COLUMN:I = 0x3

.field private static final CC_COLUMN:I = 0x6

.field private static final CONTENT_TYPE_COLUMN:I = 0xe

.field private static final DATE_COLUMN:I = 0x3

.field private static final DEFAULT_PROJECTION:[Ljava/lang/String; = null

.field private static final EXTEND_DATE_COLUMN:I = 0x0

.field private static final EXTEND_PRIORITY_COLUMN:I = 0x3

.field private static final EXTEND_SUBJECT_CHARSET_COLUMN:I = 0x2

.field private static final EXTEND_SUBJECT_COLUMN:I = 0x1

.field private static final FROM_COLUMN:I = 0x4

.field private static final ID_COLUMN:I = 0x0

.field private static final INVALID_THREAD_ID:I = -0x1

.field private static final MESSAGE_BOX_COLUMN:I = 0xc

.field private static final MESSAGE_ID_COLUMN:I = 0xd

.field private static final MESSAGE_SIZE_COLUMN:I = 0x7

.field private static final MESSAGE_TYPE_DELETE:I = 0x64

.field private static final MMS_READ_STATUS:I = 0x1

.field private static final MMS_UNREAD_STATUS:I = 0x0

.field private static final MMS_VERSION_COLUMN:I = 0xf

.field private static final PART_CHARSET_COLUMN:I = 0x0

.field private static final PART_CONTENT_TYPE_COLUMN:I = 0x1

.field private static final PART_PROJECTION:[Ljava/lang/String; = null

.field private static final PART_TEXT_COLUMN:I = 0x2

.field private static final PRIORITY_COLUMN:I = 0x8

.field private static final READ_COLUMN:I = 0xa

.field private static final STATUS_COLUMN:I = 0x9

.field private static final SUBJECT_CHARSET_COLUMN:I = 0x2

.field private static final SUBJECT_COLUMN:I = 0x1

.field private static final THREAD_ID_COLUMN:I = 0xb

.field private static final TO_COLUMN:I = 0x5


# instance fields
.field private final ADDRESS_PROJECTION:[Ljava/lang/String;

.field private BASE_PROJECTION:[Ljava/lang/String;

.field private EXTEND_PROJECTION:[Ljava/lang/String;

.field private ID_PROJECTION:[Ljava/lang/String;

.field private SIZE_PROJECTION:[Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mInstance:Lcom/mediatek/bluetooth/map/Instance;

.field private mInstanceId:I

.field private mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

.field private mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

.field private mSimId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "from"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/map/MmsController;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 187
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "chset"

    aput-object v1, v0, v3

    const-string v1, "ct"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/bluetooth/map/MmsController;->PART_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/map/Instance;I)V
    .locals 6
    .parameter "context"
    .parameter "instance"
    .parameter "simId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Controller;-><init>()V

    .line 104
    const-string v0, "MMSController"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->TAG:Ljava/lang/String;

    .line 105
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->ID_PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "read"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->BASE_PROJECTION:[Ljava/lang/String;

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v3

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    const-string v1, "pri"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->EXTEND_PROJECTION:[Ljava/lang/String;

    .line 134
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "m_size"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->SIZE_PROJECTION:[Ljava/lang/String;

    .line 177
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "charset"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->ADDRESS_PROJECTION:[Ljava/lang/String;

    .line 218
    const/16 v0, 0x8

    iput v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mType:I

    .line 220
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    .line 221
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    .line 222
    iput p3, p0, Lcom/mediatek/bluetooth/map/MmsController;->mSimId:I

    .line 223
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mInstanceId:I

    .line 224
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/MmsController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    .line 225
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/MmsController;->onStart()V

    .line 226
    return-void
.end method

.method private composeMessageItem(JLjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/bluetooth/map/cache/MessageItem;
    .locals 16
    .parameter "id"
    .parameter "from"
    .parameter "to"
    .parameter "read"

    .prologue
    .line 689
    new-instance v8, Lcom/mediatek/bluetooth/map/cache/MessageItem;

    invoke-direct {v8}, Lcom/mediatek/bluetooth/map/cache/MessageItem;-><init>()V

    .line 696
    .local v8, msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "composeMessageItem(): id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", read"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 698
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->revertLoadStatus(I)I

    move-result v12

    .line 700
    .local v12, recipientStatus:I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->revertReadStatus(I)I

    move-result v11

    .line 701
    .local v11, readStatus:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_1

    .line 702
    const-string v2, "invalid read status"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 703
    const/4 v8, 0x0

    .line 755
    .end local v8           #msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    :cond_0
    :goto_0
    return-object v8

    .line 706
    .restart local v8       #msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/mediatek/bluetooth/map/MmsController;->getFirstTextFromParts(J)Ljava/lang/String;

    move-result-object v15

    .line 708
    .local v15, text:Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lcom/mediatek/bluetooth/map/MmsController;->getMessageUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 709
    .local v3, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/MmsController;->EXTEND_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 711
    .local v9, msgCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 712
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no the record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 713
    const/4 v8, 0x0

    goto :goto_0

    .line 716
    :cond_3
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->revertPriority(I)Z

    move-result v10

    .line 718
    .local v10, priority:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/bluetooth/map/MmsController;->mType:I

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setHandle(J)V

    .line 719
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderAddr(Ljava/lang/String;)V

    .line 720
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderName(Ljava/lang/String;)V

    .line 721
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReplyAddr(Ljava/lang/String;)V

    .line 722
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientName(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientAddr(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/bluetooth/map/MmsController;->mType:I

    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setMsgType(I)V

    .line 725
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setText(Z)V

    .line 726
    invoke-virtual {v8, v12}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientStatus(I)V

    .line 727
    invoke-virtual {v8, v11}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReadStatus(I)V

    .line 728
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setProtected(Z)V

    .line 730
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->getUtf8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 731
    .local v14, subject:Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 732
    :cond_4
    move-object v14, v15

    .line 734
    :cond_5
    invoke-virtual {v8, v14}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSubject(Ljava/lang/String;)V

    .line 736
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setDatetime(J)V

    .line 740
    const/16 v2, 0x1c8

    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setAttachSize(I)V

    .line 741
    invoke-virtual {v8, v10}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setPriority(Z)V

    .line 744
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/MmsController;->SIZE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 749
    .local v13, sizeCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 750
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 751
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSize(I)V

    .line 753
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 725
    .end local v13           #sizeCursor:Landroid/database/Cursor;
    .end local v14           #subject:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private composeMessageItem(Landroid/database/Cursor;JLjava/lang/String;Ljava/lang/String;)Lcom/mediatek/bluetooth/map/cache/MessageItem;
    .locals 15
    .parameter "cs"
    .parameter "id"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 761
    new-instance v9, Lcom/mediatek/bluetooth/map/cache/MessageItem;

    invoke-direct {v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;-><init>()V

    .line 771
    .local v9, msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->revertLoadStatus(I)I

    move-result v13

    .line 772
    .local v13, recipientStatus:I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_0

    .line 773
    const/4 v9, 0x0

    .line 821
    .end local v9           #msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    :goto_0
    return-object v9

    .line 776
    .restart local v9       #msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    :cond_0
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->revertReadStatus(I)I

    move-result v12

    .line 778
    .local v12, readStatus:I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_1

    .line 779
    const/4 v9, 0x0

    goto :goto_0

    .line 784
    :cond_1
    const/4 v8, 0x0

    .line 785
    .local v8, isText:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/part"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 786
    .local v3, partUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "text"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 788
    .local v10, partCursor:Landroid/database/Cursor;
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 790
    const/4 v8, 0x1

    .line 794
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 796
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->revertPriority(I)Z

    move-result v11

    .line 798
    .local v11, priority:Z
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/MmsController;->getUtf8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 799
    .local v14, subject:Ljava/lang/String;
    if-nez v14, :cond_4

    .line 800
    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->getFirstTextFromParts(J)Ljava/lang/String;

    move-result-object v14

    .line 802
    :cond_4
    invoke-virtual {v9, v14}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSubject(Ljava/lang/String;)V

    .line 803
    iget v2, p0, Lcom/mediatek/bluetooth/map/MmsController;->mType:I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setHandle(J)V

    .line 805
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v9, v4, v5}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setDatetime(J)V

    .line 806
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderAddr(Ljava/lang/String;)V

    .line 807
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderName(Ljava/lang/String;)V

    .line 808
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReplyAddr(Ljava/lang/String;)V

    .line 809
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientName(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientAddr(Ljava/lang/String;)V

    .line 811
    iget v2, p0, Lcom/mediatek/bluetooth/map/MmsController;->mType:I

    invoke-virtual {v9, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setMsgType(I)V

    .line 812
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSize(I)V

    .line 813
    invoke-virtual {v9, v8}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setText(Z)V

    .line 814
    invoke-virtual {v9, v13}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientStatus(I)V

    .line 816
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setAttachSize(I)V

    .line 817
    invoke-virtual {v9, v12}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReadStatus(I)V

    .line 818
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setProtected(Z)V

    .line 819
    invoke-virtual {v9, v11}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setPriority(Z)V

    goto/16 :goto_0
.end method

.method private convertFilterToSelection(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Z
    .locals 14
    .parameter "req"
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/bluetooth/map/cache/MessageListRequest;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 862
    .local p3, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getStartTime()J

    move-result-wide v10

    .line 863
    .local v10, startTimeMillis:J
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getEndTime()J

    move-result-wide v1

    .line 864
    .local v1, endTimeMillis:J
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getReadStatus()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/mediatek/bluetooth/map/MmsController;->convertReadStatus(I)I

    move-result v6

    .line 866
    .local v6, readStatus:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getFolder()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/bluetooth/map/MmsController;->convertMailboxType(Ljava/lang/String;)I

    move-result v4

    .line 867
    .local v4, mailbox:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getOrignator()Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, orignator:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getRecipient()Ljava/lang/String;

    move-result-object v7

    .line 873
    .local v7, recepiet:Ljava/lang/String;
    sget v12, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM1:I

    iget v13, p0, Lcom/mediatek/bluetooth/map/MmsController;->mSimId:I

    if-ne v12, v13, :cond_2

    .line 875
    sget v3, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM2:I

    .local v3, index:I
    :goto_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getTotalSlotCount()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 876
    iget-object v12, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSimIdBySlotId(Landroid/content/Context;I)J

    move-result-wide v8

    .line 877
    .local v8, simid:J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_1

    .line 879
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 880
    const-string v12, " AND "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    :cond_0
    const-string v12, "sim_id<>?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 887
    .end local v3           #index:I
    .end local v8           #simid:J
    :cond_2
    iget-object v12, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    iget v13, p0, Lcom/mediatek/bluetooth/map/MmsController;->mSimId:I

    invoke-static {v12, v13}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSimIdBySlotId(Landroid/content/Context;I)J

    move-result-wide v8

    .line 888
    .restart local v8       #simid:J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_a

    .line 889
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 890
    const-string v12, " AND "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_3
    const-string v12, "sim_id=?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    .end local v8           #simid:J
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 903
    const-string v12, " AND "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_5
    const/16 v12, 0x64

    if-eq v4, v12, :cond_b

    .line 906
    const-string v12, "thread_id<>?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :goto_1
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_7

    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-lez v12, :cond_7

    .line 914
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 915
    const-string v12, " AND "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_6
    const-string v12, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const-string v12, " between ? AND ?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string v12, " AND "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_7
    const/4 v12, -0x1

    if-eq v6, v12, :cond_9

    .line 925
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 926
    const-string v12, " AND "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_8
    const-string v12, "read=?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_9
    const/4 v12, 0x1

    :goto_2
    return v12

    .line 896
    .restart local v8       #simid:J
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Err, No message is in SIM slot "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/mediatek/bluetooth/map/MmsController;->mSimId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 897
    const/4 v12, 0x0

    goto :goto_2

    .line 908
    .end local v8           #simid:J
    :cond_b
    const-string v12, "thread_id=?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private convertMailboxType(Ljava/lang/String;)I
    .locals 3
    .parameter "mapMailboxType"

    .prologue
    const/4 v0, -0x1

    .line 955
    if-nez p1, :cond_0

    .line 970
    :goto_0
    return v0

    .line 958
    :cond_0
    const-string v1, "inbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    const/4 v0, 0x1

    goto :goto_0

    .line 960
    :cond_1
    const-string v1, "outbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 961
    const/4 v0, 0x4

    goto :goto_0

    .line 962
    :cond_2
    const-string v1, "sent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 963
    const/4 v0, 0x2

    goto :goto_0

    .line 964
    :cond_3
    const-string v1, "draft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 965
    const/4 v0, 0x3

    goto :goto_0

    .line 966
    :cond_4
    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 967
    const/16 v0, 0x64

    goto :goto_0

    .line 969
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertMailboxType(): the mail box is invalid->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private convertMaskToProjection(I)[Ljava/lang/String;
    .locals 1
    .parameter "mask"

    .prologue
    .line 855
    sget-object v0, Lcom/mediatek/bluetooth/map/MmsController;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private convertReadStatus(I)I
    .locals 2
    .parameter "mapReadStatus"

    .prologue
    .line 831
    packed-switch p1, :pswitch_data_0

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other map state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 838
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 833
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 835
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAddress(JLjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 9
    .parameter "msgId"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1086
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/map/MmsController;->getAddressUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 1087
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MmsController;->ADDRESS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1088
    .local v6, addrCursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1090
    .local v7, type:I
    sparse-switch v7, :sswitch_data_0

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have no interest in the message type,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :sswitch_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1096
    :sswitch_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string v0, ";"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1103
    .end local v7           #type:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1105
    return-void

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private getAddressUri(J)Landroid/net/Uri;
    .locals 3
    .parameter "messageId"

    .prologue
    .line 1070
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1071
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/addr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getFirstTextFromParts(J)Ljava/lang/String;
    .locals 13
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1018
    const/4 v9, 0x0

    .line 1019
    .local v9, text:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1020
    .local v6, charset:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/map/MmsController;->getPartUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/mediatek/bluetooth/map/MmsController;->PART_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1021
    .local v8, partCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1022
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1049
    :goto_0
    return-object v3

    .line 1027
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1028
    .local v12, type:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "round :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 1029
    const-string v0, "text/plain"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1031
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1037
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v10, v9

    .line 1041
    .end local v9           #text:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    .local v10, text:Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_3

    if-eqz v6, :cond_3

    .line 1043
    :try_start_0
    invoke-virtual {v10, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 1044
    .local v11, textBytes:[B
    new-instance v9, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {v9, v11, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #text:Ljava/lang/String;
    .end local v11           #textBytes:[B
    .restart local v9       #text:Ljava/lang/String;
    :goto_3
    move-object v3, v9

    .line 1049
    goto :goto_0

    .line 1034
    .restart local v12       #type:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 1036
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1039
    .end local v12           #type:Ljava/lang/String;
    :cond_2
    const-string v0, "no any part "

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    move-object v10, v9

    .end local v9           #text:Ljava/lang/String;
    .restart local v10       #text:Ljava/lang/String;
    goto :goto_2

    .line 1045
    :catch_0
    move-exception v7

    .line 1046
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    move-object v9, v10

    .end local v10           #text:Ljava/lang/String;
    .restart local v9       #text:Ljava/lang/String;
    goto :goto_3
.end method

.method private getMailboxUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "mailbox"

    .prologue
    .line 1054
    packed-switch p1, :pswitch_data_0

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMailboxUri(): the mail box is invalid->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 1065
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1056
    :pswitch_0
    sget-object v0, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1058
    :pswitch_1
    sget-object v0, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1060
    :pswitch_2
    sget-object v0, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1062
    :pswitch_3
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1054
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getMessageUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 1076
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getPartUri(J)Landroid/net/Uri;
    .locals 3
    .parameter "messageId"

    .prologue
    .line 1080
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1081
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getUtf8String(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawData"

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/16 v1, 0x6a

    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1011
    .local v0, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .end local v0           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1109
    if-eqz p1, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1110
    const/4 v0, 0x1

    .line 1112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1134
    if-eqz p1, :cond_0

    .line 1135
    const-string v0, "MMSController"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    return-void
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 1125
    if-nez p1, :cond_0

    .line 1126
    const/4 v0, 0x0

    .line 1131
    :goto_0
    return-object v0

    .line 1129
    :cond_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1130
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 1131
    goto :goto_0
.end method

.method private revertLoadStatus(I)I
    .locals 1
    .parameter "mmsStatus"

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method private revertPriority(I)Z
    .locals 1
    .parameter "mmsPriority"

    .prologue
    .line 993
    packed-switch p1, :pswitch_data_0

    .line 999
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 995
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
    .end packed-switch
.end method

.method private revertReadStatus(I)I
    .locals 1
    .parameter "mmsReadStatus"

    .prologue
    .line 843
    packed-switch p1, :pswitch_data_0

    .line 849
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 845
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 847
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private splitAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "addresses"

    .prologue
    .line 1116
    if-nez p1, :cond_0

    .line 1117
    const/4 v0, 0x0

    .line 1120
    :goto_0
    return-object v0

    .line 1119
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, address:[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public clearDeletedMessage()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 618
    const-string v0, "clearDeletedMessage()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 621
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    .line 624
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 625
    .local v9, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 627
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 628
    .local v8, id:Ljava/lang/Long;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 631
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 632
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 634
    .local v10, thread_id:I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_1

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v10           #thread_id:I
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 645
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cs:Landroid/database/Cursor;
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #id:Ljava/lang/Long;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 646
    return-void

    .line 637
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cs:Landroid/database/Cursor;
    .restart local v7       #entry:Ljava/util/Map$Entry;
    .restart local v8       #id:Ljava/lang/Long;
    .restart local v10       #thread_id:I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public deleteMessage(J)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessage():id is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    .line 562
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 564
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 565
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 567
    .local v9, thread_id:I
    if-ne v9, v10, :cond_0

    .line 568
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :goto_0
    const/4 v8, 0x1

    .line 577
    .local v8, flag:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 582
    .end local v9           #thread_id:I
    :goto_1
    return v8

    .line 571
    .end local v8           #flag:Z
    .restart local v9       #thread_id:I
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 572
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 579
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #thread_id:I
    :cond_1
    const-string v0, "the message does not exist in SMS provider"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 580
    const/4 v8, 0x0

    .restart local v8       #flag:Z
    goto :goto_1
.end method

.method public deregisterListener()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/mediatek/bluetooth/map/Controller;->deregisterListener()V

    .line 248
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    .line 252
    :cond_0
    return-void
.end method

.method public getMessage(Lcom/mediatek/bluetooth/map/cache/MessageRequest;)Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .locals 23
    .parameter "req"

    .prologue
    .line 481
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 484
    .local v14, orignator:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getMessageId()J

    move-result-wide v6

    .line 485
    .local v6, id:J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/mediatek/bluetooth/map/MmsController;->getMessageUri(J)Landroid/net/Uri;

    move-result-object v11

    .line 486
    .local v11, messageUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 490
    .local v15, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->isAttachDelivered()Z

    move-result v3

    .line 491
    .local v3, attachment:Z
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getMessageId()J

    move-result-wide v9

    .line 492
    .local v9, messageID:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/MmsController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/bluetooth/map/Instance;->getBMessageObject()Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    move-result-object v13

    .line 493
    .local v13, msg:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getMessage(): id is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",attachment is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getFractionReq()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 497
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->retrieveNextPartion()V

    .line 553
    :goto_0
    return-object v13

    .line 502
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v16

    .line 503
    .local v16, pduPersister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 507
    .end local v16           #pduPersister:Lcom/google/android/mms/pdu/PduPersister;
    :goto_1
    new-instance v12, Lcom/mediatek/bluetooth/map/mime/MmsMime;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0, v15}, Lcom/mediatek/bluetooth/map/mime/MmsMime;-><init>(Landroid/content/ContentResolver;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 509
    .local v12, mime:Lcom/mediatek/bluetooth/map/mime/MmsMime;
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->reset()V

    .line 510
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setEncoding(I)Z

    .line 511
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setCharset(I)Z

    .line 512
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setLang(I)Z

    .line 513
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setMessageType(I)Z

    .line 515
    new-instance v20, Lcom/mediatek/bluetooth/map/VCard;

    invoke-direct/range {v20 .. v20}, Lcom/mediatek/bluetooth/map/VCard;-><init>()V

    .line 517
    .local v20, vCard:Lcom/mediatek/bluetooth/map/VCard;
    invoke-virtual {v12}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getHeader()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    .line 518
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/bluetooth/map/MmsController;->isEmailAddress(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 519
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/mediatek/bluetooth/map/VCard;->setEmail(Ljava/lang/String;)V

    .line 523
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/bluetooth/map/VCard;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setOrignator(Ljava/lang/String;)Z

    .line 526
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v17, recipient:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getHeader()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->splitAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 528
    .local v19, toList:[Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 529
    move-object/from16 v2, v19

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v8, :cond_3

    aget-object v18, v2, v5

    .line 530
    .local v18, to:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/bluetooth/map/VCard;->reset()V

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->isEmailAddress(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 532
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/VCard;->setEmail(Ljava/lang/String;)V

    .line 536
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/bluetooth/map/VCard;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 504
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    .end local v12           #mime:Lcom/mediatek/bluetooth/map/mime/MmsMime;
    .end local v17           #recipient:Ljava/lang/StringBuilder;
    .end local v18           #to:Ljava/lang/String;
    .end local v19           #toList:[Ljava/lang/String;
    .end local v20           #vCard:Lcom/mediatek/bluetooth/map/VCard;
    :catch_0
    move-exception v4

    .line 505
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v12       #mime:Lcom/mediatek/bluetooth/map/mime/MmsMime;
    .restart local v20       #vCard:Lcom/mediatek/bluetooth/map/VCard;
    :cond_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/mediatek/bluetooth/map/VCard;->setTelephone(Ljava/lang/String;)V

    goto :goto_2

    .line 534
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    .restart local v17       #recipient:Ljava/lang/StringBuilder;
    .restart local v18       #to:Ljava/lang/String;
    .restart local v19       #toList:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/VCard;->setTelephone(Ljava/lang/String;)V

    goto :goto_4

    .line 538
    .end local v18           #to:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->addRecipient(Ljava/lang/String;)Z

    .line 542
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setReadStatus(I)V

    .line 545
    :try_start_1
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFile()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeTo(Ljava/io/File;Lcom/mediatek/bluetooth/map/mime/MimeBase;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    :goto_5
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFile()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setContentSize(Ljava/io/File;)Z

    .line 552
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->fragmentIfNeccessary()V

    goto/16 :goto_0

    .line 546
    :catch_1
    move-exception v4

    .line 547
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public getMessageList(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;)Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    .locals 31
    .parameter "req"

    .prologue
    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getListSize()I

    move-result v18

    .line 256
    .local v18, listSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getListOffset()I

    move-result v22

    .line 257
    .local v22, offset:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getFolder()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/MmsController;->convertMailboxType(Ljava/lang/String;)I

    move-result v19

    .line 258
    .local v19, mailbox:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getOrignator()Ljava/lang/String;

    move-result-object v23

    .line 259
    .local v23, orignator:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getRecipient()Ljava/lang/String;

    move-result-object v26

    .line 260
    .local v26, recipient:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getMaxSubjectLen()I

    move-result v20

    .line 261
    .local v20, maxSubjextLen:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getPriority()I

    move-result v25

    .line 262
    .local v25, priority:I
    const/4 v15, 0x0

    .line 265
    .local v15, index:I
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 267
    .local v5, mailboxUri:Landroid/net/Uri;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v28, selection:Ljava/lang/StringBuilder;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v29, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->getDefault(Landroid/content/Context;)Lcom/mediatek/bluetooth/map/ContactsAdapter;

    move-result-object v12

    .line 272
    .local v12, adapter:Lcom/mediatek/bluetooth/map/ContactsAdapter;
    const/16 v24, 0x0

    .line 273
    .local v24, orignatortAddrList:Ljava/lang/String;
    const/16 v27, 0x0

    .line 274
    .local v27, recipientAddrList:Ljava/lang/String;
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 275
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->queryNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 281
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_2

    .line 282
    const/16 v16, 0x0

    .line 362
    :goto_1
    return-object v16

    .line 276
    :cond_1
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 277
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->queryNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 285
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMessageList(): mSimId is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/bluetooth/map/MmsController;->mSimId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/map/MmsController;->convertFilterToSelection(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 289
    const/16 v16, 0x0

    goto :goto_1

    .line 292
    :cond_3
    const/16 v4, 0x64

    move/from16 v0, v19

    if-eq v0, v4, :cond_4

    .line 293
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->getMailboxUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 294
    if-nez v5, :cond_4

    .line 295
    const-string v4, "unrecognized mailbox uri"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 296
    const/16 v16, 0x0

    goto :goto_1

    .line 302
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/map/MmsController;->BASE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 311
    .local v17, listCursor:Landroid/database/Cursor;
    if-nez v17, :cond_5

    .line 312
    const/16 v16, 0x0

    goto :goto_1

    .line 307
    .end local v17           #listCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 308
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 315
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v17       #listCursor:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/MmsController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/map/Instance;->getMsgListRspCache()Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    move-result-object v16

    .line 317
    .local v16, list:Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listsize is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",current size"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->getCurrentSize()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 320
    if-lez v18, :cond_6

    if-lez v22, :cond_6

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 321
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 324
    :cond_6
    const/16 v21, 0x0

    .line 325
    .local v21, newMessageFlag:Z
    :cond_7
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v18, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->getCurrentSize()I

    move-result v4

    move/from16 v0, v18

    if-ge v4, v0, :cond_d

    .line 326
    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 327
    .local v11, read:I
    const/4 v4, 0x1

    if-ne v11, v4, :cond_9

    .line 328
    const/16 v21, 0x1

    .line 331
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 332
    .local v7, msgId:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v14, fromList:Ljava/lang/StringBuilder;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v30, toList:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v7, v8, v14, v1}, Lcom/mediatek/bluetooth/map/MmsController;->getAddress(JLjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 337
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 338
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/MmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v12, v4, v0, v1}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->doesPhoneNumberMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 342
    :cond_a
    if-eqz v26, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 343
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/MmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v12, v4, v0, v1}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->doesPhoneNumberMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 348
    :cond_b
    if-lez v18, :cond_c

    .line 349
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/bluetooth/map/MmsController;->composeMessageItem(JLjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/bluetooth/map/cache/MessageItem;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->addMessageItem(Lcom/mediatek/bluetooth/map/cache/MessageItem;)Z

    .line 351
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 353
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->addSize(I)Z

    goto/16 :goto_2

    .line 356
    .end local v7           #msgId:J
    .end local v11           #read:I
    .end local v14           #fromList:Ljava/lang/StringBuilder;
    .end local v30           #toList:Ljava/lang/StringBuilder;
    :cond_d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 357
    if-eqz v21, :cond_e

    .line 358
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->setNewMessage()Z

    .line 360
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->declineListOffset(I)V

    goto/16 :goto_1
.end method

.method public onSendResult(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 682
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/MmsConnection;->unregisterListener()V

    .line 686
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/MmsController;->clearDeletedMessage()V

    .line 233
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/MmsController;->deregisterListener()V

    .line 234
    return-void
.end method

.method public pushMessage(Lcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 35
    .parameter "obj"

    .prologue
    .line 366
    const-string v3, "pushMessage()"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 367
    const/16 v26, 0x0

    .line 369
    .local v26, ret:Z
    const/4 v4, 0x0

    .line 370
    .local v4, msgUri:Landroid/net/Uri;
    const/16 v25, 0x0

    .line 371
    .local v25, pduPersister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContentSize()J

    move-result-wide v29

    .line 372
    .local v29, size:J
    new-instance v22, Lcom/mediatek/bluetooth/map/mime/MmsMime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/mime/MmsMime;-><init>(Landroid/content/ContentResolver;)V

    .line 373
    .local v22, mime:Lcom/mediatek/bluetooth/map/mime/MmsMime;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFolder()Ljava/lang/String;

    move-result-object v12

    .line 374
    .local v12, folder:Ljava/lang/String;
    if-nez v12, :cond_1

    const/16 v18, -0x1

    .line 378
    .local v18, mail:I
    :goto_0
    const-wide/16 v20, -0x1

    .line 379
    .local v20, messageid:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/bluetooth/map/MmsController;->mSimId:I

    invoke-static {v3, v5}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSimIdBySlotId(Landroid/content/Context;I)J

    move-result-wide v27

    .line 381
    .local v27, sim:J
    const-wide/16 v5, -0x1

    cmp-long v3, v27, v5

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    .line 382
    :cond_0
    const/4 v3, 0x0

    .line 475
    :goto_1
    return v3

    .line 374
    .end local v18           #mail:I
    .end local v20           #messageid:J
    .end local v27           #sim:J
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/bluetooth/map/MmsController;->convertMailboxType(Ljava/lang/String;)I

    move-result v18

    goto :goto_0

    .line 385
    .restart local v18       #mail:I
    .restart local v20       #messageid:J
    .restart local v27       #sim:J
    :cond_2
    const/4 v14, 0x0

    .line 387
    .local v14, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14           #in:Ljava/io/FileInputStream;
    .local v15, in:Ljava/io/FileInputStream;
    move-object v14, v15

    .line 392
    .end local v15           #in:Ljava/io/FileInputStream;
    .restart local v14       #in:Ljava/io/FileInputStream;
    :goto_2
    new-instance v23, Lcom/mediatek/bluetooth/map/mime/MimeParser;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/mediatek/bluetooth/map/mime/MimeParser;-><init>(Ljava/io/InputStream;Lcom/mediatek/bluetooth/map/mime/MimeBase;)V

    .line 394
    .local v23, parser:Lcom/mediatek/bluetooth/map/mime/MimeParser;
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->parse()V

    .line 396
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->isHeaderComplete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getRecipient()Ljava/util/ArrayList;

    move-result-object v32

    .line 407
    .local v32, tos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v34, Lcom/mediatek/bluetooth/map/VCard;

    invoke-direct/range {v34 .. v34}, Lcom/mediatek/bluetooth/map/VCard;-><init>()V

    .line 409
    .local v34, vcard:Lcom/mediatek/bluetooth/map/VCard;
    const/16 v16, 0x0

    .local v16, index:I
    :goto_4
    if-eqz v32, :cond_3

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 410
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/map/VCard;->parse(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/bluetooth/map/VCard;->getTelephone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 412
    .local v31, to:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->addToField(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/bluetooth/map/VCard;->reset()V

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 409
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 388
    .end local v16           #index:I
    .end local v23           #parser:Lcom/mediatek/bluetooth/map/mime/MimeParser;
    .end local v31           #to:Ljava/lang/String;
    .end local v32           #tos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34           #vcard:Lcom/mediatek/bluetooth/map/VCard;
    :catch_0
    move-exception v11

    .line 389
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 397
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .restart local v23       #parser:Lcom/mediatek/bluetooth/map/mime/MimeParser;
    :catch_1
    move-exception v11

    .line 398
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 417
    .end local v11           #e:Ljava/io/IOException;
    .restart local v16       #index:I
    .restart local v32       #tos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34       #vcard:Lcom/mediatek/bluetooth/map/VCard;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getOrignator()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/map/VCard;->parse(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/bluetooth/map/VCard;->getTelephone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 419
    .local v13, from:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->setFromField(Ljava/lang/String;)V

    .line 423
    .end local v13           #from:Ljava/lang/String;
    .end local v16           #index:I
    .end local v32           #tos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34           #vcard:Lcom/mediatek/bluetooth/map/VCard;
    :cond_4
    const/4 v3, 0x4

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 424
    const/16 v33, 0x80

    .line 429
    .local v33, type:I
    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->generatePdu(I)Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-result-object v24

    .line 430
    .local v24, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    if-nez v24, :cond_6

    .line 431
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 426
    .end local v24           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v33           #type:I
    :cond_5
    const/16 v33, 0x84

    .restart local v33       #type:I
    goto :goto_5

    .line 434
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->isTransparent()Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v17, 0x1

    .line 435
    .local v17, isSave:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v25

    .line 436
    if-eqz v17, :cond_7

    .line 437
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MmsController;->getMailboxUri(I)Landroid/net/Uri;

    move-result-object v19

    .line 439
    .local v19, mailbox:Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 440
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v10, cv:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const-string v3, "sim_id"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 443
    const-string v3, "m_size"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v10, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    if-eqz v4, :cond_7

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 447
    .local v9, cs:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 448
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 449
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 456
    .end local v9           #cs:Landroid/database/Cursor;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v19           #mailbox:Landroid/net/Uri;
    :cond_7
    :goto_7
    const-wide/16 v5, 0x0

    cmp-long v3, v20, v5

    if-gez v3, :cond_9

    .line 458
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 434
    .end local v17           #isSave:Z
    :cond_8
    const/16 v17, 0x0

    goto :goto_6

    .line 460
    .restart local v17       #isSave:Z
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mType:I

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setHandle(J)V

    .line 462
    const/4 v3, 0x4

    move/from16 v0, v18

    if-ne v0, v3, :cond_a

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/bluetooth/map/MmsController;->mSimId:I

    invoke-static {v3, v5}, Lcom/mediatek/bluetooth/map/MmsConnection;->getDefault(Landroid/content/Context;I)Lcom/mediatek/bluetooth/map/MmsConnection;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/MmsController;->mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

    const-wide/16 v5, -0x1

    new-instance v7, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/bluetooth/map/MmsController;->mContext:Landroid/content/Context;

    check-cast v24, Lcom/google/android/mms/pdu/SendReq;

    .end local v24           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, v24

    invoke-direct {v7, v8, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/mediatek/bluetooth/map/MmsConnection;->send(J[B)V

    .line 468
    if-eqz v4, :cond_a

    .line 469
    const/4 v3, 0x2

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->getMailboxUri(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 475
    :cond_a
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 471
    :catch_2
    move-exception v11

    .line 472
    .local v11, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 453
    .end local v11           #e:Lcom/google/android/mms/MmsException;
    .restart local v19       #mailbox:Landroid/net/Uri;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_3
    move-exception v3

    goto :goto_7
.end method

.method public queryMessage(Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 936
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    const-string v4, "msg_box"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 942
    .local v6, messageCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 951
    :goto_0
    return-void

    .line 945
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 950
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 237
    const-string v0, "registerListener"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 238
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/map/Controller;->registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v2, p0, Lcom/mediatek/bluetooth/map/MmsController;->mType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/bluetooth/map/MessageObserver;-><init>(Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;Lcom/mediatek/bluetooth/map/ControllerListener;I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 244
    return-void
.end method

.method public restoreMessage(J)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreMessage():id is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    .line 591
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 593
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 594
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 596
    .local v10, thread_id:I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 598
    .local v9, orignal_thread_id:Ljava/lang/Integer;
    if-eqz v9, :cond_1

    .line 599
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 600
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #orignal_thread_id:Ljava/lang/Integer;
    :cond_0
    :goto_0
    const/4 v8, 0x1

    .line 608
    .local v8, flag:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 613
    .end local v10           #thread_id:I
    :goto_1
    return v8

    .line 603
    .end local v8           #flag:Z
    .restart local v9       #orignal_thread_id:Ljava/lang/Integer;
    .restart local v10       #thread_id:I
    :cond_1
    const-string v0, "no record in delete folder"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    .end local v9           #orignal_thread_id:Ljava/lang/Integer;
    .end local v10           #thread_id:I
    :cond_2
    const-string v0, "the message does not exist in MMS provider"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 611
    const/4 v8, 0x0

    .restart local v8       #flag:Z
    goto :goto_1
.end method

.method public revertMailboxType(I)Ljava/lang/String;
    .locals 2
    .parameter "smsMailboxType"

    .prologue
    .line 974
    sparse-switch p1, :sswitch_data_0

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertMailboxType(): the mail box is invalid->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 987
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 976
    :sswitch_0
    const-string v0, "inbox"

    goto :goto_0

    .line 978
    :sswitch_1
    const-string v0, "outbox"

    goto :goto_0

    .line 980
    :sswitch_2
    const-string v0, "sent"

    goto :goto_0

    .line 982
    :sswitch_3
    const-string v0, "draft"

    goto :goto_0

    .line 984
    :sswitch_4
    const-string v0, "deleted"

    goto :goto_0

    .line 974
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method public setMessageStatus(JI)Z
    .locals 11
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 649
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 650
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "read"

    aput-object v0, v2, v9

    .line 652
    .local v2, projection:[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mediatek/bluetooth/map/MmsController;->convertReadStatus(I)I

    move-result v8

    .line 654
    .local v8, newState:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageStatus():id is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", state is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 656
    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    .line 657
    const-string v0, "the status to be set is invalid"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    move v0, v9

    .line 674
    :goto_0
    return v0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 662
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 664
    const-string v0, "state is same, no need to update"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    .line 670
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_2
    move v0, v10

    .line 674
    goto :goto_0

    .line 666
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 667
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 672
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_2
    const-string v0, "no record for the id"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/MmsController;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateInbox()Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    return v0
.end method
