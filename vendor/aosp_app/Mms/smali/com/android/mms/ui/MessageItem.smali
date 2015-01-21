.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$PduLoadedCallback;,
        Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;,
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    }
.end annotation


# static fields
.field public static ATTACHMENT_TYPE_NOT_LOADED:I

.field private static IPMSG_TAG:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field private mBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mBody:Ljava/lang/String;

.field final mBoxId:I

.field private mCacheBitmapHeight:I

.field private mCacheBitmapWidth:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mCachedFormattedSimStatus:Ljava/lang/CharSequence;

.field mCachedFormattedTimestamp:Ljava/lang/CharSequence;

.field mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mGroupContact:Lcom/android/mms/data/Contact;

.field mHasDeliveryReport:Z

.field private mHasDrmContent:Z

.field mHasReadReport:Z

.field mHighlight:Ljava/util/regex/Pattern;

.field mImportant:Z

.field mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

.field mIpMessageId:J

.field mIsDrawLoadAllButton:Z

.field mIsDrawOnlineDivider:Z

.field mIsDrawTimeDivider:Z

.field mIsDrawUnreadDivider:Z

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field private mItemSelected:Z

.field mLastSendingState:Z

.field mLocked:Z

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field mMmsStatus:I

.field final mMsgId:J

.field mOnlineString:Ljava/lang/String;

.field private mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

.field mReadReport:Z

.field mServiceCenter:Ljava/lang/String;

.field mSimId:I

.field mSimMsg:Z

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSmsDate:J

.field mSmsSentDate:J

.field mSubject:Ljava/lang/String;

.field mTextContentType:Ljava/lang/String;

.field mTimeDividerString:Ljava/lang/String;

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;

.field mUnreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    .line 87
    const-string v0, "Mms/ipmsg/MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->IPMSG_TAG:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ZZIZJI)V
    .locals 24
    .parameter "context"
    .parameter "boxId"
    .parameter "messageType"
    .parameter "simId"
    .parameter "errorType"
    .parameter "locked"
    .parameter "charset"
    .parameter "msgId"
    .parameter "type"
    .parameter "subject"
    .parameter "serviceCenter"
    .parameter "deliveryReport"
    .parameter "readReport"
    .parameter "highlight"
    .parameter "isDrawTimeDivider"
    .parameter "isDrawUnreadDivider"
    .parameter "unreadCount"
    .parameter "isDrawLoadAllMessagesButton"
    .parameter "indDate"
    .parameter "mmsStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasReadReport:Z

    .line 134
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDeliveryReport:Z

    .line 141
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    .line 147
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mSmsDate:J

    .line 148
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    .line 149
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    .line 151
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mItemSelected:Z

    .line 152
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z

    .line 155
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    .line 157
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mImportant:Z

    .line 159
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    .line 160
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    .line 162
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    .line 163
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    .line 165
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsDrawOnlineDivider:Z

    .line 166
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mOnlineString:Ljava/lang/String;

    .line 168
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsDrawLoadAllButton:Z

    .line 169
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 170
    new-instance v20, Ljava/lang/ref/SoftReference;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 205
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 206
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 207
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 208
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSimId:I

    .line 209
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 210
    if-eqz p6, :cond_5

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 211
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 212
    new-instance v19, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static/range {p11 .. p11}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v19

    move/from16 v1, p7

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 214
    .local v19, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 216
    .end local v19           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 217
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 218
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    .line 219
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 221
    move/from16 v0, p22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMmsStatus:I

    .line 223
    sget-object v20, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 224
    const-wide/16 v16, 0x0

    .line 225
    .local v16, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    .line 226
    .local v12, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v20, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 227
    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/NotificationInd;

    .line 229
    .local v11, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 231
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v20

    if-eqz v20, :cond_1

    .line 232
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 234
    :cond_1
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 235
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v16, v20, v22

    .line 345
    .end local v11           #notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v20

    if-nez v20, :cond_3

    .line 347
    const/16 v20, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->getTimestampStrId()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 356
    :cond_3
    :goto_2
    move/from16 v0, p16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 358
    const/16 v20, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 359
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getTimeDividerString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    .line 364
    :cond_4
    :goto_3
    move/from16 v0, p17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    .line 365
    move/from16 v0, p18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    .line 366
    move/from16 v0, p19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsDrawLoadAllButton:Z

    .line 367
    sget-object v20, Lcom/android/mms/ui/MessageItem;->IPMSG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MessageItem(): show time divider ?= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mTimeDividerString = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", show unread divider ?= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", unread count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", show load all messages button ?= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    .line 210
    .end local v12           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v16           #timestamp:J
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v12       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v16       #timestamp:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 238
    .local v9, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 241
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->checkDrmContent()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v20, v0

    const/16 v21, 0x84

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object v14, v9

    .line 246
    check-cast v14, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 247
    .local v14, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 248
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v16, v20, v22

    .line 256
    .end local v9           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v14           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_4
    if-eqz p13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const v21, 0x7f0b023b

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 258
    :cond_7
    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 274
    :goto_5
    if-eqz p14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const v21, 0x7f0b023b

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 276
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 287
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 289
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getMmsReportStatus(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v8

    .line 290
    .local v8, mmsReportStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_b

    .line 291
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_a
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    .line 292
    .local v7, mmsReportStatus:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    sget-object v20, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MessageItem.init(): readStatus = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget v0, v7, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 294
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasReadReport:Z

    .line 305
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #mmsReportStatus:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v8           #mmsReportStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v15

    .line 306
    .local v15, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 307
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v18

    .line 308
    .local v18, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 309
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 312
    .end local v18           #tm:Lcom/android/mms/model/TextModel;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 317
    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 319
    .local v6, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v6, :cond_14

    .line 320
    invoke-interface {v6}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v20

    if-nez v20, :cond_13

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v4

    .line 324
    .local v4, attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    if-eqz v4, :cond_2

    .line 325
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    .line 326
    .local v3, attach:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto :goto_8

    .line 251
    .end local v3           #attach:Lcom/android/mms/model/FileAttachmentModel;
    .end local v4           #attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v15           #slide:Lcom/android/mms/model/SlideModel;
    .restart local v9       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_d
    const v20, 0x7f0b023b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 253
    check-cast v9, Lcom/google/android/mms/pdu/SendReq;

    .end local v9           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v16, v20, v22

    goto/16 :goto_4

    .line 262
    :cond_e
    :try_start_0
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 263
    .local v13, reportInt:I
    const/16 v20, 0x80

    move/from16 v0, v20

    if-ne v13, v0, :cond_f

    .line 264
    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 268
    .end local v13           #reportInt:I
    :catch_0
    move-exception v10

    .line 269
    .local v10, nfe:Ljava/lang/NumberFormatException;
    sget-object v20, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v21, "Value for delivery report was invalid."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_5

    .line 266
    .end local v10           #nfe:Ljava/lang/NumberFormatException;
    .restart local v13       #reportInt:I
    :cond_f
    :try_start_1
    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 280
    .end local v13           #reportInt:I
    :cond_10
    :try_start_2
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 281
    .restart local v13       #reportInt:I
    const/16 v20, 0x80

    move/from16 v0, v20

    if-ne v13, v0, :cond_11

    const/16 v20, 0x1

    :goto_9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 282
    .end local v13           #reportInt:I
    :catch_1
    move-exception v10

    .line 283
    .restart local v10       #nfe:Ljava/lang/NumberFormatException;
    sget-object v20, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v21, "Value for read report was invalid."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_6

    .line 281
    .end local v10           #nfe:Ljava/lang/NumberFormatException;
    .restart local v13       #reportInt:I
    :cond_11
    const/16 v20, 0x0

    goto :goto_9

    .line 297
    .end local v13           #reportInt:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #mmsReportStatus:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .restart local v8       #mmsReportStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_12
    sget-object v20, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MessageItem.init(): deliveryStatus = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v0, v7, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    move/from16 v20, v0

    const/16 v21, 0x81

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 299
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDeliveryReport:Z

    goto/16 :goto_7

    .line 331
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #mmsReportStatus:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v8           #mmsReportStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    .restart local v6       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .restart local v15       #slide:Lcom/android/mms/model/SlideModel;
    :cond_13
    sget-object v20, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v21, "CMCC: Not add attach.getAttachSize into mMessageSize"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 336
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v4

    .line 337
    .restart local v4       #attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    if-eqz v4, :cond_2

    .line 338
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    .line 339
    .restart local v3       #attach:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto :goto_a

    .line 351
    .end local v3           #attach:Lcom/android/mms/model/FileAttachmentModel;
    .end local v4           #attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v15           #slide:Lcom/android/mms/model/SlideModel;
    :cond_15
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    .line 361
    :cond_16
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getTimeDividerString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Landroid/database/Cursor;)V
    .locals 6
    .parameter "context"
    .parameter "columnsMap"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mHasReadReport:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mHasDeliveryReport:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    .line 147
    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mSmsDate:J

    .line 148
    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    .line 149
    iput-object v3, p0, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    .line 151
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mItemSelected:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z

    .line 155
    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    .line 157
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mImportant:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    .line 160
    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    .line 162
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    .line 163
    iput v2, p0, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    .line 165
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawOnlineDivider:Z

    .line 166
    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mOnlineString:Ljava/lang/String;

    .line 168
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawLoadAllButton:Z

    .line 169
    iput-object v3, p0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 170
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 186
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 188
    if-nez p3, :cond_0

    .line 189
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Get the null cursor"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    iget v1, p2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 193
    iget v1, p2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 194
    iget v1, p2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, type:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    .line 197
    const-string v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget v1, p2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 200
    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZIZJZ)V
    .locals 14
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .parameter "isDrawTimeDivider"
    .parameter "isDrawUnreadDivider"
    .parameter "unreadCount"
    .parameter "isDrawLoadAllMessagesButton"
    .parameter "indDate"
    .parameter "isGroupConversation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mHasReadReport:Z

    .line 134
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mHasDeliveryReport:Z

    .line 141
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    .line 147
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mSmsDate:J

    .line 148
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    .line 149
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    .line 151
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mItemSelected:Z

    .line 152
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z

    .line 155
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    .line 157
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mImportant:Z

    .line 159
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    .line 160
    const-string v10, ""

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    .line 162
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    .line 163
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    .line 165
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawOnlineDivider:Z

    .line 166
    const-string v10, ""

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mOnlineString:Ljava/lang/String;

    .line 168
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawLoadAllButton:Z

    .line 169
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 170
    new-instance v10, Ljava/lang/ref/SoftReference;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 375
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 377
    if-nez p3, :cond_0

    .line 378
    new-instance v10, Lcom/google/android/mms/MmsException;

    const-string v11, "Get the null cursor"

    invoke-direct {v10, v11}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 381
    :cond_0
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 382
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 383
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    .line 385
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 388
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsIpMessageId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    .line 391
    invoke-static {p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v10

    invoke-interface {v10}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v10

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 392
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    .line 394
    :cond_1
    iget-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    invoke-static {p1}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 395
    invoke-static {p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 396
    iget-object v10, p0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-nez v10, :cond_2

    .line 397
    sget-object v10, Lcom/android/mms/ui/MessageItem;->IPMSG_TAG:Ljava/lang/String;

    const-string v11, "MessageItem.init(): ip message is null!"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_2
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsImportant:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mImportant:Z

    .line 402
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    .line 403
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    .line 404
    move/from16 v0, p8

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    .line 405
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawLoadAllButton:Z

    .line 406
    sget-object v10, Lcom/android/mms/ui/MessageItem;->IPMSG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MessageItem.init(): mIpMessageId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mImportant = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/mms/ui/MessageItem;->mImportant:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mIsDrawTimeDivider = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mIsDrawUnreadDivider = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawUnreadDivider:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mUnreadCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/mms/ui/MessageItem;->mUnreadCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", show load all messages button ?= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsServiceCenter:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    .line 415
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mSimId:I

    .line 417
    const-string v10, "sms"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 418
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 420
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 422
    .local v5, status:J
    const-wide/16 v10, 0x1

    cmp-long v10, v5, v10

    if-eqz v10, :cond_3

    const-wide/16 v10, 0x3

    cmp-long v10, v5, v10

    if-eqz v10, :cond_3

    const-wide/16 v10, 0x5

    cmp-long v10, v5, v10

    if-eqz v10, :cond_3

    const-wide/16 v10, 0x7

    cmp-long v10, v5, v10

    if-nez v10, :cond_4

    .line 426
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    .line 445
    :cond_4
    const-wide/16 v10, 0x40

    cmp-long v10, v5, v10

    if-ltz v10, :cond_9

    .line 447
    sget-object v10, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 459
    :goto_1
    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 463
    iget-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    if-eqz v10, :cond_d

    .line 464
    const-wide/16 v10, 0x5

    cmp-long v10, v5, v10

    if-eqz v10, :cond_5

    const-wide/16 v10, 0x7

    cmp-long v10, v5, v10

    if-nez v10, :cond_c

    .line 466
    :cond_5
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 474
    :goto_2
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 478
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSimId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mSimId:I

    .line 491
    iget v10, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v10}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    if-nez v10, :cond_e

    .line 492
    const v10, 0x7f0b023b

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, meString:Ljava/lang/String;
    iput-object v4, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 509
    .end local v4           #meString:Ljava/lang/String;
    :goto_3
    iget-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    if-eqz v10, :cond_12

    .line 511
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 512
    .local v8, tempBody:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v8, :cond_11

    .end local v8           #tempBody:Ljava/lang/String;
    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 520
    :goto_5
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 521
    .local v1, date:J
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v10

    if-nez v10, :cond_6

    .line 525
    iput-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mSmsDate:J

    .line 526
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-eqz v10, :cond_15

    .line 528
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isReceivedMessage()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 529
    iget-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    if-eqz v10, :cond_13

    .line 530
    const v10, 0x7f0b0037

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 535
    :goto_6
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDateSent:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    .line 545
    :cond_6
    :goto_7
    iget-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    if-eqz v10, :cond_7

    .line 546
    invoke-static {p1, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getTimeDividerString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    .line 548
    :cond_7
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    :goto_8
    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 549
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 595
    .end local v1           #date:J
    .end local v5           #status:J
    :goto_9
    return-void

    .line 401
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 448
    .restart local v5       #status:J
    :cond_9
    const-wide/16 v10, 0x20

    cmp-long v10, v5, v10

    if-ltz v10, :cond_a

    .line 450
    sget-object v10, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 451
    :cond_a
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-ltz v10, :cond_b

    iget-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    if-nez v10, :cond_b

    .line 453
    sget-object v10, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 455
    :cond_b
    sget-object v10, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 468
    :cond_c
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    goto/16 :goto_2

    .line 471
    :cond_d
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    goto/16 :goto_2

    .line 498
    :cond_e
    iget-object v10, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    if-nez p12, :cond_f

    iget-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    if-eqz v10, :cond_10

    .line 499
    :cond_f
    iget-object v10, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    .line 500
    iget-object v10, p0, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_3

    .line 502
    :cond_10
    const v10, 0x104000e

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_3

    .line 512
    .restart local v8       #tempBody:Ljava/lang/String;
    :cond_11
    const-string v8, ""

    goto/16 :goto_4

    .line 515
    .end local v8           #tempBody:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 533
    .restart local v1       #date:J
    :cond_13
    invoke-static {p1, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_6

    .line 539
    :cond_14
    invoke-static {p1, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_7

    .line 542
    :cond_15
    const-string v10, ""

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_7

    .line 548
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 550
    .end local v1           #date:J
    .end local v5           #status:J
    :cond_17
    const-string v10, "mms"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 551
    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 552
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 553
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 554
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 555
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 556
    .local v7, subject:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 557
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 561
    .local v9, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 563
    .end local v9           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_18
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    :goto_a
    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 568
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSimId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mSimId:I

    .line 572
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 573
    sget v10, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 574
    sget-object v10, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 575
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 576
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 577
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 578
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 580
    const-string v10, ""

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 582
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsStatus:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/mms/ui/MessageItem;->mMmsStatus:I

    .line 586
    iget v10, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v11, 0x82

    if-eq v10, v11, :cond_1a

    const/4 v3, 0x1

    .line 588
    .local v3, loadSlideshow:Z
    :goto_b
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    new-instance v12, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;-><init>(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v10, v11, v3, v12}, Lcom/android/mms/util/PduLoaderManager;->getPdu(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    goto/16 :goto_9

    .line 563
    .end local v3           #loadSlideshow:Z
    :cond_19
    const/4 v10, 0x0

    goto :goto_a

    .line 586
    :cond_1a
    const/4 v3, 0x0

    goto :goto_b

    .line 593
    .end local v7           #subject:Ljava/lang/String;
    :cond_1b
    new-instance v10, Lcom/google/android/mms/MmsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown type of the message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/mms/ui/MessageItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/ui/MessageItem;->getTimestampStrId()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    return-object v0
.end method

.method private getTimestampStrId()I
    .locals 2

    .prologue
    .line 947
    const/16 v0, 0x82

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v1, :cond_0

    .line 948
    const v0, 0x7f0b0240

    .line 953
    :goto_0
    return v0

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    const v0, 0x7f0b0037

    goto :goto_0

    .line 953
    :cond_1
    const v0, 0x7f0b0036

    goto :goto_0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 598
    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 608
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    .line 609
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 611
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mGroupContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public cancelPduLoading()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    invoke-interface {v0}, Lcom/android/mms/util/ItemLoadedFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPduLoading for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/mms/util/ItemLoadedFuture;->cancel(Landroid/net/Uri;)V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 858
    :cond_1
    return-void
.end method

.method public getBoxId()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    return v0
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 671
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 672
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 673
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getCachedFormattedSimStatus()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 913
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 914
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 915
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedSimStatus:Ljava/lang/CharSequence;

    .line 917
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedSimStatus:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getCachedFormattedTimestamp()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 900
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 901
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 902
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedTimestamp:Ljava/lang/CharSequence;

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedTimestamp:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getFileAttachmentCount()I
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v0

    .line 938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIpMessageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIpMessageBitmapHeight()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mCacheBitmapHeight:I

    return v0
.end method

.method public getIpMessageBitmapWidth()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mCacheBitmapWidth:I

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 684
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getMmsDownloadStatus()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMmsStatus:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mSimId:I

    return v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public hasDrmContent()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z

    return v0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 622
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 655
    .local v0, isFailedMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 657
    .local v1, isFailedSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_2
    move v0, v3

    .line 653
    goto :goto_0

    .restart local v0       #isFailedMms:Z
    :cond_3
    move v1, v3

    .line 655
    goto :goto_1
.end method

.method public isMe()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 630
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v2, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 633
    .local v0, isIncomingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-nez v4, :cond_3

    :cond_1
    move v1, v2

    .line 636
    .local v1, isIncomingSms:Z
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    :goto_2
    return v2

    .end local v0           #isIncomingMms:Z
    .end local v1           #isIncomingSms:Z
    :cond_2
    move v0, v3

    .line 630
    goto :goto_0

    .restart local v0       #isIncomingMms:Z
    :cond_3
    move v1, v3

    .line 633
    goto :goto_1

    .restart local v1       #isIncomingSms:Z
    :cond_4
    move v2, v3

    .line 636
    goto :goto_2
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v6, :cond_3

    move v0, v2

    .line 641
    .local v0, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    :cond_0
    move v1, v2

    .line 645
    .local v1, isOutgoingSms:Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .end local v0           #isOutgoingMms:Z
    .end local v1           #isOutgoingSms:Z
    :cond_3
    move v0, v3

    .line 640
    goto :goto_0

    .restart local v0       #isOutgoingMms:Z
    :cond_4
    move v1, v3

    .line 641
    goto :goto_1
.end method

.method public isReceivedMessage()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 883
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 884
    .local v0, isReceivedMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 885
    .local v1, isReceivedSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isReceivedMms:Z
    .end local v1           #isReceivedSms:Z
    :cond_2
    move v0, v3

    .line 883
    goto :goto_0

    .restart local v0       #isReceivedMms:Z
    :cond_3
    move v1, v3

    .line 884
    goto :goto_1
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mItemSelected:Z

    return v0
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 890
    .local v0, isSentMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 891
    .local v1, isSentSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isSentMms:Z
    .end local v1           #isSentSms:Z
    :cond_2
    move v0, v3

    .line 889
    goto :goto_0

    .restart local v0       #isSentMms:Z
    :cond_3
    move v1, v3

    .line 890
    goto :goto_1
.end method

.method public isSimMsg()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mSimMsg:Z

    return v0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 667
    return-void
.end method

.method public setCachedFormattedSimStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedSimStatus"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedSimStatus:Ljava/lang/CharSequence;

    .line 909
    return-void
.end method

.method public setCachedFormattedTimestamp(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedTimestamp"

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedTimestamp:Ljava/lang/CharSequence;

    .line 896
    return-void
.end method

.method public setIpMessageBitmapCache(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 182
    :cond_0
    return-void
.end method

.method public setIpMessageBitmapSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 961
    iput p1, p0, Lcom/android/mms/ui/MessageItem;->mCacheBitmapWidth:I

    .line 962
    iput p2, p0, Lcom/android/mms/ui/MessageItem;->mCacheBitmapHeight:I

    .line 963
    return-void
.end method

.method public setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V
    .locals 0
    .parameter "pduLoadedCallback"

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    .line 845
    return-void
.end method

.method public setSelectedState(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 930
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageItem;->mItemSelected:Z

    .line 931
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
