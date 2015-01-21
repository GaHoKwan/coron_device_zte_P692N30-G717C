.class public Lcom/android/wifidirect/test/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String; = null

.field public static final ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String; = null

.field public static final ACTION_COMPLETE_HIDE:Ljava/lang/String; = "android.wifiopp.intent.action.HIDE_COMPLETE"

.field public static final ACTION_HIDE:Ljava/lang/String; = "android.wifiopp.intent.action.HIDE"

.field public static final ACTION_INCOMING_FILE_CONFIRM:Ljava/lang/String; = "android.wifiopp.intent.action.CONFIRM"

.field public static final ACTION_LIST:Ljava/lang/String; = "android.wifiopp.intent.action.LIST"

.field public static final ACTION_OPEN:Ljava/lang/String; = "android.wifiopp.intent.action.OPEN"

.field public static final ACTION_OPEN_INBOUND_TRANSFER:Ljava/lang/String; = "android.wifiopp.intent.action.OPEN_INBOUND"

.field public static final ACTION_OPEN_OUTBOUND_TRANSFER:Ljava/lang/String; = "android.wifiopp.intent.action.OPEN_OUTBOUND"

.field public static final ACTION_RETRY:Ljava/lang/String; = "android.wifiopp.intent.action.RETRY"

.field public static final BATCH_STATUS_FAILED:I = 0x3

.field public static final BATCH_STATUS_FINISHED:I = 0x2

.field public static final BATCH_STATUS_PENDING:I = 0x0

.field public static final BATCH_STATUS_RUNNING:I = 0x1

.field public static final BLUETOOTHOPP_CHANNEL_PREFERENCE:Ljava/lang/String; = "btopp_channels"

.field public static final BLUETOOTHOPP_NAME_PREFERENCE:Ljava/lang/String; = "btopp_names"

.field public static final DEBUG:Z = true

.field public static final DEFAULT_STORE_SUBDIR:Ljava/lang/String; = "/WiFiShare"

.field public static final DEFAULT_UDP_PORT:I = 0x7a12

.field public static final DEFAULT_WIFI_CHANNEL:I = 0x2

.field public static final EXTRA_SHOW_ALL_FILES:Ljava/lang/String; = "android.wifishareopp.intent.extra.SHOW_ALL"

.field public static FTP_COMMAND_ABORT:Ljava/lang/String; = null

.field public static FTP_COMMAND_CONNECTED:Ljava/lang/String; = null

.field public static FTP_COMMAND_DISCONNECT:Ljava/lang/String; = null

.field public static FTP_COMMAND_DOWNLOAD:Ljava/lang/String; = null

.field public static FTP_COMMAND_FILEERROR:Ljava/lang/String; = null

.field public static FTP_COMMAND_FINISH:Ljava/lang/String; = null

.field public static FTP_COMMAND_LIST:Ljava/lang/String; = null

.field public static FTP_COMMAND_MIMETYPE_ERROR:Ljava/lang/String; = null

.field public static FTP_COMMAND_READY:Ljava/lang/String; = null

.field public static FTP_COMMAND_REJECT:Ljava/lang/String; = null

.field public static final FTP_IS_MIMETYPE_JUDGEMENT_FROM_RECEIVER_NEEDED:Z = true

.field public static IS_USE_FTP_TRANSFOR_MODE:Z = false

.field public static InputDataSize:I = 0x0

.field public static final MAX_PACKAGE_SIZE:I = 0x5000

.field public static final MAX_RECORDS_IN_DATABASE:I = 0x3e8

.field public static final MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final MEDIA_SCANNED_NOT_SCANNED:I = 0x0

.field public static final MEDIA_SCANNED_SCANNED_FAILED:I = 0x2

.field public static final MEDIA_SCANNED_SCANNED_OK:I = 0x1

.field public static final MIME_TYPE_VCARD:Ljava/lang/String; = "text/x-vcard"

.field public static final NFC_ACTION_COMPLETE_HIDE:Ljava/lang/String; = "android.nfctrans.intent.action.HIDE_COMPLETE"

.field public static final NFC_ACTION_HIDE:Ljava/lang/String; = "android.nfctrans.intent.action.HIDE"

.field public static final NFC_ACTION_INCOMING_FILE_CONFIRM:Ljava/lang/String; = "android.nfctrans.intent.action.CONFIRM"

.field public static final NFC_ACTION_LIST:Ljava/lang/String; = "android.nfctrans.intent.action.LIST"

.field public static final NFC_ACTION_OPEN:Ljava/lang/String; = "android.nfctrans.intent.action.OPEN"

.field public static final NFC_ACTION_OPEN_INBOUND_TRANSFER:Ljava/lang/String; = "android.nfctrans.intent.action.OPEN_INBOUND"

.field public static final NFC_ACTION_OPEN_OUTBOUND_TRANSFER:Ljava/lang/String; = "android.nfctrans.intent.action.OPEN_OUTBOUND"

.field public static final NFC_ACTION_RETRY:Ljava/lang/String; = "android.nfctrans.intent.action.RETRY"

.field public static final OBJ_TYPE_IMAGE:I = 0x3

.field public static final OBJ_TYPE_MUSIC:I = 0x2

.field public static final OBJ_TYPE_UNKNOWN:I = 0x0

.field public static final OBJ_TYPE_VCALENDAR:I = 0x5

.field public static final OBJ_TYPE_VCARD:I = 0x1

.field public static final OBJ_TYPE_VIDEO:I = 0x4

.field public static OutputDataSize:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Constants"

.field public static final TCP_DEBUG_PORT:I = 0x1f2e

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.wifidirect.test"

.field public static final UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String; = null

.field public static final UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String; = null

.field public static final USE_EMULATOR_DEBUG:Z = false

.field public static final USE_TCP_DEBUG:Z = true

.field public static final USE_TCP_SIMPLE_SERVER:Z = true

.field public static final VERBOSE:Z = true

.field public static final WIFIP2P_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.wifip2p.intent.action.OPEN_RECEIVED_FILES"

.field public static bufferReader:I

.field public static dataChunkSize:I

.field public static filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

.field public static finalPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field public static isWifiDirectiEnabled:Z

.field public static mInfo:Landroid/net/wifi/p2p/WifiP2pInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    sput-boolean v3, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    .line 21
    const/high16 v0, 0x8

    sput v0, Lcom/android/wifidirect/test/Constants;->dataChunkSize:I

    .line 22
    const/high16 v0, 0x10

    sput v0, Lcom/android/wifidirect/test/Constants;->InputDataSize:I

    .line 23
    const/high16 v0, 0x10

    sput v0, Lcom/android/wifidirect/test/Constants;->OutputDataSize:I

    .line 24
    const/16 v0, 0x2000

    sput v0, Lcom/android/wifidirect/test/Constants;->bufferReader:I

    .line 25
    const-string v0, "connected"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_CONNECTED:Ljava/lang/String;

    .line 26
    const-string v0, "mimeError"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_MIMETYPE_ERROR:Ljava/lang/String;

    .line 27
    const-string v0, "list"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_LIST:Ljava/lang/String;

    .line 28
    const-string v0, "download"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_DOWNLOAD:Ljava/lang/String;

    .line 29
    const-string v0, "ready"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_READY:Ljava/lang/String;

    .line 30
    const-string v0, "finish"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_FINISH:Ljava/lang/String;

    .line 31
    const-string v0, "abort"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_ABORT:Ljava/lang/String;

    .line 32
    const-string v0, "fileerror"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_FILEERROR:Ljava/lang/String;

    .line 33
    const-string v0, "disconnect"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_DISCONNECT:Ljava/lang/String;

    .line 34
    const-string v0, "reject"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_REJECT:Ljava/lang/String;

    .line 44
    sput-boolean v3, Lcom/android/wifidirect/test/Constants;->isWifiDirectiEnabled:Z

    .line 50
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/wifidirect/test/Constants;->finalPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 151
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    const-string v1, "audio/*"

    aput-object v1, v0, v5

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v6

    const-string v1, "text/plain"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "application/zip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "application/vnd.ms-excel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "application/msword"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "application/vnd.ms-powerpoint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "application/pdf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/wifidirect/test/Constants;->ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 170
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "virus/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/wifidirect/test/Constants;->UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 179
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    const-string v1, "image/*"

    aput-object v1, v0, v4

    const-string v1, "video/*"

    aput-object v1, v0, v5

    const-string v1, "audio/*"

    aput-object v1, v0, v6

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "application/*"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "x-mixmedia/*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/wifidirect/test/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 195
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "text/x-vcalendar"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/wifidirect/test/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 238
    const-string v0, "-"

    sput-object v0, Lcom/android/wifidirect/test/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiState()Z
    .locals 1

    .prologue
    .line 305
    sget-boolean v0, Lcom/android/wifidirect/test/Constants;->isWifiDirectiEnabled:Z

    return v0
.end method

.method public static logHeader(Lcom/android/wifidirect/test/HeaderSet;)V
    .locals 4
    .parameter "hs"

    .prologue
    .line 309
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :try_start_0
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_ISO_8601 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_4_BYTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DESCRIPTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBJECT_CLASS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 295
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 297
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 286
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 287
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/wifidirect/test/Constants;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const/4 v4, 0x1

    .line 291
    .end local v3           #matchType:Ljava/lang/String;
    :goto_1
    return v4

    .line 286
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v3           #matchType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static nfcsendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3
    .parameter "context"
    .parameter "contentUri"
    .parameter "status"

    .prologue
    .line 277
    invoke-static {p2}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.wififtp.intent.action.TRANSFER_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.wifidirect.test"

    const-class v2, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static nfcupdateShareStatus(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 266
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    invoke-static {p0, v0, p2}, Lcom/android/wifidirect/test/Constants;->nfcsendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 270
    return-void
.end method

.method public static setWifiState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 302
    sput-boolean p0, Lcom/android/wifidirect/test/Constants;->isWifiDirectiEnabled:Z

    .line 303
    return-void
.end method

.method public static wifisendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3
    .parameter "context"
    .parameter "contentUri"
    .parameter "status"

    .prologue
    .line 255
    invoke-static {p2}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.wififtp.intent.action.TRANSFER_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.wifidirect.test"

    const-class v2, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static wifiupdateShareStatus(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 244
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    invoke-static {p0, v0, p2}, Lcom/android/wifidirect/test/Constants;->wifisendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 248
    return-void
.end method
