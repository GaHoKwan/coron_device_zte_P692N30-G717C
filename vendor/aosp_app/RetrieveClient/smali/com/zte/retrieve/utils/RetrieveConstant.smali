.class public Lcom/zte/retrieve/utils/RetrieveConstant;
.super Ljava/lang/Object;
.source "RetrieveConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;
    }
.end annotation


# static fields
.field public static final ACCOUNT_LOGOUT:I = 0x2

.field public static final ACCOUNT_NAME_ADD:I = 0x2

.field public static final ACCOUNT_NAME_DEL:I = 0x1

.field public static final ACCOUNT_NAME_NOTHING:I = 0x0

.field public static final ACCOUNT_UPDATE:I = 0x3

.field public static final ACCOUNT_UPDATE_UID:Ljava/lang/String; = "account_update_uid"

.field public static final AUTH_MAX_TIME:I = 0x3

.field public static final BACKUP_PASSWROD:Ljava/lang/String; = "backup_pwd"

.field public static final BACK_PRESSED:Ljava/lang/String; = "com.zte.retrieve.back_pressed_on_pwd_activity"

.field public static final CB_STATUS_AUTH_FAILED:I = -0x11

.field public static final CB_STATUS_LOGIN_OK:I = -0xc

.field public static final CB_STATUS_NET_ERR:I = -0x3

.field public static final CLOUD_RETRIEVE_SWITCH:Ljava/lang/String; = "cloudRetrieveSwitch"

.field public static final DATA1:I = 0x2

.field public static final GOT_UPDATE_DIALOG:I = 0x1

.field public static final HOST_NAME:Ljava/lang/String; = "hostName"

.field public static final ID:I = 0x0

.field public static final INSTRUCT_INTRODUCE_ERASE:Ljava/lang/String; = "erase"

.field public static final INSTRUCT_INTRODUCE_FINDKEY:Ljava/lang/String; = "findkey"

.field public static final INSTRUCT_INTRODUCE_LOCATE:Ljava/lang/String; = "locate"

.field public static final INSTRUCT_INTRODUCE_LOCK:Ljava/lang/String; = "lock"

.field public static final INSTRUCT_INTRODUCE_RING:Ljava/lang/String; = "ring"

.field public static final INTERNAL_MSG_TYPE_NULL:I = 0x0

.field public static final INTERNAL_MSG_TYPE_REMOTE_CONTROL:I = 0x1

.field public static final INTERNAL_MSG_TYPE_RESET_PASSWORD:I = 0x3

.field public static final INTERNAL_MSG_TYPE_SEND_PASSWORD_AGAIN:I = 0x2

.field public static final KEY:Ljava/lang/String; = "ztephoneretrieve"

.field public static LOCK_SIM_MISS:Z = false

.field public static final MAP_INFO_OBJECT:Ljava/lang/String; = "map_info"

.field public static final MAP_RESULT:Ljava/lang/String; = "result"

.field public static final MAP_RESULT_ACTION:Ljava/lang/String; = "com.zte.retrieve.MAP_RESULT"

.field public static final MAP_RESULT_CONTENT:Ljava/lang/String; = "map_content"

.field public static final MIMETYPE:I = 0x1

.field public static final NOT_OPEN:I = 0x1

.field public static final NO_UPDATE_DIALOG_:I = 0x2

.field public static final NUMBER_END_FLAG:Ljava/lang/String; = ">"

.field public static final NUMBER_START_FLAG:Ljava/lang/String; = "<"

.field public static final NUM_SPLIT_FLAG_LINE:Ljava/lang/String; = "-"

.field public static final NUM_SPLIT_FlAG_SPACE:Ljava/lang/String; = " "

.field public static final ORDER_TYPE_ALARM:I = 0x9

.field public static final ORDER_TYPE_CALL_FORWARD:I = 0x5

.field public static final ORDER_TYPE_CANCEL_CALL_FORWARD:I = 0x6

.field public static final ORDER_TYPE_CANCEL_SMS_FORWARD:I = 0x8

.field public static final ORDER_TYPE_ERASE:I = 0x3

.field public static final ORDER_TYPE_LOCK:I = 0x1

.field public static final ORDER_TYPE_MAP:I = 0x4

.field public static final ORDER_TYPE_NULL:I = 0x0

.field public static final ORDER_TYPE_RESET_PASSWORD:I = 0xb

.field public static final ORDER_TYPE_SMS_FORWARD:I = 0x7

.field public static final ORDER_TYPE_UNALARM:I = 0xa

.field public static final ORDER_TYPE_UNLOCK:I = 0x2

.field public static final PHONE_MODEL_MMS_NOSUPPORT:Ljava/lang/String; = "ZTE Q801U"

.field public static final PHONE_STATE_ACTION:Ljava/lang/String; = "com.zte.retrieve.PHONE_STATE"

.field public static final PLATFORM_PROPERTY_PATH:Ljava/lang/String; = "/PlatformInfo.properties"

.field public static final REFRESH_CLOUD_VIEW:I = 0x1

.field public static final REMOTE_ALARM:Z = true

.field public static final REMOTE_CANCEL_ALARM:Z = false

.field public static final REMOTE_INTERNAL_MSG_TYPE:Ljava/lang/String; = "Internal_Msg_Type"

.field public static final REMOTE_PASSWORD:Ljava/lang/String; = "funcPassword"

.field public static final REMOTE_PHONE_NUMBER:Ljava/lang/String; = "lostPhoneNum"

.field public static final REMOTE_SMS_ORDERTYPE:Ljava/lang/String; = "SMS_Send_OrderType"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final RETRIEVE_II:I = 0x0

.field public static final RETRIEVE_III:I = 0x1

.field public static final SECURITY_ENTRY:Ljava/lang/String; = "securityEntry"

.field public static final SECURITY_NUMBER:Ljava/lang/String; = "securityNumber"

.field public static final SECURITY_PARAMTYPE:Ljava/lang/String; = "securityParamType"

.field public static final SECURITY_PASSWORD:Ljava/lang/String; = "securityPassword"

.field public static final SELECTION:Ljava/lang/String; = "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/name\') AND contact_id = ?"

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.zte.retrieve.service.PhoneRetrieveService"

.field public static final SUCCESS:I = 0x0

.field public static final SWITCH_SENDER:Ljava/lang/String; = "switchsender"

.field public static final TIME_INTERVAL:I = 0x2710

.field public static final TIME_SPAN:J = 0x1f4L

.field public static final TOP_VIEW_LISTENER:I = 0x3

.field public static final TRY_AGAIN:I = 0x0

.field public static final UPDATE_PROPERTY_PATH:Ljava/lang/String; = "/AppConfig.properties"

.field public static final UPDATE_URL:Ljava/lang/String; = "updateURL"

.field public static final VERSION_INFO:Ljava/lang/String; = "VERSION_INFO"

.field public static defaultSimCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput v0, Lcom/zte/retrieve/utils/RetrieveConstant;->defaultSimCardType:I

    .line 82
    sput-boolean v0, Lcom/zte/retrieve/utils/RetrieveConstant;->LOCK_SIM_MISS:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
