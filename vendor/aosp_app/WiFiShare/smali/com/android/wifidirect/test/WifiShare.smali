.class public final Lcom/android/wifidirect/test/WifiShare;
.super Ljava/lang/Object;
.source "WifiShare.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String; = null

.field public static final CANCEL_REQUESTED:Ljava/lang/String; = "cancel_requested"

.field public static final COLUMN_CANCEL_REQUESTED:I = 0x14

.field public static final COLUMN_CURRENT_BYTES:I = 0xb

.field public static final COLUMN_DATA:I = 0x3

.field public static final COLUMN_DESTINATION:I = 0x6

.field public static final COLUMN_DESTIONATION_NAME:I = 0x12

.field public static final COLUMN_DIRECTION:I = 0x5

.field public static final COLUMN_END_TIMESTAMP:I = 0x13

.field public static final COLUMN_FILENAME_HINT:I = 0x2

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MEDIA_SCANNED:I = 0xd

.field public static final COLUMN_MIMETYPE:I = 0x4

.field public static final COLUMN_REQUEST_ID:I = 0xf

.field public static final COLUMN_REQUEST_TYPE:I = 0x11

.field public static final COLUMN_ROLE:I = 0xe

.field public static final COLUMN_STATUS:I = 0x9

.field public static final COLUMN_TIMESTAMP:I = 0xc

.field public static final COLUMN_TOTAL_BYTES:I = 0xa

.field public static final COLUMN_TRANSACTION_ID:I = 0x10

.field public static final COLUMN_URI:I = 0x1

.field public static final COLUMN_USER_CONFIRMATION:I = 0x8

.field public static final COLUMN_VISIBILITY:I = 0x7

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final DESTINATION_NAME:Ljava/lang/String; = "destination_name"

.field public static final DEVICENAME:Ljava/lang/String; = "devicename"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DIRECTION_INBOUND:I = 0x1

.field public static final DIRECTION_OUTBOUND:I = 0x0

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DUP_ACTION:Ljava/lang/String; = "action"

.field public static final DUP_ALL_COLUMNS:[Ljava/lang/String; = null

.field public static final DUP_COLUMN_ACTION:I = 0x7

.field public static final DUP_COLUMN_DATA:I = 0x2

.field public static final DUP_COLUMN_DISPLAY_NAME:I = 0x5

.field public static final DUP_COLUMN_ID:I = 0x0

.field public static final DUP_COLUMN_MIMETYPE:I = 0x3

.field public static final DUP_COLUMN_RECORD_ID:I = 0x6

.field public static final DUP_COLUMN_REQUEST_ID:I = 0x1

.field public static final DUP_COLUMN_STATUS:I = 0x8

.field public static final DUP_COLUMN_URI:I = 0x4

.field public static final DUP_CONTENT_COUNT_URI:Landroid/net/Uri; = null

.field public static final DUP_CONTENT_URI:Landroid/net/Uri; = null

.field public static final END_TIMESTAMP:Ljava/lang/String; = "end_timestamp"

.field public static final FILENAME_HINT:Ljava/lang/String; = "hint"

.field public static final FILE_EXIST:I = 0x1

.field public static final FILE_IS_PROCESSING:I = 0x2

.field public static final FILE_NOT_EXIST:I = 0x0

.field public static final FILE_STATUS:Ljava/lang/String; = "filestatus"

.field public static final INCOMING_FILE_CONFIRMATION_REQUEST_ACTION:Ljava/lang/String; = "android.wififtp.intent.action.INCOMING_FILE_NOTIFICATION"

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final OWNER:Ljava/lang/String; = "owner"

.field public static final PERMISSION_ACCESS:Ljava/lang/String; = "android.permission.ACCESS_WIFI_FTPSHARE"

.field public static final RDEVICENAME:Ljava/lang/String; = "rdevicename"

.field public static final RECORD_ID:Ljava/lang/String; = "record_id"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final REQUEST_TYPE:Ljava/lang/String; = "request_type"

.field public static final ROLE:Ljava/lang/String; = "role"

.field public static final SDEVICENAME:Ljava/lang/String; = "sdevicename"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CONNECTION_ENDED:I = 0x1f2

.field public static final STATUS_CONNECTION_ERROR:I = 0x1f1

.field public static final STATUS_CONTENT_CONTENT_CREATE_ERROR:I = 0x1e1

.field public static final STATUS_CONTENT_UNSUPPORTED:I = 0x1e3

.field public static final STATUS_ERROR_DUP_FILE:I = 0x1e6

.field public static final STATUS_ERROR_FILE_MOVE:I = 0x1e5

.field public static final STATUS_ERROR_NO_DEFAULT_VCARD:I = 0x1e8

.field public static final STATUS_ERROR_NO_SDCARD:I = 0x1ed

.field public static final STATUS_ERROR_SDCARD_FULL:I = 0x1ee

.field public static final STATUS_ERROR_USB_STORAGE_FULL:I = 0x1f4

.field public static final STATUS_ERROR_VCAL_STORE:I = 0x1f3

.field public static final STATUS_ERROR_VCARD_STORE:I = 0x1e7

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FORBIDDEN:I = 0x193

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_OBEX_DATA_ERROR:I = 0x1f0

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_REMOTE_REJECT_REQUEST:I = 0x1e0

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TIMEOUT:I = 0x1e2

.field public static final STATUS_UNHANDLED_OBEX_CODE:I = 0x1ef

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field public static final TRANSFER_COMPLETED_ACTION:Ljava/lang/String; = "android.wififtp.intent.action.TRANSFER_COMPLETE"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USER_CONFIRMATION:Ljava/lang/String; = "confirm"

.field public static final USER_CONFIRMATION_AUTO_CONFIRMED:I = 0x2

.field public static final USER_CONFIRMATION_CONFIRMED:I = 0x1

.field public static final USER_CONFIRMATION_DENIED:I = 0x3

.field public static final USER_CONFIRMATION_PENDING:I = 0x5

.field public static final USER_CONFIRMATION_TIMEOUT:I = 0x4

.field public static final USER_CONFIRMATION_TIMEOUT_ACTION:Ljava/lang/String; = "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_HIDDEN:I = 0x1

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "content://com.android.wifi.opp/wifiopp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    .line 311
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "uri"

    aput-object v1, v0, v4

    const-string v1, "hint"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "mimetype"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "direction"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "confirm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "role"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "request_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "transaction_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "request_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "destination_name"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "end_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cancel_requested"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/wifidirect/test/WifiShare;->ALL_COLUMNS:[Ljava/lang/String;

    .line 339
    const-string v0, "content://com.android.wifi.ftp/wififtp/dupcontent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/WifiShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    .line 341
    const-string v0, "content://com.android.wifi.ftp/wififtp/dupcontent/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/WifiShare;->DUP_CONTENT_COUNT_URI:Landroid/net/Uri;

    .line 343
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "request_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "mimetype"

    aput-object v1, v0, v6

    const-string v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "record_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/wifidirect/test/WifiShare;->DUP_ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 159
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 174
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 152
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusInformational(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 130
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusServerError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 166
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 145
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuspended(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 138
    const/16 v0, 0xbe

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
