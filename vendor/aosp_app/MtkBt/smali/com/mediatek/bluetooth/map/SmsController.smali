.class Lcom/mediatek/bluetooth/map/SmsController;
.super Lcom/mediatek/bluetooth/map/Controller;
.source "SmsController.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;


# static fields
.field private static final ADDRESS_COLUMN:I = 0x3

.field private static final BODY_COLUMN:I = 0x7

.field private static final CONTACT_ID_COLUMN:I = 0x3

.field private static final CONTACT_NAME_COLUMN:I = 0x2

.field private static final CONTACT_PRESENCE_COLUMN:I = 0x4

.field private static final CONTACT_STATUS_COLUMN:I = 0x5

.field private static final DATE_COLUMN:I = 0x2

.field private static final DEFAULT_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_COLUMN:I = 0x0

.field private static final INVALID_VALUE_ID:I = -0x1

.field private static final PERSON_COLUMN:I = 0x6

.field private static final PHONE_LABEL_COLUMN:I = 0x1

.field private static final PHONE_NUMBER_COLUMN:I = 0x0

.field private static final READ_COLUMN:I = 0x5

.field private static final REPLY_PATH_PRESENT_COLUMN:I = 0x0

.field private static final SERVICE_CENTER_COLUMN:I = 0x1

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String; = null

.field private static final SIZE_COLUMN:I = 0xa

.field private static final STATUS_COLUMN:I = 0x4

.field private static final SUBJECT_COLUMN:I = 0x1

.field private static final THREAD_ID_COLUMN:I = 0x8

.field private static final TYPE_COLUMN:I = 0x9


# instance fields
.field private final EXTRA_FINAL_MESSAGE:Ljava/lang/String;

.field private final EXTRA_MESSAGE_ID:Ljava/lang/String;

.field private final INVALID_THREAD_ID:I

.field private final MESSAGE_STATUS_DELIVERED_ACTION:Ljava/lang/String;

.field private final MESSAGE_STATUS_SENT_ACTION:Ljava/lang/String;

.field private final MESSAGE_TYPE_DELETE:I

.field private final SMS_READ_STATUS:I

.field private final SMS_UNREAD_STATUS:I

.field private final TAG:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mInstance:Lcom/mediatek/bluetooth/map/Instance;

.field private mMasId:I

.field private mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

.field private mPhoneType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I

.field private final mType:I

.field private mpendinglist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/cache/BMessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "m_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/map/SmsController;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "reply_path_present"

    aput-object v1, v0, v3

    const-string v1, "service_center"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/bluetooth/map/SmsController;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/map/Instance;II)V
    .locals 1
    .parameter "context"
    .parameter "instance"
    .parameter "simId"
    .parameter "type"

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Controller;-><init>()V

    .line 101
    const-string v0, "MAP-SmsController"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->TAG:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->SMS_READ_STATUS:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->SMS_UNREAD_STATUS:I

    .line 107
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->MESSAGE_TYPE_DELETE:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->INVALID_THREAD_ID:I

    .line 146
    const-string v0, "com.mediatek.bluetooth.map.SmsController.action.DELIVER_RESULT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->MESSAGE_STATUS_DELIVERED_ACTION:Ljava/lang/String;

    .line 148
    const-string v0, "com.mediatek.bluetooth.map.SmsController.action.SENT_RESULT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->MESSAGE_STATUS_SENT_ACTION:Ljava/lang/String;

    .line 151
    const-string v0, "com.mediatek.bluetooth.map.SmsController.extra.FINAL_MESSAGE"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->EXTRA_FINAL_MESSAGE:Ljava/lang/String;

    .line 153
    const-string v0, "com.mediatek.bluetooth.map.SmsController.extra.MESSAGE_ID"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->EXTRA_MESSAGE_ID:Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/mediatek/bluetooth/map/SmsController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/SmsController$1;-><init>(Lcom/mediatek/bluetooth/map/SmsController;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    .line 205
    iput p3, p0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    .line 206
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/SmsController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    .line 207
    iput p4, p0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/SmsController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/map/SmsController;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/map/SmsController;->handleDeliverResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/map/SmsController;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/map/SmsController;->handleSentResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private composeMessageItem(Landroid/database/Cursor;I)Lcom/mediatek/bluetooth/map/cache/MessageItem;
    .locals 12
    .parameter "cs"
    .parameter "mailbox"

    .prologue
    .line 784
    new-instance v2, Lcom/mediatek/bluetooth/map/cache/MessageItem;

    invoke-direct {v2}, Lcom/mediatek/bluetooth/map/cache/MessageItem;-><init>()V

    .line 785
    .local v2, msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    const/4 v7, 0x0

    .line 791
    .local v7, size:I
    const-string v9, "composeMessageItem()"

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 793
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/SmsController;->revertLoadStatus(I)I

    move-result v6

    .line 795
    .local v6, recipientStatus:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 796
    const/4 v2, 0x0

    .line 842
    .end local v2           #msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    :goto_0
    return-object v2

    .line 799
    .restart local v2       #msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    :cond_0
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/SmsController;->revertReadStatus(I)I

    move-result v4

    .line 801
    .local v4, readStatus:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_1

    .line 802
    const/4 v2, 0x0

    goto :goto_0

    .line 805
    :cond_1
    const/4 v1, 0x1

    .line 806
    .local v1, isText:Z
    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 807
    const/4 v1, 0x1

    .line 812
    :goto_1
    const/4 v3, 0x0

    .line 813
    .local v3, orignator:Ljava/lang/String;
    const/4 v5, 0x0

    .line 814
    .local v5, recipient:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, address:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne p2, v9, :cond_4

    .line 818
    move-object v3, v0

    .line 822
    :goto_2
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 823
    .local v8, subject:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 824
    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 826
    :cond_2
    iget v9, p0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setHandle(J)V

    .line 827
    invoke-virtual {v2, v8}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSubject(Ljava/lang/String;)V

    .line 828
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setDatetime(J)V

    .line 829
    invoke-virtual {v2, v3}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderAddr(Ljava/lang/String;)V

    .line 830
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderName(Ljava/lang/String;)V

    .line 831
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReplyAddr(Ljava/lang/String;)V

    .line 832
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientName(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v2, v5}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientAddr(Ljava/lang/String;)V

    .line 834
    iget v9, p0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setMsgType(I)V

    .line 835
    const/16 v9, 0xa

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSize(I)V

    .line 836
    invoke-virtual {v2, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setText(Z)V

    .line 837
    invoke-virtual {v2, v6}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientStatus(I)V

    .line 838
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setAttachSize(I)V

    .line 839
    invoke-virtual {v2, v4}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReadStatus(I)V

    .line 840
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setProtected(Z)V

    .line 841
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setPriority(Z)V

    goto :goto_0

    .line 809
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #orignator:Ljava/lang/String;
    .end local v5           #recipient:Ljava/lang/String;
    .end local v8           #subject:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 820
    .restart local v0       #address:Ljava/lang/String;
    .restart local v3       #orignator:Ljava/lang/String;
    .restart local v5       #recipient:Ljava/lang/String;
    :cond_4
    move-object v5, v0

    goto :goto_2
.end method

.method private convertFilterToSelection(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Z
    .locals 11
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
    .line 956
    .local p3, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getStartTime()J

    move-result-wide v7

    .line 957
    .local v7, startTimeMillis:J
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getEndTime()J

    move-result-wide v0

    .line 958
    .local v0, endTimeMillis:J
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getReadStatus()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/SmsController;->convertReadStatus(I)I

    move-result v4

    .line 959
    .local v4, readStatus:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getFolder()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/SmsController;->convertMailboxType(Ljava/lang/String;)I

    move-result v3

    .line 964
    .local v3, mailbox:I
    sget v9, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM1:I

    iget v10, p0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    if-ne v9, v10, :cond_2

    .line 966
    sget v2, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM2:I

    .local v2, index:I
    :goto_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getTotalSlotCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 967
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSimIdBySlotId(Landroid/content/Context;I)J

    move-result-wide v5

    .line 968
    .local v5, simid:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_1

    .line 970
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 971
    const-string v9, " AND "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_0
    const-string v9, "sim_id<>?"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 978
    .end local v2           #index:I
    .end local v5           #simid:J
    :cond_2
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    invoke-static {v9, v10}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSimIdBySlotId(Landroid/content/Context;I)J

    move-result-wide v5

    .line 979
    .restart local v5       #simid:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 980
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 981
    const-string v9, " AND "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    :cond_3
    const-string v9, "sim_id=?"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    .end local v5           #simid:J
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 994
    const-string v9, " AND "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_5
    const/16 v9, 0x64

    if-eq v3, v9, :cond_b

    .line 997
    const-string v9, "thread_id<>?"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :goto_1
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_c

    .line 1005
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1006
    const-string v9, " AND "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    :cond_6
    const-string v9, "date"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v9, " >=?"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_7
    :goto_2
    const/4 v9, -0x1

    if-eq v4, v9, :cond_9

    .line 1022
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 1023
    const-string v9, " AND "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_8
    const-string v9, "read=?"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_9
    const/4 v9, 0x1

    :goto_3
    return v9

    .line 987
    .restart local v5       #simid:J
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Err, No message is in SIM slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 988
    const/4 v9, 0x0

    goto :goto_3

    .line 999
    .end local v5           #simid:J
    :cond_b
    const-string v9, "thread_id=?"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1011
    :cond_c
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-lez v9, :cond_7

    .line 1012
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_d

    .line 1013
    const-string v9, " AND "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :cond_d
    const-string v9, "date"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    const-string v9, " <=? "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private convertMailboxType(Ljava/lang/String;)I
    .locals 2
    .parameter "mapMailboxType"

    .prologue
    const/4 v0, -0x1

    .line 1033
    if-nez p1, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return v0

    .line 1036
    :cond_1
    const-string v1, "inbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1037
    const/4 v0, 0x1

    goto :goto_0

    .line 1038
    :cond_2
    const-string v1, "outbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1039
    const/4 v0, 0x4

    goto :goto_0

    .line 1040
    :cond_3
    const-string v1, "sent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1041
    const/4 v0, 0x2

    goto :goto_0

    .line 1042
    :cond_4
    const-string v1, "draft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1043
    const/4 v0, 0x3

    goto :goto_0

    .line 1044
    :cond_5
    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private convertMaskToProjection(I)[Ljava/lang/String;
    .locals 1
    .parameter "mask"

    .prologue
    .line 949
    sget-object v0, Lcom/mediatek/bluetooth/map/SmsController;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private convertReadStatus(I)I
    .locals 2
    .parameter "mapReadStatus"

    .prologue
    .line 936
    packed-switch p1, :pswitch_data_0

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other map state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 943
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 938
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 940
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMailboxUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "mailbox"

    .prologue
    .line 1069
    packed-switch p1, :pswitch_data_0

    .line 1079
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1071
    :pswitch_0
    sget-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1073
    :pswitch_1
    sget-object v0, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1075
    :pswitch_2
    sget-object v0, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1077
    :pswitch_3
    sget-object v0, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1069
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private handleDeliverResult(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "resultCode"

    .prologue
    .line 847
    const-string v0, "pdu"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v11, v0

    check-cast v11, [B

    .line 848
    .local v11, pdu:[B
    const-string v0, "com.mediatek.bluetooth.map.SmsController.extra.MESSAGE_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 849
    .local v8, id:J
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 850
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 852
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeliverResult: id is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pdu is empty? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v11, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "result is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 854
    if-eqz v11, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 878
    :cond_0
    :goto_1
    return-void

    .line 852
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 857
    :cond_2
    invoke-static {v11}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 858
    .local v10, message:Landroid/telephony/SmsMessage;
    if-eqz v10, :cond_0

    .line 861
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 862
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 863
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 864
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 866
    const-string v0, "update status"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 868
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    if-eqz v0, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v0, v8, v3

    if-eqz v0, :cond_4

    .line 869
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v0

    if-nez v0, :cond_5

    .line 870
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v3, p0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    const/4 v4, 0x1

    invoke-interface {v0, v8, v9, v3, v4}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageDelivered(JII)V

    .line 875
    :cond_4
    :goto_2
    if-eqz v6, :cond_0

    .line 876
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 872
    :cond_5
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v3, p0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    const/4 v4, 0x0

    invoke-interface {v0, v8, v9, v3, v4}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageDelivered(JII)V

    goto :goto_2
.end method

.method private handleSentResult(Landroid/content/Intent;I)V
    .locals 13
    .parameter "intent"
    .parameter "resultCode"

    .prologue
    .line 880
    const/4 v12, 0x0

    .line 881
    .local v12, ret:I
    const-string v0, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 882
    .local v7, error:I
    const-string v0, "com.mediatek.bluetooth.map.SmsController.extra.FINAL_MESSAGE"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 883
    .local v10, isfinal:Z
    const-string v0, "com.mediatek.bluetooth.map.SmsController.extra.MESSAGE_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 884
    .local v8, id:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "type"

    aput-object v3, v2, v0

    .line 886
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSentResult:result is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", error is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 888
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 889
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 890
    .local v6, cs:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 897
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 898
    const/4 v12, 0x1

    .line 899
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 900
    .local v11, mailbox:I
    const/4 v0, 0x4

    if-ne v11, v0, :cond_3

    .line 901
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 908
    .end local v11           #mailbox:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 909
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v3, p0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    invoke-interface {v0, v8, v9, v3, v12}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageSent(JII)V

    goto :goto_0

    .line 903
    .restart local v11       #mailbox:I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the message is not in outbox:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 906
    .end local v11           #mailbox:I
    :cond_4
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1092
    if-nez p1, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1095
    :cond_0
    const-string v0, "MAP-SmsController"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    const/4 v0, 0x0

    .line 1089
    :goto_0
    return-object v0

    .line 1087
    :cond_1
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1088
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 1089
    goto :goto_0
.end method

.method private revertLoadStatus(I)I
    .locals 1
    .parameter "SmsStatus"

    .prologue
    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method private revertReadStatus(I)I
    .locals 2
    .parameter "smsReadStatus"

    .prologue
    .line 772
    packed-switch p1, :pswitch_data_0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: the read status from sms provider is invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 779
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 774
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 776
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearDeletedMessage()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 705
    const-string v0, "clearDeletedMessage()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    .line 711
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 713
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 714
    .local v9, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 716
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 717
    .local v8, id:Ljava/lang/Long;
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 720
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 721
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 723
    .local v10, mailbox:I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_1

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v10           #mailbox:I
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    .line 732
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 735
    .end local v6           #cs:Landroid/database/Cursor;
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #id:Ljava/lang/Long;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 736
    return-void

    .line 727
    .restart local v6       #cs:Landroid/database/Cursor;
    .restart local v7       #entry:Ljava/util/Map$Entry;
    .restart local v8       #id:Ljava/lang/Long;
    .restart local v10       #mailbox:I
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

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessage():id is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 648
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 649
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    .line 651
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 652
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 654
    .local v9, thread_id:I
    if-ne v9, v10, :cond_0

    .line 655
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :goto_0
    const/4 v8, 0x1

    .line 665
    .local v8, flag:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 670
    .end local v9           #thread_id:I
    :goto_1
    return v8

    .line 658
    .end local v8           #flag:Z
    .restart local v9       #thread_id:I
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 659
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v0, "succeed"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 667
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #thread_id:I
    :cond_1
    const-string v0, "the message does not exist in SMS provider"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 668
    const/4 v8, 0x0

    .restart local v8       #flag:Z
    goto :goto_1
.end method

.method public deregisterListener()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "deregisterListener"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 234
    invoke-super {p0}, Lcom/mediatek/bluetooth/map/Controller;->deregisterListener()V

    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/SmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    .line 239
    :cond_0
    return-void
.end method

.method public getMessage(Lcom/mediatek/bluetooth/map/cache/MessageRequest;)Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .locals 25
    .parameter "req"

    .prologue
    .line 547
    const-string v2, "getMessage()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->isAttachDelivered()Z

    move-result v9

    .line 549
    .local v9, attachment:Z
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getMessageId()J

    move-result-wide v14

    .line 550
    .local v14, id:J
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getCharset()I

    move-result v12

    .line 551
    .local v12, charset:I
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 553
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/bluetooth/map/SmsController;->DEFAULT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 558
    .local v19, messageCursor:Landroid/database/Cursor;
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find no record for the request : id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 560
    const/4 v10, 0x0

    .line 641
    :goto_0
    return-object v10

    .line 563
    :cond_1
    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 564
    .local v23, text:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 566
    .local v8, address:Ljava/lang/String;
    const/16 v2, 0x9

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 568
    .local v17, mailbox:I
    new-instance v21, Ljava/lang/String;

    invoke-direct/range {v21 .. v21}, Ljava/lang/String;-><init>()V

    .line 569
    .local v21, orignator:Ljava/lang/String;
    new-instance v22, Ljava/lang/String;

    invoke-direct/range {v22 .. v22}, Ljava/lang/String;-><init>()V

    .line 570
    .local v22, recipient:Ljava/lang/String;
    const/16 v16, 0x0

    .line 572
    .local v16, index:I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 573
    move-object/from16 v21, v8

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    .line 575
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    invoke-static {v2}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v22

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/SmsController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->getBMessageObject()Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    move-result-object v10

    .line 587
    .local v10, bMessage:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    invoke-virtual {v10}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->reset()V

    .line 590
    new-instance v24, Lcom/mediatek/bluetooth/map/VCard;

    invoke-direct/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;-><init>()V

    .line 591
    .local v24, vCard:Lcom/mediatek/bluetooth/map/VCard;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/VCard;->setTelephone(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setOrignator(Ljava/lang/String;)Z

    .line 595
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;->reset()V

    .line 596
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/VCard;->setTelephone(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->addRecipient(Ljava/lang/String;)Z

    .line 599
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/SmsController;->revertReadStatus(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setReadStatus(I)V

    .line 602
    invoke-virtual {v10, v12}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setCharset(I)Z

    .line 604
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setEncoding(I)Z

    .line 606
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setLang(I)Z

    .line 607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    invoke-virtual {v10, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setMessageType(I)Z

    .line 610
    const/4 v2, 0x1

    if-ne v12, v2, :cond_4

    .line 612
    if-eqz v23, :cond_2

    .line 613
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->addContent([B)Z

    .line 640
    :cond_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 578
    .end local v10           #bMessage:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .end local v24           #vCard:Lcom/mediatek/bluetooth/map/VCard;
    :cond_3
    move-object/from16 v22, v8

    .line 579
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    invoke-static {v2}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v21

    .line 580
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 615
    .restart local v10       #bMessage:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .restart local v24       #vCard:Lcom/mediatek/bluetooth/map/VCard;
    :cond_4
    if-nez v12, :cond_6

    .line 616
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v18

    .line 617
    .local v18, manager:Landroid/telephony/SmsManager;
    const/16 v20, 0x0

    .line 618
    .local v20, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 619
    :goto_2
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 620
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 622
    .local v13, content:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 623
    invoke-static {}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->getDefault()Lcom/mediatek/bluetooth/map/SmsMessageEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v13, v4}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v11

    .line 631
    .local v11, bytes:[B
    :goto_3
    invoke-virtual {v10, v11}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->addContent([B)Z

    .line 632
    add-int/lit8 v16, v16, 0x1

    .line 633
    goto :goto_2

    .line 626
    .end local v11           #bytes:[B
    :cond_5
    invoke-static {}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->getDefault()Lcom/mediatek/bluetooth/map/SmsMessageEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v13, v4}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v11

    .restart local v11       #bytes:[B
    goto :goto_3

    .line 635
    .end local v11           #bytes:[B
    .end local v13           #content:Ljava/lang/String;
    .end local v18           #manager:Landroid/telephony/SmsManager;
    .end local v20           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown charset type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 636
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 637
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public getMessageList(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;)Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    .locals 30
    .parameter "req"

    .prologue
    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getListSize()I

    move-result v16

    .line 243
    .local v16, listSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getListOffset()I

    move-result v21

    .line 244
    .local v21, offset:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getFolder()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/SmsController;->convertMailboxType(Ljava/lang/String;)I

    move-result v17

    .line 245
    .local v17, mailbox:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getOrignator()Ljava/lang/String;

    move-result-object v22

    .line 246
    .local v22, orignator:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getRecipient()Ljava/lang/String;

    move-result-object v25

    .line 247
    .local v25, recipient:Ljava/lang/String;
    const/16 v23, 0x0

    .line 248
    .local v23, orignatortAddrList:Ljava/lang/String;
    const/16 v26, 0x0

    .line 249
    .local v26, recipientAddrList:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getMaxSubjectLen()I

    move-result v18

    .line 250
    .local v18, maxSubjextLen:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getPriority()I

    move-result v24

    .line 251
    .local v24, priority:I
    const/4 v14, 0x0

    .line 252
    .local v14, index:I
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 253
    .local v5, mailboxUri:Landroid/net/Uri;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v27, selection:Ljava/lang/StringBuilder;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v28, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/mediatek/bluetooth/map/SmsController;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 259
    .local v6, projection:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 260
    .local v13, from:Ljava/lang/String;
    const/16 v29, 0x0

    .line 262
    .local v29, to:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMessageList(): listsize is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",listoffset is"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", maxSubjectLen is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",mailbox is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", orignator is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",recipient is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->getDefault(Landroid/content/Context;)Lcom/mediatek/bluetooth/map/ContactsAdapter;

    move-result-object v10

    .line 267
    .local v10, adapter:Lcom/mediatek/bluetooth/map/ContactsAdapter;
    if-eqz v10, :cond_1

    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 268
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->queryNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 273
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_2

    .line 274
    const/4 v15, 0x0

    .line 358
    :goto_1
    return-object v15

    .line 269
    :cond_1
    if-eqz v10, :cond_0

    if-eqz v25, :cond_0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 270
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->queryNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_0

    .line 277
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/map/SmsController;->convertFilterToSelection(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 278
    const/4 v15, 0x0

    goto :goto_1

    .line 281
    :cond_3
    const/16 v4, 0x64

    move/from16 v0, v17

    if-eq v0, v4, :cond_4

    .line 282
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/SmsController;->getMailboxUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 283
    if-nez v5, :cond_4

    .line 284
    const-string v4, "unrecognized mailbox uri"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 285
    const/4 v15, 0x0

    goto :goto_1

    .line 290
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 300
    .local v19, messageCursor:Landroid/database/Cursor;
    if-nez v19, :cond_5

    .line 301
    const/4 v15, 0x0

    goto :goto_1

    .line 294
    .end local v19           #messageCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 295
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    const-string v4, "fail to query"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 297
    const/4 v15, 0x0

    goto :goto_1

    .line 304
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v19       #messageCursor:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/SmsController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/map/Instance;->getMsgListRspCache()Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    move-result-object v15

    .line 309
    .local v15, list:Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    if-lez v16, :cond_6

    if-lez v21, :cond_6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 310
    const-string v4, "list size is zero or no cursor"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 311
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 314
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimId:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 317
    const/16 v20, 0x0

    .line 318
    .local v20, newMessageFlag:Z
    :cond_7
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v16, :cond_8

    invoke-virtual {v15}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->getCurrentSize()I

    move-result v4

    move/from16 v0, v16

    if-ge v4, v0, :cond_e

    .line 319
    :cond_8
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_9

    .line 320
    const/16 v20, 0x1

    .line 323
    :cond_9
    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, address:Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 325
    move-object v13, v11

    .line 331
    :goto_3
    if-eqz v25, :cond_a

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 332
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v10, v4, v0, v1}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->doesPhoneNumberMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 338
    :cond_a
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_b

    .line 339
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v10, v4, v0, v1}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->doesPhoneNumberMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 344
    :cond_b
    if-lez v16, :cond_c

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/map/SmsController;->composeMessageItem(Landroid/database/Cursor;I)Lcom/mediatek/bluetooth/map/cache/MessageItem;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->addMessageItem(Lcom/mediatek/bluetooth/map/cache/MessageItem;)Z

    .line 348
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 349
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->addSize(I)Z

    goto :goto_2

    .line 327
    :cond_d
    move-object/from16 v29, v11

    goto :goto_3

    .line 352
    .end local v11           #address:Ljava/lang/String;
    :cond_e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 354
    if-eqz v20, :cond_f

    .line 355
    invoke-virtual {v15}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->setNewMessage()Z

    .line 357
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->declineListOffset(I)V

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.bluetooth.map.SmsController.action.SENT_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "com.mediatek.bluetooth.map.SmsController.action.DELIVER_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/SmsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/SmsController;->clearDeletedMessage()V

    .line 219
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/SmsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/SmsController;->deregisterListener()V

    .line 221
    return-void
.end method

.method public pushMessage(Lcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 41
    .parameter "obj"

    .prologue
    .line 362
    const/16 v38, 0x0

    .line 363
    .local v38, text:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContentSize()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v36, v0

    .line 364
    .local v36, size:I
    move/from16 v0, v36

    new-array v13, v0, [B

    .line 365
    .local v13, content:[B
    const/16 v37, 0x0

    .line 368
    .local v37, smsmessage:Landroid/telephony/SmsMessage;
    const-wide/16 v26, -0x1

    .line 372
    .local v26, messageId:J
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getCharset()I

    move-result v12

    .line 373
    .local v12, charset:I
    new-instance v40, Lcom/mediatek/bluetooth/map/VCard;

    invoke-direct/range {v40 .. v40}, Lcom/mediatek/bluetooth/map/VCard;-><init>()V

    .line 374
    .local v40, vcard:Lcom/mediatek/bluetooth/map/VCard;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFolder()Ljava/lang/String;

    move-result-object v18

    .line 376
    .local v18, folder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    invoke-static {v3, v6}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSimIdBySlotId(Landroid/content/Context;I)J

    move-result-wide v34

    .line 378
    .local v34, sim:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pushMessage():"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 380
    const-wide/16 v6, 0x0

    cmp-long v3, v34, v6

    if-gez v3, :cond_0

    .line 381
    const-string v3, "no sim card in current sim slot"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 382
    const/4 v3, 0x0

    .line 538
    :goto_0
    return v3

    .line 385
    :cond_0
    if-nez v18, :cond_1

    const/16 v24, -0x1

    .line 386
    .local v24, mailbox:I
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_2

    .line 387
    const-string v3, "invalid folder"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 388
    const/4 v3, 0x0

    goto :goto_0

    .line 385
    .end local v24           #mailbox:I
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/SmsController;->convertMailboxType(Ljava/lang/String;)I

    move-result v24

    goto :goto_1

    .line 391
    .restart local v24       #mailbox:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->isTransparent()Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v23, 0x1

    .line 392
    .local v23, isSave:Z
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContent([B)I

    move-result v32

    .line 394
    .local v32, result:I
    const/4 v3, 0x1

    if-ne v12, v3, :cond_9

    .line 395
    new-instance v38, Ljava/lang/String;

    .end local v38           #text:Ljava/lang/String;
    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    .line 396
    .restart local v38       #text:Ljava/lang/String;
    if-eqz v38, :cond_3

    .line 397
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    .line 431
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFinalRecipient()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/map/VCard;->parse(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/bluetooth/map/VCard;->getTelephone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 433
    .local v31, recipient:Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/bluetooth/map/VCard;->reset()V

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getOrignator()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/map/VCard;->parse(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/bluetooth/map/VCard;->getTelephone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 439
    .local v29, orignator:Ljava/lang/String;
    if-eqz v23, :cond_10

    .line 440
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v15, cv:Landroid/content/ContentValues;
    const-string v3, "type"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_e

    .line 448
    const-string v3, "address"

    move-object/from16 v0, v29

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getReadStatus()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->convertReadStatus(I)I

    move-result v30

    .line 454
    .local v30, read:I
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_4

    .line 455
    const-string v3, "read"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    :cond_4
    const-string v3, "body"

    move-object/from16 v0, v38

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v3, "status"

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v3, "seen"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v3, "sim_id"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    if-eqz v37, :cond_6

    .line 465
    const-string v3, "protocol"

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 467
    const-string v3, "subject"

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_5
    const-string v6, "reply_path_present"

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    const-string v3, "service_center"

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 474
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 476
    .local v14, cs:Landroid/database/Cursor;
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 477
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 478
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 486
    .end local v4           #uri:Landroid/net/Uri;
    .end local v14           #cs:Landroid/database/Cursor;
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v30           #read:I
    :cond_7
    :goto_6
    const-wide/16 v6, -0x1

    cmp-long v3, v26, v6

    if-nez v3, :cond_11

    .line 488
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setHandle(J)V

    .line 495
    :goto_7
    const/4 v3, 0x4

    move/from16 v0, v24

    if-ne v0, v3, :cond_15

    if-eqz v31, :cond_15

    .line 497
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v25

    .line 498
    .local v25, manager:Landroid/telephony/SmsManager;
    const/4 v8, 0x0

    .line 499
    .local v8, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v38, :cond_12

    .line 500
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 391
    .end local v8           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23           #isSave:Z
    .end local v25           #manager:Landroid/telephony/SmsManager;
    .end local v29           #orignator:Ljava/lang/String;
    .end local v31           #recipient:Ljava/lang/String;
    .end local v32           #result:I
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 399
    .restart local v23       #isSave:Z
    .restart local v32       #result:I
    :cond_9
    if-nez v12, :cond_d

    .line 401
    const/16 v22, 0x0

    .local v22, index:I
    const/16 v28, 0x0

    .line 402
    .local v28, offset:I
    const/16 v20, 0x0

    .line 403
    .local v20, fragmentSize:I
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v39, textBuilder:Ljava/lang/StringBuilder;
    :cond_a
    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContentSize(I)I

    move-result v20

    if-lez v20, :cond_c

    .line 405
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 406
    .local v19, fragment:[B
    const/4 v3, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    add-int v28, v28, v20

    .line 408
    add-int/lit8 v22, v22, 0x1

    .line 411
    if-eqz v13, :cond_b

    if-lez v32, :cond_b

    .line 412
    :try_start_0
    invoke-static/range {v19 .. v19}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v37

    .line 413
    if-eqz v37, :cond_a

    .line 414
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 420
    :catch_0
    move-exception v17

    .line 421
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 422
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 417
    .end local v17           #e:Ljava/lang/Exception;
    :cond_b
    :try_start_1
    const-string v3, "fail to send SMS message, the content is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 425
    .end local v19           #fragment:[B
    :cond_c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 426
    goto/16 :goto_3

    .line 427
    .end local v20           #fragmentSize:I
    .end local v22           #index:I
    .end local v28           #offset:I
    .end local v39           #textBuilder:Ljava/lang/StringBuilder;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown charset:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 428
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 450
    .restart local v15       #cv:Landroid/content/ContentValues;
    .restart local v29       #orignator:Ljava/lang/String;
    .restart local v31       #recipient:Ljava/lang/String;
    :cond_e
    const-string v3, "address"

    move-object/from16 v0, v31

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 469
    .restart local v30       #read:I
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 483
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v30           #read:I
    :cond_10
    const-wide/16 v26, -0x1

    goto/16 :goto_6

    .line 492
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setHandle(J)V

    goto/16 :goto_7

    .line 502
    .restart local v8       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25       #manager:Landroid/telephony/SmsManager;
    :cond_12
    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 504
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v10, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 506
    .local v9, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v21, 0x0

    .local v21, i:I
    :goto_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_14

    .line 508
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.mediatek.bluetooth.map.SmsController.action.DELIVER_RESULT"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v16, deliveryIntent:Landroid/content/Intent;
    new-instance v33, Landroid/content/Intent;

    const-string v3, "com.mediatek.bluetooth.map.SmsController.action.SENT_RESULT"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v33, sendIntent:Landroid/content/Intent;
    const-string v3, "com.mediatek.bluetooth.map.SmsController.extra.MESSAGE_ID"

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 511
    const-string v3, "com.mediatek.bluetooth.map.SmsController.extra.MESSAGE_ID"

    move-object/from16 v0, v16

    move-wide/from16 v1, v26

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 512
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_13

    .line 513
    const-string v3, "com.mediatek.bluetooth.map.SmsController.extra.FINAL_MESSAGE"

    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    const-string v3, "com.mediatek.bluetooth.map.SmsController.extra.FINAL_MESSAGE"

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object/from16 v0, v16

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/SmsController;->mContext:Landroid/content/Context;

    const/high16 v6, 0x1000

    move/from16 v0, v21

    move-object/from16 v1, v33

    invoke-static {v3, v0, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 533
    .end local v16           #deliveryIntent:Landroid/content/Intent;
    .end local v33           #sendIntent:Landroid/content/Intent;
    :cond_14
    invoke-static {}, Lcom/mediatek/telephony/SmsManagerEx;->getDefault()Lcom/mediatek/telephony/SmsManagerEx;

    move-result-object v5

    .line 534
    .local v5, managerEx:Lcom/mediatek/telephony/SmsManagerEx;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/bluetooth/map/SmsController;->mSimId:I

    move-object/from16 v6, v31

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/telephony/SmsManagerEx;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 538
    .end local v5           #managerEx:Lcom/mediatek/telephony/SmsManagerEx;
    .end local v8           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v10           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v21           #i:I
    .end local v25           #manager:Landroid/telephony/SmsManager;
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_0
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

    .line 914
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    const-string v4, "type"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 920
    .local v6, messageCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 927
    :goto_0
    return-void

    .line 923
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 926
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 224
    const-string v0, "registerListener()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 225
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/map/Controller;->registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v2, p0, Lcom/mediatek/bluetooth/map/SmsController;->mType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/bluetooth/map/MessageObserver;-><init>(Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;Lcom/mediatek/bluetooth/map/ControllerListener;I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/SmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/SmsController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    return-void
.end method

.method public restoreMessage(J)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessage():id is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 678
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 679
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    .line 681
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 682
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 684
    .local v10, thread_id:I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 686
    .local v9, orignalThreadId:Ljava/lang/Integer;
    if-eqz v9, :cond_1

    .line 687
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 694
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #orignalThreadId:Ljava/lang/Integer;
    :cond_0
    :goto_0
    const/4 v8, 0x1

    .line 695
    .local v8, flag:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 700
    .end local v10           #thread_id:I
    :goto_1
    return v8

    .line 691
    .end local v8           #flag:Z
    .restart local v9       #orignalThreadId:Ljava/lang/Integer;
    .restart local v10       #thread_id:I
    :cond_1
    const-string v0, "no record in delete folder"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    .end local v9           #orignalThreadId:Ljava/lang/Integer;
    .end local v10           #thread_id:I
    :cond_2
    const-string v0, "the message does not exist in MMS provider"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 698
    const/4 v8, 0x0

    .restart local v8       #flag:Z
    goto :goto_1
.end method

.method public revertMailboxType(I)Ljava/lang/String;
    .locals 1
    .parameter "smsMailboxType"

    .prologue
    .line 1052
    sparse-switch p1, :sswitch_data_0

    .line 1064
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1054
    :sswitch_0
    const-string v0, "inbox"

    goto :goto_0

    .line 1056
    :sswitch_1
    const-string v0, "outbox"

    goto :goto_0

    .line 1058
    :sswitch_2
    const-string v0, "sent"

    goto :goto_0

    .line 1060
    :sswitch_3
    const-string v0, "draft"

    goto :goto_0

    .line 1062
    :sswitch_4
    const-string v0, "deleted"

    goto :goto_0

    .line 1052
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
    .locals 12
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMessageStatus():id is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", state is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 741
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 742
    .local v1, uri:Landroid/net/Uri;
    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "read"

    aput-object v0, v9, v10

    .line 744
    .local v9, projection:[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mediatek/bluetooth/map/SmsController;->convertReadStatus(I)I

    move-result v8

    .line 746
    .local v8, newState:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    .line 747
    const-string v0, "the status to be set is invalid"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    move v0, v10

    .line 762
    :goto_0
    return v0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 751
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 754
    const-string v0, "state is same, no need to update"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V

    .line 760
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v11

    .line 762
    goto :goto_0

    .line 756
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 757
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/SmsController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateInbox()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    return v0
.end method
