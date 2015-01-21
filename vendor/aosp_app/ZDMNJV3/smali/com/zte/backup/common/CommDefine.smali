.class public Lcom/zte/backup/common/CommDefine;
.super Ljava/lang/Object;
.source "CommDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/common/CommDefine$SettingsType;
    }
.end annotation


# static fields
.field public static final ADD_TEMP_SIZE:I = 0x80000

.field public static final ALARMS:Ljava/lang/String; = "Alarms"

.field public static final ALLCOMPRESSEX:Ljava/lang/String; = ".zip.crypt"

#the value of this static final field might be set in the static constructor
.field public static final ALLEXTENSLENGTH:I = 0x0

.field public static final APP_BACKUPED:I = 0x0

.field public static final APP_RESTORE_INSTALL:I = 0x0

.field public static final APP_RESTORE_PMINSTALL:I = 0x1

.field public static final APP_UNBACKUP:I = 0x1

.field public static final APP_UPDATED:I = 0x2

.field public static final AUTO_BACKUP:I = 0x1

.field public static final AUTO_CHECK_VERTION:Ljava/lang/String; = "autocheckver"

.field public static final BACKUP_FILE_CRYPT:Ljava/lang/String; = ".zip.crypt"

.field public static final BACKUP_FILE_CRYPT_CONTACT:Ljava/lang/String; = ".contact"

.field public static final BACKUP_FILE_ZIP:Ljava/lang/String; = ".zip"

.field public static final BROWSER:Ljava/lang/String; = "Browser"

.field public static final CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final CALLHISTORY:Ljava/lang/String; = "CallHistory"

.field public static final CALLLOG_COUNT:Ljava/lang/String; = "calllog_count"

.field public static final CALLLOG_ID:Ljava/lang/String; = "calllog_id"

.field public static final CLOUD_BACKUP_DATA_ID:I = 0x6

.field public static final CLOUD_BACKUP_ONE_KEY_ID:I = 0x7

.field public static final CLOUD_DISK_BACKUP_APPS_ID:I = 0xb

.field public static final CLOUD_DISK_BACKUP_DATA_ID:I = 0xa

.field public static final CLOUD_DISK_RESTORE_ID:I = 0xc

.field public static final CLOUD_ONE_KEY_BACKUP:I = 0x2

.field public static final CLOUD_POSITION_DATA:I = 0x0

.field public static final CLOUD_POSITION_TCARD:I = 0x1

.field public static final CLOUD_RESTORE_DATA_ID:I = 0x8

.field public static final COMMON_BACKUP:I = 0x0

.field public static final COMPLETADECOMPATH:Ljava/lang/String; = null

.field public static final COMPRESSEX:Ljava/lang/String; = "crypt"

.field public static final CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_BACKUP:I = 0x2

.field public static final CONTACTS_BACKUP_FILE:Ljava/lang/String; = "contactBackup"

.field public static final CONTACT_COUNT:Ljava/lang/String; = "contact_count"

.field public static final CONTACT_MD5:Ljava/lang/String; = "contact_changelog"

.field public static final DECOMPRESSPATH:Ljava/lang/String; = "hippopotomonstrosesquippedaliophobia"

.field public static final DRAWABLE_TOBITMAP_SIZE:I = 0x3c

.field public static final DRAWABLE_TOBITMAP_SIZE_XHDPI:I = 0x50

.field public static final DRAWABLE_TOBITMAP_SIZE_XXHDPI:I = 0x78

.field public static final FAVORITES:Ljava/lang/String; = "Favorites"

.field public static final HISTORY_DATA_ID:I = 0x9

.field public static final ITEM_SIZE:I = 0x800

.field static final KEY_ENDS:Ljava/lang/String; = "ztebackuptocard"

.field static final KEY_LEN:I = 0x10

#the value of this static final field might be set in the static constructor
.field public static final LENGTHOFDECOMPATH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LENTHOFCOMEX:I = 0x0

.field public static final LOCAL_BACKUP_APPS_ID:I = 0x1

.field public static final LOCAL_BACKUP_CONTACT_ID:I = 0x2

.field public static final LOCAL_BACKUP_DATA_ID:I = 0x0

.field public static final LOCAL_BACKUP_ONE_KEY_ID:I = 0x3

.field public static final LOCAL_ONE_KEY_BACKUP:I = 0x1

.field public static final LOCAL_RESTORE_APPS_ID:I = 0x5

.field public static final LOCAL_RESTORE_DATA_ID:I = 0x4

.field public static final MMS:Ljava/lang/String; = "Mms"

.field public static final MMS_INBOX_COUNT:Ljava/lang/String; = "mms_inbox_count"

.field public static final MMS_INBOX_ID_THREADID:Ljava/lang/String; = "mms_inbox_id_changelog"

.field public static final MMS_SEND_COUNT:Ljava/lang/String; = "mms_outbox_count"

.field public static final MMS_SEND_ID_THREADID:Ljava/lang/String; = "mms_outbox_id_changelog"

.field public static final MMS_SIZE:I = 0x4b000

.field public static final NOTEPAD:Ljava/lang/String; = "NotePad"

.field public static final NO_FILE_BACKUP:I = -0x1

.field public static final OKB_TASK_APPFULL:I = 0x2007

.field public static final OKB_TASK_CANCEL:I = 0x2003

.field public static final OKB_TASK_DBFULL:I = 0x2004

.field public static final OKB_TASK_EXIST:I = 0x2006

.field public static final OKB_TASK_FAIL:I = 0x2002

.field public static final OKB_TASK_NODATA:I = 0x2005

.field public static final OKB_TASK_SUCCESS:I = 0x2001

.field public static final PROCESS_BACKUP_APP:I = 0x1

.field public static final PROCESS_BACKUP_APPS_LOCAL:I = 0x1

.field public static final PROCESS_BACKUP_DATA_CLOUD:I = 0x4

.field public static final PROCESS_BACKUP_DATA_LOCAL:I = 0x0

.field public static final PROCESS_BACKUP_ONE_KEY:I = 0x6

.field public static final PROCESS_BACKUP_UPDATE:I = 0x7

.field public static final PROCESS_DATA_BACKUP:I = 0x1

.field public static final PROCESS_DATA_RESTORE:I = 0x2

.field public static final PROCESS_RESTORE_APP:I = 0x2

.field public static final PROCESS_RESTORE_APPS_LOCAL:I = 0x3

.field public static final PROCESS_RESTORE_DATA_CLOUD:I = 0x5

.field public static final PROCESS_RESTORE_DATA_LOCAL:I = 0x2

.field public static final PROCESS_RESTORE_UPDATE:I = 0x8

.field public static final RETURN_PROCESS:I = 0x7

.field public static final RET_PASSWORD_EMPTY:I = 0x1

.field public static final RET_PASSWORD_INVALID:I = 0x2

.field public static final RET_PASSWORD_LENGTH_ERROR:I = 0x3

.field public static final RET_PASSWORD_VALID:I = 0x0

.field public static final SETTINGS:Ljava/lang/String; = "Settings"

.field public static final SMS:Ljava/lang/String; = "Sms"

.field public static final SMS_INBOX_COUNT:Ljava/lang/String; = "sms_inbox_count"

.field public static final SMS_INBOX_ID_THREADID:Ljava/lang/String; = "sms_inbox_changelog"

.field public static final SMS_SEND_COUNT:Ljava/lang/String; = "sms_outbox_count"

.field public static final SMS_SEND_ID_THREADID:Ljava/lang/String; = "sms_outbox_changelog"

.field public static final SOCKET_FLAG_BALETAR:Ljava/lang/String; = "1"

.field public static final SOCKET_FLAG_BALETARWITHOUTLIB:Ljava/lang/String; = "4"

.field public static final SOCKET_FLAG_CHUID:Ljava/lang/String; = "7"

.field public static final SOCKET_FLAG_COPY:Ljava/lang/String; = "5"

.field public static final SOCKET_FLAG_GETSIZE:Ljava/lang/String; = "3"

.field public static final SOCKET_FLAG_INSTALL:Ljava/lang/String; = "0"

.field public static final SOCKET_FLAG_MOD:Ljava/lang/String; = "8"

.field public static final SOCKET_FLAG_RELEASEFILEINTAR:Ljava/lang/String; = "a"

.field public static final SOCKET_FLAG_RELEASETAR:Ljava/lang/String; = "2"

.field public static final SOCKET_FLAG_RMDIR:Ljava/lang/String; = "6"

.field public static final SOCKET_FLAG_STOP:Ljava/lang/String; = "9"

.field public static final STR_ENTER:Ljava/lang/String; = "\r\n"

.field public static T40:Z = false

.field public static T41:Z = false

.field public static TAB_PHOTO_TO_LETTER_PARAM:I = 0x0

.field public static final TCARD_INOUT:I = 0x7

.field public static final TDCONTACTDB:Ljava/lang/String; = "contacts2.db"

.field public static final TDCONTACTVCF:Ljava/lang/String; = "contact.vcf"

.field public static final TDPATH:Ljava/lang/String; = ".backup"

.field public static final TDPATHDATA:Ljava/lang/String; = "/.backup"

.field public static final TDPATHENDINDEX:I = 0xf

.field public static final TDPATHSTARTINDEX:I = 0x8

.field public static final TWO_LINE_CONTAINS_PIC_BACKUP_APP:I = 0x2

.field public static final TWO_LINE_CONTAINS_PIC_BACKUP_DATA:I = 0x1

.field public static final TWO_LINE_CONTAINS_PIC_RESTORE_APP:I = 0x4

.field public static final TWO_LINE_CONTAINS_PIC_RESTORE_DATA:I = 0x3

.field public static final WALLPAPER:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const-string v0, "crypt"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/zte/backup/common/CommDefine;->LENTHOFCOMEX:I

    .line 57
    const-string v0, ".zip.crypt"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/zte/backup/common/CommDefine;->ALLEXTENSLENGTH:I

    .line 61
    const-string v0, "hippopotomonstrosesquippedaliophobia"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/zte/backup/common/CommDefine;->LENGTHOFDECOMPATH:I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getExternalStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v1, "/Backup/Data/hippopotomonstrosesquippedaliophobia/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/common/CommDefine;->COMPLETADECOMPATH:Ljava/lang/String;

    .line 94
    sput-boolean v2, Lcom/zte/backup/common/CommDefine;->T40:Z

    .line 95
    sput-boolean v2, Lcom/zte/backup/common/CommDefine;->T41:Z

    .line 97
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sput-boolean v3, Lcom/zte/backup/common/CommDefine;->T41:Z

    .line 106
    :goto_0
    const/16 v0, 0x5a

    sput v0, Lcom/zte/backup/common/CommDefine;->TAB_PHOTO_TO_LETTER_PARAM:I

    .line 10
    return-void

    .line 99
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :cond_1
    sput-boolean v3, Lcom/zte/backup/common/CommDefine;->T40:Z

    goto :goto_0

    .line 102
    :cond_2
    sput-boolean v2, Lcom/zte/backup/common/CommDefine;->T40:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
