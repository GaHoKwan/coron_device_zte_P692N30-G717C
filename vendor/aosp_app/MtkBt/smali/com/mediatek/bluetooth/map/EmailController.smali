.class Lcom/mediatek/bluetooth/map/EmailController;
.super Lcom/mediatek/bluetooth/map/Controller;
.source "EmailController.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;
    }
.end annotation


# static fields
.field public static final CONTENT_BYTES:Ljava/lang/String; = "content_bytes"

.field private static final DEFAULT_ACCOUNT_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final DEFAULT_MESSAGE_LIST_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field private static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field private static final READ_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final RECORD_ID:Ljava/lang/String; = "_id"


# instance fields
.field private final ACTION_DELIVER_RESULT:Ljava/lang/String;

.field private final ACTION_SEND:Ljava/lang/String;

.field private final ACTION_SEND_RESULT:Ljava/lang/String;

.field private final ACTION_UPDATE_INBOX:Ljava/lang/String;

.field private final ACTION_UPDATE_INBOX_RESULT:Ljava/lang/String;

.field private final COLUMN_ACCOUT:I

.field private final COLUMN_ATTACHMENT:I

.field private final COLUMN_BCC:I

.field private final COLUMN_CC:I

.field private final COLUMN_FROM:I

.field private final COLUMN_ID:I

.field private final COLUMN_LOADED:I

.field private final COLUMN_MAILBOX:I

.field private final COLUMN_MESSAGE_ID:I

.field private final COLUMN_READ:I

.field private final COLUMN_REPLAY:I

.field private final COLUMN_SIZE:I

.field private final COLUMN_SUBJECT:I

.field private final COLUMN_TIMESTATP:I

.field private final COLUMN_TO:I

.field private final CONTROLLER_NOT_AVAILABLE:I

.field private final DELAYED_TIMEOUT:I

.field private final EXTRA_ACCOUNT:Ljava/lang/String;

.field private final EXTRA_ACCOUNT_ARRAY:Ljava/lang/String;

.field private final EXTRA_FLAG:Ljava/lang/String;

.field private final EXTRA_MAILBOX_TYPE:Ljava/lang/String;

.field private final EXTRA_NEED_RESULT:Ljava/lang/String;

.field private final EXTRA_RESULT:Ljava/lang/String;

.field private final EXTRA_STREAM:Ljava/lang/String;

.field private final FAILURE:I

.field private final MESSAGE_SEND_TIMEOUT:I

.field private final MESSAGE_UPDATE_INBOX_TIMEOUT:I

.field private final NO_SAVE_INBOX:I

.field private final PROJECTION_COLUMM_TIMESTAMP:I

.field private final SAVE_TO_INBOX:I

.field private final SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private mAccountId:J

.field private mAccountObserver:Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

.field private mContext:Landroid/content/Context;

.field private mEmailAddress:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mInstance:Lcom/mediatek/bluetooth/map/Instance;

.field private mMasId:I

.field private mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

.field private mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

.field private mMsgType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "emailAddress"

    aput-object v1, v0, v3

    const-string v1, "isDefault"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/bluetooth/map/EmailController;->DEFAULT_ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 123
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "timeStamp"

    aput-object v1, v0, v3

    const-string v1, "messageId"

    aput-object v1, v0, v4

    const-string v1, "flagRead"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/bluetooth/map/EmailController;->READ_STATUS_PROJECTION:[Ljava/lang/String;

    .line 130
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "subject"

    aput-object v1, v0, v3

    const-string v1, "timeStamp"

    aput-object v1, v0, v4

    const-string v1, "fromList"

    aput-object v1, v0, v5

    const-string v1, "replyToList"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/map/EmailController;->DEFAULT_MESSAGE_LIST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/map/Instance;J)V
    .locals 5
    .parameter "context"
    .parameter "instance"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Controller;-><init>()V

    .line 80
    const-string v0, "EmailController"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->TAG:Ljava/lang/String;

    .line 82
    const-string v0, "com.android.email.action.DIRECT_SEND"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->ACTION_SEND:Ljava/lang/String;

    .line 83
    const-string v0, "com.android.email.action.SEND_RESULT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->ACTION_SEND_RESULT:Ljava/lang/String;

    .line 84
    const-string v0, "com.android.email.action.DELIVER_RESULT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->ACTION_DELIVER_RESULT:Ljava/lang/String;

    .line 85
    const-string v0, "com.android.email.action.UPDATE_INBOX"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->ACTION_UPDATE_INBOX:Ljava/lang/String;

    .line 86
    const-string v0, "com.android.email.action.UPDATE_INBOX_RESULT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->ACTION_UPDATE_INBOX_RESULT:Ljava/lang/String;

    .line 88
    const-string v0, "com.android.email.extra.ACCOUNT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->EXTRA_ACCOUNT:Ljava/lang/String;

    .line 89
    const-string v0, "com.android.email.extra.STREAM"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->EXTRA_STREAM:Ljava/lang/String;

    .line 90
    const-string v0, "com.android.email.extra.FLAG"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->EXTRA_FLAG:Ljava/lang/String;

    .line 91
    const-string v0, "com.android.email.extra.MAILBOX_TYPE"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->EXTRA_MAILBOX_TYPE:Ljava/lang/String;

    .line 92
    const-string v0, "com.android.email.extra.RESULT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->EXTRA_RESULT:Ljava/lang/String;

    .line 93
    const-string v0, "com.android.email.extra.ACCOUNT_ARRAY"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->EXTRA_ACCOUNT_ARRAY:Ljava/lang/String;

    .line 94
    const-string v0, "com.android.email.extra.NEED_RESULT"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->EXTRA_NEED_RESULT:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->SAVE_TO_INBOX:I

    .line 99
    iput v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->NO_SAVE_INBOX:I

    .line 102
    iput v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->SUCCESS:I

    .line 103
    iput v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->FAILURE:I

    .line 106
    const/16 v0, 0x7530

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->DELAYED_TIMEOUT:I

    .line 109
    iput v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->MESSAGE_SEND_TIMEOUT:I

    .line 110
    iput v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->MESSAGE_UPDATE_INBOX_TIMEOUT:I

    .line 111
    iput v3, p0, Lcom/mediatek/bluetooth/map/EmailController;->CONTROLLER_NOT_AVAILABLE:I

    .line 148
    iput v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_ID:I

    .line 149
    iput v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_SUBJECT:I

    .line 150
    iput v3, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_TIMESTATP:I

    .line 151
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_FROM:I

    .line 152
    iput v4, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_REPLAY:I

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_TO:I

    .line 154
    const/4 v0, 0x6

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_ATTACHMENT:I

    .line 155
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_LOADED:I

    .line 156
    const/16 v0, 0x8

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_READ:I

    .line 157
    const/16 v0, 0x9

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_MESSAGE_ID:I

    .line 158
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_ACCOUT:I

    .line 159
    const/16 v0, 0xb

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_MAILBOX:I

    .line 160
    const/16 v0, 0xc

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_BCC:I

    .line 161
    const/16 v0, 0xd

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_CC:I

    .line 162
    const/16 v0, 0xe

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->COLUMN_SIZE:I

    .line 169
    iput v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->PROJECTION_COLUMM_TIMESTAMP:I

    .line 177
    iput v4, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMsgType:I

    .line 190
    new-instance v0, Lcom/mediatek/bluetooth/map/EmailController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/EmailController$1;-><init>(Lcom/mediatek/bluetooth/map/EmailController;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/mediatek/bluetooth/map/EmailController$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/EmailController$2;-><init>(Lcom/mediatek/bluetooth/map/EmailController;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/EmailController;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMasId:I

    .line 275
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    .line 276
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    .line 280
    iput-wide p3, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    .line 281
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    .line 282
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/EmailController;->onStart()V

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/EmailController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/map/EmailController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/map/EmailController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    return-wide p1
.end method

.method private composeMessageItem(Landroid/database/Cursor;)Lcom/mediatek/bluetooth/map/cache/MessageItem;
    .locals 16
    .parameter "cs"

    .prologue
    .line 672
    new-instance v10, Lcom/mediatek/bluetooth/map/cache/MessageItem;

    invoke-direct {v10}, Lcom/mediatek/bluetooth/map/cache/MessageItem;-><init>()V

    .line 673
    .local v10, msg:Lcom/mediatek/bluetooth/map/cache/MessageItem;
    const/4 v15, 0x0

    .line 674
    .local v15, size:I
    const/4 v7, 0x0

    .line 675
    .local v7, attachSize:I
    const/4 v14, 0x0

    .line 689
    .local v14, recipientStatus:I
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->convertReadStatus(I)I

    move-result v13

    .line 690
    .local v13, readStatus:I
    const/4 v1, -0x1

    if-ne v13, v1, :cond_0

    .line 691
    const/4 v13, 0x2

    .line 694
    :cond_0
    const/4 v9, 0x1

    .line 697
    .local v9, isText:Z
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 699
    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 700
    .local v11, msgId:J
    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->ATTACHMENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 701
    .local v2, attachUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "size"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 708
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 709
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_0

    .line 712
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 716
    .end local v2           #attachUri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #msgId:J
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMsgType:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setHandle(J)V

    .line 717
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSubject(Ljava/lang/String;)V

    .line 718
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setDatetime(J)V

    .line 719
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->toString([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderAddr(Ljava/lang/String;)V

    .line 720
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSenderName(Ljava/lang/String;)V

    .line 721
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->toString([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReplyAddr(Ljava/lang/String;)V

    .line 722
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientName(Ljava/lang/String;)V

    .line 723
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->toString([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 725
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/Address;->toString([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientAddr(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMsgType:I

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setMsgType(I)V

    .line 727
    const/16 v1, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSize(I)V

    .line 728
    invoke-virtual {v10, v9}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setText(Z)V

    .line 729
    invoke-virtual {v10, v14}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setRecipientStatus(I)V

    .line 730
    invoke-virtual {v10, v7}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setAttachSize(I)V

    .line 731
    invoke-virtual {v10, v13}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setReadStatus(I)V

    .line 732
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setProtected(Z)V

    .line 733
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setPriority(Z)V

    .line 734
    return-object v10
.end method

.method private convertFilterToSelection(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 10
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
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 965
    .local p3, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getStartTime()J

    move-result-wide v6

    .line 966
    .local v6, startTimeMillis:J
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getEndTime()J

    move-result-wide v0

    .line 967
    .local v0, endTimeMillis:J
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getReadStatus()I

    move-result v5

    .line 968
    .local v5, readStatus:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/EmailController;->convertMailBoxType(Ljava/lang/String;)I

    move-result v2

    .line 972
    .local v2, mailbox:I
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->getMaiboxId(I)J

    move-result-wide v3

    .line 976
    .local v3, mailboxId:J
    const-string v8, "accountKey=?"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-wide v8, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    const-string v8, " AND "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v8, "mailboxKey=?"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 987
    const-string v8, " AND "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v8, "timeStamp"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v8, " between ? AND ?"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_0
    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    .line 995
    const-string v8, " AND "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v8, "flagRead=?"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_1
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 998
    :cond_2
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 999
    const-string v8, " AND "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v8, "flagRead=?"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private convertLoadStatus(I)I
    .locals 1
    .parameter "loadStatus"

    .prologue
    .line 948
    packed-switch p1, :pswitch_data_0

    .line 957
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 950
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 952
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 954
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertMailBoxType(Ljava/lang/String;)I
    .locals 3
    .parameter "mailboxType"

    .prologue
    const/4 v0, -0x1

    .line 1008
    if-nez p1, :cond_0

    .line 1023
    :goto_0
    return v0

    .line 1011
    :cond_0
    const-string v1, "inbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    const/4 v0, 0x0

    goto :goto_0

    .line 1013
    :cond_1
    const-string v1, "outbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1014
    const/4 v0, 0x4

    goto :goto_0

    .line 1015
    :cond_2
    const-string v1, "sent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1016
    const/4 v0, 0x5

    goto :goto_0

    .line 1017
    :cond_3
    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1018
    const/4 v0, 0x6

    goto :goto_0

    .line 1019
    :cond_4
    const-string v1, "draft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1020
    const/4 v0, 0x3

    goto :goto_0

    .line 1022
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertMailBoxType():invalid mail box type->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private convertMaskToProjection(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4
    .parameter "mask"

    .prologue
    .line 913
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 914
    .local v2, result:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v1, projection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 917
    .local v0, index:I
    sget-object v3, Lcom/mediatek/bluetooth/map/EmailController;->DEFAULT_MESSAGE_LIST_PROJECTION:[Ljava/lang/String;

    return-object v3
.end method

.method private convertReadStatus(I)I
    .locals 1
    .parameter "emaillReadStatus"

    .prologue
    .line 923
    packed-switch p1, :pswitch_data_0

    .line 929
    const-string v0, "error: the read status from email provider is invalid"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 930
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 925
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 927
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deleteAttachment(J)V
    .locals 8
    .parameter "messageID"

    .prologue
    const/4 v2, 0x0

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAttachment():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 842
    sget-object v0, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 843
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 846
    .local v6, attachCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 857
    :goto_0
    return-void

    .line 850
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 853
    :catch_0
    move-exception v7

    .line 854
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 856
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getMaiboxId(I)J
    .locals 14
    .parameter "mailboxType"

    .prologue
    .line 864
    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->MAILBOX_URI:Landroid/net/Uri;

    .line 865
    .local v1, mailboxUri:Landroid/net/Uri;
    const-wide/16 v7, -0x1

    .line 866
    .local v7, id:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    .line 867
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "accountKey=? AND type=?"

    .line 869
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v10, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 872
    .local v4, selectionArgs:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMaiboxId(): mAccountId is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "mailbox type is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 874
    iget-wide v10, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gez v0, :cond_0

    .line 875
    const-string v0, "mAccountId is invalid"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 876
    const-wide/16 v10, -0x1

    .line 894
    :goto_0
    return-wide v10

    .line 879
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 889
    .local v9, mailboxCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 892
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 893
    const-string v0, "no available mailbox for the account"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    move-wide v10, v7

    .line 894
    goto :goto_0

    .line 882
    .end local v9           #mailboxCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 883
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 884
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 885
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v6

    .line 886
    .local v6, e:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 887
    const-wide/16 v10, -0x1

    goto :goto_0
.end method

.method private getMailboxType(J)I
    .locals 9
    .parameter "mailboxId"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 898
    const/4 v7, -0x1

    .line 899
    .local v7, type:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v8

    .line 900
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/mediatek/bluetooth/map/Email;->MAILBOX_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 901
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 902
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 903
    const/4 v0, -0x1

    .line 909
    :goto_0
    return v0

    .line 905
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 908
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 909
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1070
    if-eqz p1, :cond_0

    .line 1071
    const-string v0, "EmailController"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    return-void
.end method

.method private reverseReadStatus(I)I
    .locals 1
    .parameter "mapReadStatus"

    .prologue
    .line 935
    packed-switch p1, :pswitch_data_0

    .line 941
    const-string v0, "other map state"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 942
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 937
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 939
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public deleteMessage(J)Z
    .locals 20
    .parameter "messageID"

    .prologue
    .line 776
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "mailboxKey"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "flagAttachment"

    aput-object v5, v4, v2

    .line 780
    .local v4, message_PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x1

    .line 781
    .local v8, MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->getMaiboxId(I)J

    move-result-wide v14

    .line 782
    .local v14, newMailboxId:J
    const-wide/16 v16, -0x1

    .line 783
    .local v16, oldMailboxId:J
    move-wide/from16 v11, p1

    .line 784
    .local v11, id:J
    sget-object v2, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v2, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 786
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessage(): id is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 793
    const/4 v13, 0x0

    .line 796
    .local v13, messageCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "accountKey=? AND _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    if-nez v13, :cond_0

    .line 808
    const-string v2, "fail to find message"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 809
    const/4 v2, 0x0

    .line 835
    :goto_0
    return v2

    .line 803
    :catch_0
    move-exception v10

    .line 804
    .local v10, e:Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 805
    const/4 v2, 0x0

    goto :goto_0

    .line 812
    .end local v10           #e:Ljava/lang/SecurityException;
    :cond_0
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 816
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldMailboxId is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",newMailboxId is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 822
    cmp-long v2, v16, v14

    if-nez v2, :cond_2

    .line 823
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/mediatek/bluetooth/map/EmailController;->deleteAttachment(J)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 825
    const-string v2, "delete the record for ever"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 835
    const/4 v2, 0x1

    goto :goto_0

    .line 812
    :cond_1
    const-wide/16 v16, -0x1

    goto :goto_1

    .line 816
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 828
    :cond_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 829
    .local v9, cv:Landroid/content/ContentValues;
    const-string v2, "mailboxKey"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v9, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-wide/from16 v0, v16

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string v2, "move record to deleted folder"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public deregisterListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-super {p0}, Lcom/mediatek/bluetooth/map/Controller;->deregisterListener()V

    .line 307
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountObserver:Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountObserver:Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 309
    iput-object v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountObserver:Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    iput-object v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    .line 317
    :cond_1
    return-void
.end method

.method public getAccount()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    return-wide v0
.end method

.method public getMessage(Lcom/mediatek/bluetooth/map/cache/MessageRequest;)Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .locals 25
    .parameter "req"

    .prologue
    .line 416
    new-instance v24, Lcom/mediatek/bluetooth/map/VCard;

    invoke-direct/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;-><init>()V

    .line 417
    .local v24, vCard:Lcom/mediatek/bluetooth/map/VCard;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->isAttachDelivered()Z

    move-result v9

    .line 418
    .local v9, attachment:Z
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getMessageId()J

    move-result-wide v14

    .line 420
    .local v14, messageID:J
    sget-object v4, Lcom/mediatek/bluetooth/map/EmailController;->DEFAULT_MESSAGE_LIST_PROJECTION:[Ljava/lang/String;

    .line 421
    .local v4, PROJECTION:[Ljava/lang/String;
    sget-object v2, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 424
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessage(): id is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",attachment is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 427
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 438
    .local v13, messageCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    :cond_0
    const-string v2, "no message record for the id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 440
    const/16 v17, 0x0

    .line 489
    .end local v13           #messageCursor:Landroid/database/Cursor;
    :goto_0
    return-object v17

    .line 431
    :catch_0
    move-exception v10

    .line 432
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 433
    const/16 v17, 0x0

    goto :goto_0

    .line 434
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v10

    .line 435
    .local v10, e:Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 436
    const/16 v17, 0x0

    goto :goto_0

    .line 442
    .end local v10           #e:Ljava/lang/SecurityException;
    .restart local v13       #messageCursor:Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->getBMessageObject()Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    move-result-object v17

    .line 443
    .local v17, msg:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->reset()V

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setEncoding(I)Z

    .line 445
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setCharset(I)Z

    .line 446
    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setLang(I)Z

    .line 447
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setMessageType(I)Z

    .line 451
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/map/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 452
    .local v18, orignator:Ljava/lang/String;
    const/16 v20, 0x0

    .line 453
    .local v20, regions:[Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 454
    const-string v2, "@"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 456
    :cond_2
    if-eqz v20, :cond_3

    .line 457
    const/4 v2, 0x0

    aget-object v2, v20, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/VCard;->setName(Ljava/lang/String;)V

    .line 459
    :cond_3
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/VCard;->setEmail(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setOrignator(Ljava/lang/String;)Z

    .line 463
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;->reset()V

    .line 464
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v19, recipient:Ljava/lang/StringBuilder;
    const/4 v2, 0x5

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v23

    .line 467
    .local v23, toList:[Lcom/mediatek/bluetooth/map/Address;
    move-object/from16 v8, v23

    .local v8, arr$:[Lcom/mediatek/bluetooth/map/Address;
    array-length v12, v8

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v21, v8, v11

    .line 468
    .local v21, to:Lcom/mediatek/bluetooth/map/Address;
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/bluetooth/map/Address;->getAddress()Ljava/lang/String;

    move-result-object v22

    .line 469
    .local v22, toAddress:Ljava/lang/String;
    const-string v2, "@"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 470
    if-eqz v20, :cond_4

    .line 471
    const/4 v2, 0x0

    aget-object v2, v20, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/VCard;->setName(Ljava/lang/String;)V

    .line 473
    :cond_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/map/VCard;->setEmail(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/bluetooth/map/VCard;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 476
    .end local v21           #to:Lcom/mediatek/bluetooth/map/Address;
    .end local v22           #toAddress:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->addRecipient(Ljava/lang/String;)Z

    .line 477
    const/16 v2, 0x8

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->convertReadStatus(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setReadStatus(I)V

    .line 479
    new-instance v16, Lcom/mediatek/bluetooth/map/mime/EmailMime;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v14, v15}, Lcom/mediatek/bluetooth/map/mime/EmailMime;-><init>(Landroid/content/ContentResolver;J)V

    .line 482
    .local v16, mime:Lcom/mediatek/bluetooth/map/mime/EmailMime;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFile()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeTo(Ljava/io/File;Lcom/mediatek/bluetooth/map/mime/MimeBase;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 487
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFile()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setContentSize(Ljava/io/File;)Z

    .line 488
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 483
    :catch_2
    move-exception v10

    .line 484
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getMessageList(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;)Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    .locals 26
    .parameter "req"

    .prologue
    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getListSize()I

    move-result v15

    .line 495
    .local v15, listSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getListOffset()I

    move-result v14

    .line 496
    .local v14, listOffset:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getMaxSubjectLen()I

    move-result v19

    .line 497
    .local v19, maxSubjectLen:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getRecipient()Ljava/lang/String;

    move-result-object v22

    .line 498
    .local v22, recipient:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getOrignator()Ljava/lang/String;

    move-result-object v21

    .line 499
    .local v21, orignator:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getFolder()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/EmailController;->convertMailBoxType(Ljava/lang/String;)I

    move-result v16

    .line 500
    .local v16, mailbox:I
    const-wide/16 v17, 0x0

    .line 501
    .local v17, mailboxId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mInstance:Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/map/Instance;->getMsgListRspCache()Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageList(): listsize is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",listoffset is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", maxSubjectLen is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mailbox is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 506
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v24, where:Ljava/lang/StringBuilder;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v25, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 515
    .local v12, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageList(): Account id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 517
    sget-object v6, Lcom/mediatek/bluetooth/map/EmailController;->DEFAULT_MESSAGE_LIST_PROJECTION:[Ljava/lang/String;

    .line 521
    .local v6, PROJECTION:[Ljava/lang/String;
    if-ltz v15, :cond_0

    if-ltz v14, :cond_0

    if-gez v19, :cond_1

    .line 522
    :cond_0
    const-string v4, "message request is not avalaible"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 523
    const/4 v4, 0x0

    .line 592
    :goto_0
    return-object v4

    .line 526
    :cond_1
    if-gez v16, :cond_2

    .line 527
    const/4 v4, 0x0

    goto :goto_0

    .line 531
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/map/EmailController;->convertFilterToSelection(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)[Ljava/lang/String;

    .line 533
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v9, "timeStamp desc"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 545
    .local v13, listCursor:Landroid/database/Cursor;
    if-nez v13, :cond_3

    .line 546
    const/4 v4, 0x0

    goto :goto_0

    .line 537
    .end local v13           #listCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 538
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 539
    const/4 v4, 0x0

    goto :goto_0

    .line 540
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v10

    .line 541
    .local v10, e:Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 542
    const/4 v4, 0x0

    goto :goto_0

    .line 551
    .end local v10           #e:Ljava/lang/SecurityException;
    .restart local v13       #listCursor:Landroid/database/Cursor;
    :cond_3
    if-lez v15, :cond_4

    if-lez v14, :cond_4

    invoke-interface {v13, v14}, Landroid/database/Cursor;->move(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 552
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 553
    const/4 v4, 0x0

    goto :goto_0

    .line 556
    :cond_4
    const/16 v20, 0x0

    .line 557
    .local v20, newMessageFlag:Z
    :cond_5
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->getCurrentSize()I

    move-result v4

    if-ge v4, v15, :cond_a

    .line 559
    :cond_6
    if-eqz v22, :cond_7

    .line 560
    const-string v4, "toList"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 561
    .local v23, toList:Ljava/lang/String;
    if-eqz v23, :cond_5

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 567
    .end local v23           #toList:Ljava/lang/String;
    :cond_7
    if-eqz v21, :cond_8

    .line 568
    const-string v4, "fromList"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 569
    .local v11, fromList:Ljava/lang/String;
    if-eqz v11, :cond_5

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 576
    .end local v11           #fromList:Ljava/lang/String;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 577
    if-lez v15, :cond_9

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/bluetooth/map/EmailController;->composeMessageItem(Landroid/database/Cursor;)Lcom/mediatek/bluetooth/map/cache/MessageItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->addMessageItem(Lcom/mediatek/bluetooth/map/cache/MessageItem;)Z

    .line 580
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->addSize(I)Z

    goto :goto_1

    .line 583
    :cond_a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 585
    if-eqz v20, :cond_b

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->setNewMessage()Z

    .line 590
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->declineListOffset(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageListObject:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    goto/16 :goto_0
.end method

.method public handleDeliverResult(JI)V
    .locals 2
    .parameter "id"
    .parameter "result"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMsgType:I

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageDelivered(JII)V

    .line 263
    return-void
.end method

.method public handleSendResult(JI)V
    .locals 2
    .parameter "id"
    .parameter "result"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v1, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMsgType:I

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageSent(JII)V

    .line 268
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/EmailController;->deregisterListener()V

    .line 290
    return-void
.end method

.method public pushMessage(Lcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 13
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 596
    const-string v9, "pushMessage"

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFile()Ljava/io/File;

    move-result-object v0

    .line 601
    .local v0, file:Ljava/io/File;
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->isTransparent()Z

    move-result v6

    .line 603
    .local v6, tranparent:Z
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getFolder()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, folder:Ljava/lang/String;
    if-nez v1, :cond_1

    move v3, v8

    .line 606
    .local v3, mailbox:I
    :goto_0
    const/4 v9, 0x4

    if-ne v3, v9, :cond_3

    .line 607
    if-eqz v6, :cond_2

    .line 608
    const/4 v5, 0x1

    .line 616
    .local v5, sendAndSave:I
    :goto_1
    iget-wide v9, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    if-ne v3, v8, :cond_4

    .line 617
    :cond_0
    const-string v8, "invalid account ID or invalid mailbox"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 637
    :goto_2
    return v7

    .line 604
    .end local v3           #mailbox:I
    .end local v5           #sendAndSave:I
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->convertMailBoxType(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 610
    .restart local v3       #mailbox:I
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #sendAndSave:I
    goto :goto_1

    .line 613
    .end local v5           #sendAndSave:I
    :cond_3
    const/4 v5, 0x2

    .restart local v5       #sendAndSave:I
    goto :goto_1

    .line 621
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.email.action.DIRECT_SEND"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.android.email.extra.ACCOUNT"

    iget-wide v9, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 623
    const-string v8, "com.android.email.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 624
    const-string v8, "com.android.email.extra.FLAG"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    .line 627
    const-string v8, "com.android.email.extra.MAILBOX_TYPE"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    :cond_5
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/EmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/EmailController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 632
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/bluetooth/map/EmailController;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7530

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 635
    iget v7, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMsgType:I

    const-wide/16 v8, 0x1

    invoke-static {v7, v8, v9}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setHandle(J)V

    .line 637
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public queryAccount(J)Z
    .locals 11
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 341
    const/4 v6, 0x0

    .line 344
    .local v6, accountCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 353
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    const-string v0, "account is not in database at current"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    move v0, v9

    .line 360
    :goto_0
    return v0

    .line 349
    :catch_0
    move-exception v7

    .line 350
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v9

    .line 351
    goto :goto_0

    .line 357
    .end local v7           #e:Ljava/lang/SecurityException;
    :cond_1
    if-eqz v6, :cond_2

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 360
    goto :goto_0
.end method

.method public queryAccounts(Ljava/util/Set;)Z
    .locals 10
    .parameter "accountSet"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 364
    if-nez p1, :cond_0

    move v0, v8

    .line 387
    :goto_0
    return v0

    .line 368
    :cond_0
    const/4 v6, 0x0

    .line 371
    .local v6, accountCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    if-nez v6, :cond_1

    move v0, v8

    .line 381
    goto :goto_0

    .line 376
    :catch_0
    move-exception v7

    .line 377
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v8

    .line 378
    goto :goto_0

    .line 383
    .end local v7           #e:Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 387
    goto :goto_0
.end method

.method public queryDefaultAccount()J
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 392
    const-wide/16 v8, -0x1

    .line 393
    .local v8, id:J
    const/4 v6, 0x0

    .line 395
    .local v6, accountCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/bluetooth/map/EmailController;->DEFAULT_ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "isDefault=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 404
    if-eqz v6, :cond_1

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 408
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v10, v8

    .line 410
    .end local v8           #id:J
    .local v10, id:J
    :goto_0
    return-wide v10

    .line 400
    .end local v10           #id:J
    .restart local v8       #id:J
    :catch_0
    move-exception v7

    .line 401
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v10, v8

    .line 402
    .end local v8           #id:J
    .restart local v10       #id:J
    goto :goto_0
.end method

.method public queryMessage(Ljava/util/HashMap;)V
    .locals 12
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
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1047
    const/4 v7, 0x0

    .line 1049
    .local v7, messageCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mailboxKey"

    aput-object v4, v2, v3

    const-string v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "timeStamp desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1060
    :goto_0
    if-nez v7, :cond_0

    .line 1067
    :goto_1
    return-void

    .line 1055
    :catch_0
    move-exception v6

    .line 1056
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1057
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v6

    .line 1058
    .local v6, e:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1063
    .end local v6           #e:Ljava/lang/SecurityException;
    :cond_0
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1066
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 293
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/map/Controller;->registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountObserver:Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;-><init>(Lcom/mediatek/bluetooth/map/EmailController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountObserver:Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    iget v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMsgType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/bluetooth/map/MessageObserver;-><init>(Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;Lcom/mediatek/bluetooth/map/ControllerListener;I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountObserver:Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mMessageObserver:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 303
    return-void
.end method

.method public restoreMessage(J)Z
    .locals 16
    .parameter "messageID"

    .prologue
    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreMessage():id is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 740
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->getMaiboxId(I)J

    move-result-wide v10

    .line 741
    .local v10, deleteMailboxId:J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "mailboxKey"

    aput-object v5, v4, v2

    .line 744
    .local v4, projection:[Ljava/lang/String;
    sget-object v2, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 746
    .local v3, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 748
    .local v8, cs:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 753
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 754
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 755
    .local v14, mailbox:I
    int-to-long v5, v14

    cmp-long v2, v5, v10

    if-nez v2, :cond_0

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 757
    .local v15, orignalFolder:Ljava/lang/Integer;
    if-eqz v15, :cond_1

    .line 758
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 759
    .local v9, cv:Landroid/content/ContentValues;
    const-string v2, "mailboxKey"

    invoke-virtual {v9, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v9, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 765
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v15           #orignalFolder:Ljava/lang/Integer;
    :cond_0
    :goto_0
    const/4 v13, 0x1

    .line 770
    .end local v14           #mailbox:I
    .local v13, flag:Z
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 771
    .end local v13           #flag:Z
    :goto_2
    return v13

    .line 749
    :catch_0
    move-exception v12

    .line 750
    .local v12, e:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 751
    const/4 v13, 0x0

    goto :goto_2

    .line 762
    .end local v12           #e:Ljava/lang/SecurityException;
    .restart local v14       #mailbox:I
    .restart local v15       #orignalFolder:Ljava/lang/Integer;
    :cond_1
    const-string v2, "no record in delete folder"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    .end local v14           #mailbox:I
    .end local v15           #orignalFolder:Ljava/lang/Integer;
    :cond_2
    const-string v2, "the message does not exist in MMS provider"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 768
    const/4 v13, 0x0

    .restart local v13       #flag:Z
    goto :goto_1
.end method

.method public revertMailboxType(I)Ljava/lang/String;
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 1028
    int-to-long v1, p1

    invoke-direct {p0, v1, v2}, Lcom/mediatek/bluetooth/map/EmailController;->getMailboxType(J)I

    move-result v0

    .line 1029
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 1041
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported tye:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 1042
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1031
    :pswitch_1
    const-string v1, "inbox"

    goto :goto_0

    .line 1033
    :pswitch_2
    const-string v1, "outbox"

    goto :goto_0

    .line 1035
    :pswitch_3
    const-string v1, "sent"

    goto :goto_0

    .line 1037
    :pswitch_4
    const-string v1, "deleted"

    goto :goto_0

    .line 1039
    :pswitch_5
    const-string v1, "draft"

    goto :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAccount(J)Z
    .locals 3
    .parameter "account"

    .prologue
    .line 321
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 322
    .local v0, accoutset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccount():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 332
    iput-wide p1, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    .line 333
    const/4 v1, 0x1

    return v1
.end method

.method public setMessageStatus(JI)Z
    .locals 8
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 653
    invoke-direct {p0, p3}, Lcom/mediatek/bluetooth/map/EmailController;->reverseReadStatus(I)I

    move-result v1

    .line 654
    .local v1, emailState:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMessageStatus():id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 655
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 667
    :goto_0
    return v4

    .line 658
    :cond_0
    sget-object v5, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 659
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 660
    .local v3, value:Landroid/content/ContentValues;
    const-string v5, "flagRead"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/map/EmailController;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    const/4 v4, 0x1

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateInbox()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 641
    const-string v2, "updateInbox()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.email.action.UPDATE_INBOX"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.email.extra.ACCOUNT"

    new-array v3, v7, [J

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J

    aput-wide v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 644
    const-string v2, "com.android.email.extra.NEED_RESULT"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 646
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 648
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EmailController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 649
    return v7
.end method
