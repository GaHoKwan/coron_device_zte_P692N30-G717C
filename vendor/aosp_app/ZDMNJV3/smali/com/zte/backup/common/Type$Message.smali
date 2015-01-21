.class public final Lcom/zte/backup/common/Type$Message;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/common/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final MESSAGE_TYPE_NOTIFICATION_IND:I = 0x82

.field public static final MESSAGE_TYPE_PUSH_SI:I = 0xa0

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field public static final MESSAGE_TYPE_SEND_REQ:I = 0x80

.field public static final MMS_BOX_TYPE_DARFT:I = 0x3

.field public static final MMS_BOX_TYPE_INBOX:I = 0x1

.field public static final MMS_BOX_TYPE_SENT:I = 0x2

.field public static final MMS_TYPE_ACKNOWLEDGE_IND:Ljava/lang/String; = "ACKNOWLEDGE_IND"

.field public static final MMS_TYPE_CANCEL_CONF:Ljava/lang/String; = "CANCEL_CONF"

.field public static final MMS_TYPE_CANCEL_REQ:Ljava/lang/String; = "CANCEL_REQ"

.field public static final MMS_TYPE_DELETE_CONF:Ljava/lang/String; = "DELETE_CONF"

.field public static final MMS_TYPE_DELETE_REQ:Ljava/lang/String; = "DELETE_REQ"

.field public static final MMS_TYPE_DELIVERY_IND:Ljava/lang/String; = "DELIVERY_IND"

.field public static final MMS_TYPE_FORWARD_CONF:Ljava/lang/String; = "FORWARD_CONF"

.field public static final MMS_TYPE_FORWARD_REQ:Ljava/lang/String; = "FORWARD_REQ"

.field public static final MMS_TYPE_MBOX_DELETE_CONF:Ljava/lang/String; = "MBOX_DELETE_CONF"

.field public static final MMS_TYPE_MBOX_DELETE_REQ:Ljava/lang/String; = "MBOX_DELETE_REQ"

.field public static final MMS_TYPE_MBOX_DESCR:Ljava/lang/String; = "MBOX_DESCR"

.field public static final MMS_TYPE_MBOX_STORE_CONF:Ljava/lang/String; = "MBOX_STORE_CONF"

.field public static final MMS_TYPE_MBOX_STORE_REQ:Ljava/lang/String; = "MBOX_STORE_REQ"

.field public static final MMS_TYPE_MBOX_UPLOAD_CONF:Ljava/lang/String; = "MBOX_UPLOAD_CONF"

.field public static final MMS_TYPE_MBOX_UPLOAD_REQ:Ljava/lang/String; = "MBOX_UPLOAD_REQ"

.field public static final MMS_TYPE_MBOX_VIEW_CONF:Ljava/lang/String; = "MBOX_VIEW_CONF"

.field public static final MMS_TYPE_MBOX_VIEW_REQ:Ljava/lang/String; = "MBOX_VIEW_REQ"

.field public static final MMS_TYPE_NOTIFICATION_IND:Ljava/lang/String; = "NOTIFICATION_IND"

.field public static final MMS_TYPE_NOTIFYRESP_IND:Ljava/lang/String; = "NOTIFYRESP_IND"

.field public static final MMS_TYPE_PUSH_SI:Ljava/lang/String; = "PUSH_SI"

.field public static final MMS_TYPE_PUSH_SL:Ljava/lang/String; = "PUSH_SL"

.field public static final MMS_TYPE_READ_ORIG_IND:Ljava/lang/String; = "READ_ORIG_IND"

.field public static final MMS_TYPE_READ_REC_IND:Ljava/lang/String; = "READ_REC_IND"

.field public static final MMS_TYPE_RETRIEVE_CONF:Ljava/lang/String; = "RETRIEVE_CONF"

.field public static final MMS_TYPE_SEND_CONF:Ljava/lang/String; = "SEND_CONF"

.field public static final MMS_TYPE_SEND_REQ:Ljava/lang/String; = "SEND_REQ"

.field public static final MMS_URI_ALL:Ljava/lang/String; = "content://mms/"

.field public static final MMS_URI_DRAFT:Ljava/lang/String; = "content://mms/drafts"

.field public static final MMS_URI_INBOX:Ljava/lang/String; = "content://mms/inbox"

.field public static final MMS_URI_OUTBOX:Ljava/lang/String; = "content://mms/outbox"

.field public static final MMS_URI_SEND:Ljava/lang/String; = "content://mms/sent"

.field public static final SMS_MESSAGE_TYPE_ALL:I = 0x0

.field public static final SMS_MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final SMS_MESSAGE_TYPE_FAILED:I = 0x5

.field public static final SMS_MESSAGE_TYPE_INBOX:I = 0x1

.field public static final SMS_MESSAGE_TYPE_OUTBOX:I = 0x4

.field public static final SMS_MESSAGE_TYPE_QUEUED:I = 0x6

.field public static final SMS_MESSAGE_TYPE_SENT:I = 0x2

.field public static final SMS_URI_ALL:Ljava/lang/String; = "content://sms/"

.field public static final SMS_URI_CONVER:Ljava/lang/String; = "content://sms/conversations/"

.field public static final SMS_URI_DRAFT:Ljava/lang/String; = "content://sms/draft"

.field public static final SMS_URI_FAILED:Ljava/lang/String; = "content://sms/failed"

.field public static final SMS_URI_INBOX:Ljava/lang/String; = "content://sms/inbox"

.field public static final SMS_URI_OUTBOX:Ljava/lang/String; = "content://sms/outbox"

.field public static final SMS_URI_QUEUED:Ljava/lang/String; = "content://sms/queued"

.field public static final SMS_URI_SEND:Ljava/lang/String; = "content://sms/sent"

.field public static final SMS_URI_UPDATE_THREAD:Ljava/lang/String; = "content://mms-sms/updateAllThreads"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
