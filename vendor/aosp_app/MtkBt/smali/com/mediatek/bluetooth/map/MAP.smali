.class public Lcom/mediatek/bluetooth/map/MAP;
.super Ljava/lang/Object;
.source "MAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/MAP$Mailbox;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID_SETTING:Ljava/lang/String; = "ACCOUNT_ID_SETTING"

.field public static final ALL_READ_STATUS:I = 0x0

.field public static final CHARSET_NATIVE:I = 0x0

.field public static final CHARSET_UTF8:I = 0x1

.field public static final DELETE_MESSAGE:I = 0x0

.field public static final ENCODING_8BIT:I = 0x0

.field public static final ENCODING_C7ASCII:I = 0x7

.field public static final ENCODING_C8BIT:I = 0x5

.field public static final ENCODING_CEPM:I = 0x6

.field public static final ENCODING_CIA5:I = 0x8

.field public static final ENCODING_CKOREAN:I = 0xb

.field public static final ENCODING_CLATIN:I = 0xd

.field public static final ENCODING_CLATINHEB:I = 0xc

.field public static final ENCODING_CSJIS:I = 0xa

.field public static final ENCODING_CUNICODE:I = 0x9

.field public static final ENCODING_G7BIT:I = 0x1

.field public static final ENCODING_G7BITEXT:I = 0x2

.field public static final ENCODING_G8BIT:I = 0x4

.field public static final ENCODING_GUCS2:I = 0x3

.field public static final EVENT_DELIVERY_FAILURE:I = 0x3

.field public static final EVENT_DELIVERY_SUCCESS:I = 0x1

.field public static final EVENT_MEMORY_AVAILABLE:I = 0x6

.field public static final EVENT_MEMORY_FULL:I = 0x5

.field public static final EVENT_MESSAGE_DELETED:I = 0x7

.field public static final EVENT_MESSAGE_SHIFT:I = 0x8

.field public static final EVENT_NEW_MESSAGE:I = 0x0

.field public static final EVENT_SEND_FAILURE:I = 0x4

.field public static final EVENT_SEND_SUCCESS:I = 0x2

.field public static final FRACTION_DELIVER_LAST:I = 0x1

.field public static final FRACTION_DELIVER_MORE:I = 0x0

.field public static final FRACTION_DELIVER_NO:I = 0x2

.field public static final FRACTION_REQUEST_FIRST:I = 0x0

.field public static final FRACTION_REQUEST_NEXT:I = 0x1

.field public static final HIGH_PRIORITY:Z = true

.field public static final LANG_CHINESE:I = 0x5

.field public static final LANG_ENGLISH:I = 0x0

.field public static final LANG_FRENCH:I = 0x1

.field public static final LANG_HEBREW:I = 0x6

.field public static final LANG_JAPANESE:I = 0x3

.field public static final LANG_KOREAN:I = 0x4

.field public static final LANG_PORTUGUESE:I = 0x8

.field public static final LANG_SPANISH:I = 0x2

.field public static final LANG_TURKISH:I = 0x7

.field public static final LANG_UNKNOWN:I = 0x9

.field public static final LOW_PRIORITY:Z = false

.field public static final MAP_SETTING_TAG:Ljava/lang/String; = "BLUETOOTH_MAP_SETTING"

.field public static final MAX_FOLDER_LEN:I = 0x100

.field public static final MAX_MSG_ENVELOPE_NUM:I = 0x3

.field public static final MAX_SUBJECT_LEN:I = 0xfe

.field public static final MESSAGE_TYPE_CDMA:Ljava/lang/String; = "SMS_CDMA"

.field public static final MESSAGE_TYPE_EMAIL:Ljava/lang/String; = "Email"

.field public static final MESSAGE_TYPE_MMS:Ljava/lang/String; = "MMS"

.field public static final MESSAGE_TYPE_SMS_GSM:Ljava/lang/String; = "SMS_GSM"

.field public static final MSG_TYPE_ALL:I = 0x0

.field public static final MSG_TYPE_EMAIL:I = 0x4

.field public static final MSG_TYPE_MMS:I = 0x8

.field public static final MSG_TYPE_SMS_CDMA:I = 0x2

.field public static final MSG_TYPE_SMS_GSM:I = 0x1

.field public static final Message_List_Mask_AttachmentSize:I = 0x400

.field public static final Message_List_Mask_Datatime:I = 0x1

.field public static final Message_List_Mask_Priority:I = 0x800

.field public static final Message_List_Mask_Protected:I = 0x4000

.field public static final Message_List_Mask_Read:I = 0x1000

.field public static final Message_List_Mask_RecipientName:I = 0x10

.field public static final Message_List_Mask_RecipientStatus:I = 0x200

.field public static final Message_List_Mask_Recipientaddress:I = 0x20

.field public static final Message_List_Mask_ReplyAddress:I = 0x8

.field public static final Message_List_Mask_SenderAddress:I = 0x4

.field public static final Message_List_Mask_SenderName:I = 0x2

.field public static final Message_List_Mask_Sent:I = 0x2000

.field public static final Message_List_Mask_Size:I = 0x80

.field public static final Message_List_Mask_Subject:I = 0x0

.field public static final Message_List_Mask_Text:I = 0x100

.field public static final Message_List_Mask_Type:I = 0x40

.field public static final PRIORITY_STATUS_HIGH:I = 0x1

.field public static final PRIORITY_STATUS_NON_HIGH:I = 0x2

.field public static final PRIORITY_STATUS_NO_FILTERING:I = 0x0

.field public static final READ_STATUS:I = 0x2

.field public static final RECEPIENT_STATUS_COMPLETE:I = 0x0

.field public static final RECEPIENT_STATUS_FRACTIONED:I = 0x1

.field public static final RECEPIENT_STATUS_NOTIFICATION:I = 0x2

.field public static final RESTORE_MESSAGE:I = 0x1

.field public static final RESULT_ERROR:I = 0x0

.field public static final RESULT_OK:I = 0x1

.field public static final ROOT_PATH:Ljava/lang/String; = "/data/@btmtk/profile/map"

.field public static final SIM_ID_SETTING:Ljava/lang/String; = "SIM_ID_SETTING"

.field public static final STATUS_SWITCH_DELETE:I = 0x1

.field public static final STATUS_SWITCH_NO:I = 0x0

.field public static final STATUS_SWITCH_READ:I = 0x0

.field public static final STATUS_SWITCH_YES:I = 0x1

.field public static final UNREAD_STATUS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static isMessageTypeValid(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 197
    packed-switch p0, :pswitch_data_0

    .line 204
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 202
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
