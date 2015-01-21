.class public Lcom/isw/android/corp/util/LocalConfig;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# static fields
.field public static final DOT_DEFAULT_IMG:Ljava/lang/String; = "dotdefault.png"

.field private static final TAG:Ljava/lang/String; = "MiniLocalConfig"

.field private static final TYPE_BOOLEAN:I = 0x1

.field private static final TYPE_FLOAT:I = 0x5

.field private static final TYPE_INT:I = 0x3

.field private static final TYPE_LONG:I = 0x4

.field private static final TYPE_STRING:I = 0x2

.field public static callHistoryBackupFile:Ljava/lang/String;

.field public static callHistoryFile:Ljava/lang/String;

.field public static callIconDir:Ljava/lang/String;

.field private static final callRecordFile:Ljava/lang/String;

.field public static final callUpdateFile:Ljava/lang/String;

.field public static companyDir:Ljava/lang/String;

.field public static companyIconDir:Ljava/lang/String;

.field public static companyItem:Ljava/lang/String;

.field private static configContent:Ljava/lang/String;

.field public static dotIconDir:Ljava/lang/String;

.field public static imageBgDir:Ljava/lang/String;

.field public static final indexFile:Ljava/lang/String;

.field public static iswDB:Ljava/lang/String;

.field public static iswDB_TABLE_COMPANY:Ljava/lang/String;

.field public static final locDir:Ljava/lang/String;

.field public static final locItemDir:Ljava/lang/String;

.field public static final localConfigFile:Ljava/lang/String;

.field public static numberCompanyDir:Ljava/lang/String;

.field public static otherCallFile:Ljava/lang/String;

.field public static pinyinCompanyDir:Ljava/lang/String;

.field public static preBgFile:Ljava/lang/String;

.field public static preDataDir:Ljava/lang/String;

.field public static preDataFile:Ljava/lang/String;

.field public static pushDir:Ljava/lang/String;

.field public static pushDotRecordDir:Ljava/lang/String;

.field public static pushRecordDir:Ljava/lang/String;

.field public static final strgDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/strg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->strgDir:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string v1, "/isw/company"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/numbercompany"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->numberCompanyDir:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/pinyincompany"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/databases/iswdot.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->iswDB:Ljava/lang/String;

    .line 61
    const-string v0, "company"

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->iswDB_TABLE_COMPANY:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    const-string v1, "/isw/comitem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string v1, "/isw/image/pushimg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->pushDir:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string v1, "/isw/strg/pushrecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->pushRecordDir:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string v1, "/isw/strg/pushdotrecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->pushDotRecordDir:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string v1, "/isw/predata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "precompany.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->preDataFile:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "prebg.jpgx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->preBgFile:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v1, "/isw/image/ccbg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/image/companyicon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, "/isw/image/doticon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v1, "/isw/image/callicon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/strg/callHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/strg/otherCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->otherCallFile:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/strg/callHistoryBackup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->callHistoryBackupFile:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/strg/localConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/strg/callRecordFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->callRecordFile:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, "/isw/strg/callUpdateFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->callUpdateFile:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/loc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/locitem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->locItemDir:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/isw/strg/comindex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->indexFile:Ljava/lang/String;

    .line 136
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendCallHistoryFile(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .parameter "number"
    .parameter "timestamp"
    .parameter "duration"
    .parameter "calltype"
    .parameter "ccshowDurationTime"

    .prologue
    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 467
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, item:Ljava/lang/String;
    const-string v3, "MiniLocalConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[appendCallHistoryFile] item: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v3, "encodePhone"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->encodeCompanyPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 473
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 474
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, encodeItem:Ljava/lang/String;
    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LocalConfig;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v0           #encodeItem:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 482
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 481
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, localItem:Ljava/lang/String;
    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->callHistoryBackupFile:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->appendToFileWithLimit(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {p0}, Lcom/isw/android/corp/util/LocalConfig;->updateCallRecordFile(Ljava/lang/String;)V

    .line 486
    return-void

    .line 478
    .end local v2           #localItem:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LocalConfig;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static appendOtherCallHistoryFile(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->encodeCompanyPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, encode:Ljava/lang/String;
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->otherCallFile:Ljava/lang/String;

    invoke-static {v2}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->otherCallFile:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LocalConfig;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    return-void
.end method

.method public static appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "str"
    .parameter "filename"

    .prologue
    .line 693
    const/4 v1, 0x0

    .line 694
    .local v1, stream:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 696
    .local v3, writer:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .local v2, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 698
    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .local v4, writer:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 700
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 706
    if-eqz v4, :cond_0

    .line 707
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 709
    :cond_0
    if-eqz v2, :cond_5

    .line 710
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v4

    .end local v4           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .line 717
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 703
    const-string v5, "MiniLocalConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 706
    if-eqz v3, :cond_2

    .line 707
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 709
    :cond_2
    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 712
    :catch_1
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    const-string v5, "MiniLocalConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 706
    :goto_2
    if-eqz v3, :cond_3

    .line 707
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 709
    :cond_3
    if-eqz v1, :cond_4

    .line 710
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 716
    :cond_4
    :goto_3
    throw v5

    .line 712
    :catch_2
    move-exception v0

    .line 713
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    const-string v6, "MiniLocalConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 712
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    .restart local v4       #writer:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v0

    .line 713
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    const-string v5, "MiniLocalConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #ex:Ljava/lang/Exception;
    :cond_5
    move-object v3, v4

    .end local v4           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 704
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1           #stream:Ljava/io/FileOutputStream;
    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    .restart local v4       #writer:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 701
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v1           #stream:Ljava/io/FileOutputStream;
    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    .restart local v4       #writer:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static appendToFileWithLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "str"
    .parameter "filename"

    .prologue
    .line 642
    const/4 v5, 0x0

    .line 643
    .local v5, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 646
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 647
    .local v2, count:I
    :try_start_0
    const-string v10, "maxLocalHistory"

    const/16 v11, 0x1f4

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 648
    .local v7, maxLocalHistory:I
    const-string v8, ""

    .line 650
    .local v8, newContent:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 651
    const/4 v2, 0x1

    .line 653
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 655
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v5           #fr:Ljava/io/FileReader;
    .local v6, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 657
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 659
    .local v9, s:Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_4

    .line 667
    :cond_0
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 668
    const/4 v5, 0x0

    .line 669
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 670
    const/4 v0, 0x0

    .line 672
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v9           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-static {v8, p1}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 678
    if-eqz v5, :cond_2

    .line 679
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 681
    :cond_2
    if-eqz v0, :cond_3

    .line 682
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 690
    .end local v4           #file:Ljava/io/File;
    .end local v7           #maxLocalHistory:I
    .end local v8           #newContent:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 660
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v7       #maxLocalHistory:I
    .restart local v8       #newContent:Ljava/lang/String;
    .restart local v9       #s:Ljava/lang/String;
    :cond_4
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 661
    add-int/lit8 v2, v2, 0x1

    .line 662
    if-ge v2, v7, :cond_0

    .line 665
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v9

    goto :goto_0

    .line 673
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v7           #maxLocalHistory:I
    .end local v8           #newContent:Ljava/lang/String;
    .end local v9           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 674
    .local v3, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 675
    const-string v10, "MiniLocalConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 678
    if-eqz v5, :cond_5

    .line 679
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 681
    :cond_5
    if-eqz v0, :cond_3

    .line 682
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 684
    :catch_1
    move-exception v3

    .line 685
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 686
    const-string v10, "MiniLocalConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 676
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 678
    :goto_3
    if-eqz v5, :cond_6

    .line 679
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 681
    :cond_6
    if-eqz v0, :cond_7

    .line 682
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 688
    :cond_7
    :goto_4
    throw v10

    .line 684
    :catch_2
    move-exception v3

    .line 685
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 686
    const-string v11, "MiniLocalConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ex: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 684
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #maxLocalHistory:I
    .restart local v8       #newContent:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 685
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 686
    const-string v10, "MiniLocalConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 676
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v9       #s:Ljava/lang/String;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 673
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v9           #s:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v9       #s:Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private static declared-synchronized configAvailable()Z
    .locals 12

    .prologue
    .line 304
    const-class v8, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v8

    const/4 v0, 0x0

    .line 305
    .local v0, available:Z
    const/4 v5, 0x0

    .line 307
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_0
    const-string v7, ""

    sget-object v9, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 308
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, configFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v3, v9

    .line 312
    .local v3, count:I
    new-array v1, v3, [B

    .line 313
    .local v1, buffer:[B
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v5           #input:Ljava/io/FileInputStream;
    .local v6, input:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v7, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 315
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v5, v6

    .line 327
    .end local v1           #buffer:[B
    .end local v2           #configFile:Ljava/io/File;
    .end local v3           #count:I
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :goto_0
    if-eqz v5, :cond_0

    .line 328
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 335
    :cond_0
    :goto_1
    monitor-exit v8

    return v0

    .line 317
    .restart local v2       #configFile:Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 319
    goto :goto_0

    .line 320
    .end local v2           #configFile:Ljava/io/File;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v4

    .line 323
    .local v4, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const-string v7, "MiniLocalConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 327
    if-eqz v5, :cond_0

    .line 328
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 330
    :catch_1
    move-exception v4

    .line 331
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    const-string v7, "MiniLocalConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 304
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 325
    :catchall_1
    move-exception v7

    .line 327
    :goto_3
    if-eqz v5, :cond_3

    .line 328
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 334
    :cond_3
    :goto_4
    :try_start_7
    throw v7

    .line 330
    :catch_2
    move-exception v4

    .line 331
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 330
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 331
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    const-string v7, "MiniLocalConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 325
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #configFile:Ljava/io/File;
    .restart local v3       #count:I
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .line 322
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 810
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v8, srcFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 812
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "src["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] does not exist!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    .local v1, destFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 818
    .local v3, input:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 820
    .local v6, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 821
    .end local v3           #input:Ljava/io/FileInputStream;
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 823
    .end local v6           #output:Ljava/io/FileOutputStream;
    .local v7, output:Ljava/io/FileOutputStream;
    const/16 v9, 0x1400

    :try_start_2
    new-array v0, v9, [B

    .line 824
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 825
    .local v5, n:I
    :goto_1
    const/4 v9, -0x1

    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-ne v9, v5, :cond_3

    .line 833
    if-eqz v4, :cond_2

    .line 834
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 836
    :cond_2
    if-eqz v7, :cond_7

    .line 837
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 839
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_0

    .line 826
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v7, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 829
    .end local v0           #buffer:[B
    .end local v5           #n:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 830
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v2, ex:Ljava/lang/Exception;
    .restart local v3       #input:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 833
    if-eqz v3, :cond_4

    .line 834
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 836
    :cond_4
    if-eqz v6, :cond_0

    .line 837
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 839
    :catch_1
    move-exception v2

    .line 840
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 833
    :goto_3
    if-eqz v3, :cond_5

    .line 834
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 836
    :cond_5
    if-eqz v6, :cond_6

    .line 837
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 842
    :cond_6
    :goto_4
    throw v9

    .line 839
    :catch_2
    move-exception v2

    .line 840
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v10, "MiniLocalConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 839
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #n:I
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 840
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #ex:Ljava/lang/Exception;
    :cond_7
    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 831
    .end local v0           #buffer:[B
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v5           #n:I
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .line 829
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18
    .parameter "oldPath"
    .parameter "newPath"
    .parameter "bCopyCompanyData"

    .prologue
    .line 850
    const-string v9, ""

    .line 851
    .local v9, newDataFileList:Ljava/lang/String;
    const/4 v5, 0x0

    .line 852
    .local v5, input:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 855
    .local v11, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    .local v1, a:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 857
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "path["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] does not exist!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 904
    if-eqz v5, :cond_0

    .line 905
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 907
    :cond_0
    if-eqz v11, :cond_1

    .line 908
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-object v10, v9

    .line 914
    .end local v1           #a:Ljava/io/File;
    .end local v9           #newDataFileList:Ljava/lang/String;
    .local v10, newDataFileList:Ljava/lang/String;
    :goto_1
    return-object v10

    .line 910
    .end local v10           #newDataFileList:Ljava/lang/String;
    .restart local v1       #a:Ljava/io/File;
    .restart local v9       #newDataFileList:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 911
    .local v3, ex:Ljava/lang/Exception;
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 861
    .local v8, list:[Ljava/lang/String;
    if-nez v8, :cond_5

    .line 862
    const-string v14, "MiniLocalConfig"

    const-string v15, "list is null!"

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 904
    if-eqz v5, :cond_3

    .line 905
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 907
    :cond_3
    if-eqz v11, :cond_4

    .line 908
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    move-object v10, v9

    .line 863
    .end local v9           #newDataFileList:Ljava/lang/String;
    .restart local v10       #newDataFileList:Ljava/lang/String;
    goto :goto_1

    .line 910
    .end local v10           #newDataFileList:Ljava/lang/String;
    .restart local v9       #newDataFileList:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 911
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 867
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_5
    const/4 v13, 0x0

    .line 868
    .local v13, temp:Ljava/io/File;
    const/4 v4, 0x0

    .local v4, i:I
    move-object v12, v11

    .local v12, output:Ljava/lang/Object;
    move-object v6, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .local v6, input:Ljava/lang/Object;
    :goto_3
    :try_start_4
    array-length v14, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-lt v4, v14, :cond_8

    .line 904
    if-eqz v6, :cond_6

    .line 905
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 907
    :cond_6
    if-eqz v12, :cond_11

    .line 908
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v11, v12

    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v1           #a:Ljava/io/File;
    .end local v4           #i:I
    .end local v6           #input:Ljava/lang/Object;
    .end local v8           #list:[Ljava/lang/String;
    .end local v12           #output:Ljava/lang/Object;
    .end local v13           #temp:Ljava/io/File;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    move-object v10, v9

    .line 914
    .end local v9           #newDataFileList:Ljava/lang/String;
    .restart local v10       #newDataFileList:Ljava/lang/String;
    goto :goto_1

    .line 870
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v10           #newDataFileList:Ljava/lang/String;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v1       #a:Ljava/io/File;
    .restart local v4       #i:I
    .restart local v6       #input:Ljava/lang/Object;
    .restart local v8       #list:[Ljava/lang/String;
    .restart local v9       #newDataFileList:Ljava/lang/String;
    .restart local v12       #output:Ljava/lang/Object;
    .restart local v13       #temp:Ljava/io/File;
    :cond_8
    :try_start_6
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 871
    new-instance v13, Ljava/io/File;

    .end local v13           #temp:Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v15, v8, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .restart local v13       #temp:Ljava/io/File;
    :goto_5
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 877
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 878
    .restart local v5       #input:Ljava/io/FileInputStream;
    :try_start_7
    new-instance v11, Ljava/io/FileOutputStream;

    .end local v6           #input:Ljava/lang/Object;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 879
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 878
    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 880
    .restart local v11       #output:Ljava/io/FileOutputStream;
    if-eqz p2, :cond_9

    .end local v12           #output:Ljava/lang/Object;
    :try_start_8
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".dat"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 881
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 884
    :cond_9
    const/16 v14, 0x1400

    new-array v2, v14, [B

    .line 886
    .local v2, b:[B
    :goto_6
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, len:I
    const/4 v14, -0x1

    if-ne v7, v14, :cond_b

    .line 889
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 890
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 891
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 892
    const/4 v11, 0x0

    .line 893
    const/4 v5, 0x0

    .line 868
    .end local v2           #b:[B
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v7           #len:I
    .end local v11           #output:Ljava/io/FileOutputStream;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object v12, v11

    .restart local v12       #output:Ljava/lang/Object;
    move-object v6, v5

    .restart local v6       #input:Ljava/lang/Object;
    goto/16 :goto_3

    .line 873
    :cond_a
    :try_start_9
    new-instance v13, Ljava/io/File;

    .end local v13           #temp:Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .restart local v13       #temp:Ljava/io/File;
    goto/16 :goto_5

    .line 887
    .end local v6           #input:Ljava/lang/Object;
    .end local v12           #output:Ljava/lang/Object;
    .restart local v2       #b:[B
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v7       #len:I
    .restart local v11       #output:Ljava/io/FileOutputStream;
    :cond_b
    const/4 v14, 0x0

    :try_start_a
    invoke-virtual {v11, v2, v14, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_6

    .line 900
    .end local v1           #a:Ljava/io/File;
    .end local v2           #b:[B
    .end local v4           #i:I
    .end local v7           #len:I
    .end local v8           #list:[Ljava/lang/String;
    .end local v13           #temp:Ljava/io/File;
    :catch_2
    move-exception v3

    .line 901
    .restart local v3       #ex:Ljava/lang/Exception;
    :goto_8
    :try_start_b
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 904
    if-eqz v5, :cond_c

    .line 905
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 907
    :cond_c
    if-eqz v11, :cond_7

    .line 908
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_4

    .line 910
    :catch_3
    move-exception v3

    .line 911
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 894
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v1       #a:Ljava/io/File;
    .restart local v4       #i:I
    .restart local v6       #input:Ljava/lang/Object;
    .restart local v8       #list:[Ljava/lang/String;
    .restart local v12       #output:Ljava/lang/Object;
    .restart local v13       #temp:Ljava/io/File;
    :cond_d
    :try_start_d
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 895
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 896
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v8, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 895
    move/from16 v0, p2

    invoke-static {v14, v15, v0}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :cond_e
    move-object v11, v12

    .end local v12           #output:Ljava/lang/Object;
    .local v11, output:Ljava/lang/Object;
    move-object v5, v6

    .end local v6           #input:Ljava/lang/Object;
    .local v5, input:Ljava/lang/Object;
    goto/16 :goto_7

    .line 902
    .end local v1           #a:Ljava/io/File;
    .end local v4           #i:I
    .end local v8           #list:[Ljava/lang/String;
    .end local v13           #temp:Ljava/io/File;
    .local v5, input:Ljava/io/FileInputStream;
    .local v11, output:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v14

    .line 904
    :goto_9
    if-eqz v5, :cond_f

    .line 905
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 907
    :cond_f
    if-eqz v11, :cond_10

    .line 908
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 913
    :cond_10
    :goto_a
    throw v14

    .line 910
    :catch_4
    move-exception v3

    .line 911
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v15, "MiniLocalConfig"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "ex: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 910
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v1       #a:Ljava/io/File;
    .restart local v4       #i:I
    .restart local v6       #input:Ljava/lang/Object;
    .restart local v8       #list:[Ljava/lang/String;
    .restart local v12       #output:Ljava/lang/Object;
    .restart local v13       #temp:Ljava/io/File;
    :catch_5
    move-exception v3

    .line 911
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #ex:Ljava/lang/Exception;
    :cond_11
    move-object v11, v12

    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v5, v6

    .restart local v5       #input:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 902
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v13           #temp:Ljava/io/File;
    :catchall_1
    move-exception v14

    move-object v11, v12

    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v5, v6

    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v6           #input:Ljava/lang/Object;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v13       #temp:Ljava/io/File;
    :catchall_2
    move-exception v14

    move-object v11, v12

    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 900
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v13           #temp:Ljava/io/File;
    .restart local v6       #input:Ljava/lang/Object;
    :catch_6
    move-exception v3

    move-object v11, v12

    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v5, v6

    .restart local v5       #input:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v6           #input:Ljava/lang/Object;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v13       #temp:Ljava/io/File;
    :catch_7
    move-exception v3

    move-object v11, v12

    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_8
.end method

.method public static deleteAllFile(Ljava/lang/String;)V
    .locals 7
    .parameter "dirPath"

    .prologue
    .line 1276
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1278
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1279
    .local v2, files:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 1284
    const-string v4, "MiniLocalConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteAllFile: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1280
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #files:[Ljava/io/File;
    .restart local v3       #i:I
    :cond_1
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1281
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1286
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :catch_0
    move-exception v0

    .line 1287
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 257
    const-class v2, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v2

    move v0, p1

    .line 258
    .local v0, res:Z
    :try_start_0
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->configAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-static {p0, p1}, Lcom/isw/android/corp/util/LocalConfig;->getBooleanField(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 261
    :cond_0
    monitor-exit v2

    return v0

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getBooleanField(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 344
    move v2, p1

    .line 345
    .local v2, res:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 347
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 348
    .local v3, startIndex:I
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    const-string v5, "&"

    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 349
    .local v0, endIndex:I
    const-string v1, ""

    .line 350
    .local v1, field:Ljava/lang/String;
    if-lez v0, :cond_1

    .line 351
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_0
    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    const/4 v2, 0x1

    .line 362
    .end local v0           #endIndex:I
    .end local v1           #field:Ljava/lang/String;
    .end local v3           #startIndex:I
    :cond_0
    :goto_1
    return v2

    .line 353
    .restart local v0       #endIndex:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v3       #startIndex:I
    :cond_1
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 358
    :cond_2
    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCurrentCallRecord()Ljava/lang/String;
    .locals 12

    .prologue
    .line 569
    const-string v1, ""

    .line 570
    .local v1, content:Ljava/lang/String;
    const/4 v6, 0x0

    .line 572
    .local v6, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->callRecordFile:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 575
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v3, v8

    .line 576
    .local v3, count:I
    new-array v0, v3, [B

    .line 577
    .local v0, buffer:[B
    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->callRecordFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v6           #input:Ljava/io/FileInputStream;
    .local v7, input:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v0, v8, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 579
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 580
    const/4 v6, 0x0

    .line 581
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #content:Ljava/lang/String;
    .local v2, content:Ljava/lang/String;
    move-object v1, v2

    .line 587
    .end local v0           #buffer:[B
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #count:I
    .restart local v1       #content:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 588
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 595
    .end local v5           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 583
    :catch_0
    move-exception v4

    .line 584
    .local v4, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v8, "MiniLocalConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    if-eqz v6, :cond_1

    .line 588
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 590
    :catch_1
    move-exception v4

    .line 591
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    const-string v8, "MiniLocalConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 587
    :goto_2
    if-eqz v6, :cond_2

    .line 588
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 594
    :cond_2
    :goto_3
    throw v8

    .line 590
    :catch_2
    move-exception v4

    .line 591
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 590
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    :catch_3
    move-exception v4

    .line 591
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    const-string v8, "MiniLocalConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #count:I
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    goto :goto_2

    .line 583
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static getFileContent(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .parameter "file"

    .prologue
    .line 1188
    const-string v1, ""

    .line 1189
    .local v1, content:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1191
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1192
    const-string v6, "MiniLocalConfig"

    const-string v7, "The file does not exist!"

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1207
    if-eqz v4, :cond_0

    .line 1208
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1209
    const/4 v4, 0x0

    :cond_0
    :goto_0
    move-object v2, v1

    .line 1216
    .end local v1           #content:Ljava/lang/String;
    .local v2, content:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1211
    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1212
    .local v3, ex:Ljava/lang/Exception;
    const-string v6, "MiniLocalConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1196
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1197
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 1198
    .local v0, buffer:[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1199
    new-instance v2, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-direct {v2, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1200
    .end local v1           #content:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/String;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 1201
    const/4 v4, 0x0

    .line 1207
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    if-eqz v4, :cond_4

    .line 1208
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1209
    const/4 v4, 0x0

    move-object v1, v2

    .end local v0           #buffer:[B
    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v2, v1

    .line 1216
    .end local v1           #content:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/String;
    goto :goto_1

    .line 1202
    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1203
    .restart local v3       #ex:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1204
    const-string v6, "MiniLocalConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1207
    if-eqz v4, :cond_2

    .line 1208
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1209
    const/4 v4, 0x0

    goto :goto_2

    .line 1211
    :catch_2
    move-exception v3

    .line 1212
    const-string v6, "MiniLocalConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1205
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 1207
    :goto_4
    if-eqz v4, :cond_3

    .line 1208
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1209
    const/4 v4, 0x0

    .line 1214
    :cond_3
    :goto_5
    throw v6

    .line 1211
    :catch_3
    move-exception v3

    .line 1212
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v7, "MiniLocalConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1211
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 1212
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v6, "MiniLocalConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #ex:Ljava/lang/Exception;
    :cond_4
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto :goto_2

    .line 1205
    .end local v0           #buffer:[B
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #content:Ljava/lang/String;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto :goto_4

    .line 1202
    .end local v0           #buffer:[B
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v1           #content:Ljava/lang/String;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static getFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filename"

    .prologue
    .line 1155
    const-string v1, ""

    .line 1156
    .local v1, content:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1158
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1160
    const-string v7, "MiniLocalConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " does not exist!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1175
    if-eqz v5, :cond_0

    .line 1176
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1177
    const/4 v5, 0x0

    :cond_0
    :goto_0
    move-object v2, v1

    .line 1184
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .local v2, content:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1179
    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 1180
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "MiniLocalConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1164
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1165
    .end local v5           #input:Ljava/io/FileInputStream;
    .local v6, input:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 1166
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1167
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    array-length v8, v0

    invoke-direct {v2, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1168
    .end local v1           #content:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/String;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 1169
    const/4 v5, 0x0

    .line 1175
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    if-eqz v5, :cond_4

    .line 1176
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1177
    const/4 v5, 0x0

    move-object v1, v2

    .end local v0           #buffer:[B
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .restart local v1       #content:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v2, v1

    .line 1184
    .end local v1           #content:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/String;
    goto :goto_1

    .line 1170
    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1171
    .restart local v3       #ex:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1172
    const-string v7, "MiniLocalConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1175
    if-eqz v5, :cond_2

    .line 1176
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1177
    const/4 v5, 0x0

    goto :goto_2

    .line 1179
    :catch_2
    move-exception v3

    .line 1180
    const-string v7, "MiniLocalConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1173
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1175
    :goto_4
    if-eqz v5, :cond_3

    .line 1176
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1177
    const/4 v5, 0x0

    .line 1182
    :cond_3
    :goto_5
    throw v7

    .line 1179
    :catch_3
    move-exception v3

    .line 1180
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v8, "MiniLocalConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1179
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    :catch_4
    move-exception v3

    .line 1180
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v7, "MiniLocalConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #ex:Ljava/lang/Exception;
    :cond_4
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto :goto_2

    .line 1173
    .end local v0           #buffer:[B
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #content:Ljava/lang/String;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto :goto_4

    .line 1170
    .end local v0           #buffer:[B
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v1           #content:Ljava/lang/String;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static declared-synchronized getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 289
    const-class v2, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v2

    move v0, p1

    .line 290
    .local v0, res:F
    :try_start_0
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->configAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-static {p0, p1}, Lcom/isw/android/corp/util/LocalConfig;->getFloatField(Ljava/lang/String;F)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 293
    :cond_0
    monitor-exit v2

    return v0

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getFloatField(Ljava/lang/String;F)F
    .locals 8
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 440
    move v3, p1

    .line 441
    .local v3, res:F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 442
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 443
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v4, v5, v6

    .line 444
    .local v4, startIndex:I
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    const-string v6, "&"

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, endIndex:I
    const-string v2, ""

    .line 446
    .local v2, field:Ljava/lang/String;
    if-lez v0, :cond_1

    .line 447
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 452
    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 458
    .end local v0           #endIndex:I
    .end local v2           #field:Ljava/lang/String;
    .end local v4           #startIndex:I
    :cond_0
    :goto_1
    return v3

    .line 449
    .restart local v0       #endIndex:I
    .restart local v2       #field:Ljava/lang/String;
    .restart local v4       #startIndex:I
    :cond_1
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 455
    const-string v5, "MiniLocalConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 273
    const-class v2, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v2

    move v0, p1

    .line 274
    .local v0, res:I
    :try_start_0
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->configAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {p0, p1}, Lcom/isw/android/corp/util/LocalConfig;->getIntField(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 277
    :cond_0
    monitor-exit v2

    return v0

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getIntField(Ljava/lang/String;I)I
    .locals 8
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 387
    move v3, p1

    .line 388
    .local v3, res:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 389
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 390
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v4, v5, v6

    .line 391
    .local v4, startIndex:I
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    const-string v6, "&"

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 392
    .local v0, endIndex:I
    const-string v2, ""

    .line 393
    .local v2, field:Ljava/lang/String;
    if-lez v0, :cond_1

    .line 394
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 399
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 408
    .end local v0           #endIndex:I
    .end local v2           #field:Ljava/lang/String;
    .end local v4           #startIndex:I
    :cond_0
    :goto_1
    return v3

    .line 396
    .restart local v0       #endIndex:I
    .restart local v2       #field:Ljava/lang/String;
    .restart local v4       #startIndex:I
    :cond_1
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 405
    const-string v5, "MiniLocalConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 6
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 281
    const-class v3, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 282
    .local v0, res:J
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->configAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->getLongField(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 285
    :cond_0
    monitor-exit v3

    return-wide v0

    .line 281
    .end local v0           #res:J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getLongField(Ljava/lang/String;J)J
    .locals 9
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 414
    move-wide v3, p1

    .line 415
    .local v3, res:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 416
    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 417
    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int v5, v6, v7

    .line 418
    .local v5, startIndex:I
    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    const-string v7, "&"

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 419
    .local v0, endIndex:I
    const-string v2, ""

    .line 420
    .local v2, field:Ljava/lang/String;
    if-lez v0, :cond_1

    .line 421
    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 426
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 427
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 434
    .end local v0           #endIndex:I
    .end local v2           #field:Ljava/lang/String;
    .end local v5           #startIndex:I
    :cond_0
    :goto_1
    return-wide v3

    .line 423
    .restart local v0       #endIndex:I
    .restart local v2       #field:Ljava/lang/String;
    .restart local v5       #startIndex:I
    :cond_1
    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 431
    const-string v6, "MiniLocalConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 265
    const-class v2, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v2

    move-object v0, p1

    .line 266
    .local v0, res:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->configAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-static {p0, p1}, Lcom/isw/android/corp/util/LocalConfig;->getStringField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 269
    :cond_0
    monitor-exit v2

    return-object v0

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getStringField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 368
    move-object v2, p1

    .line 369
    .local v2, res:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 370
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 371
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 372
    .local v3, startIndex:I
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    const-string v5, "&"

    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 373
    .local v0, endIndex:I
    const-string v1, ""

    .line 374
    .local v1, field:Ljava/lang/String;
    if-lez v0, :cond_1

    .line 375
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 379
    :goto_0
    move-object v2, v1

    .line 381
    .end local v0           #endIndex:I
    .end local v1           #field:Ljava/lang/String;
    .end local v3           #startIndex:I
    :cond_0
    return-object v2

    .line 377
    .restart local v0       #endIndex:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v3       #startIndex:I
    :cond_1
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "content"
    .parameter "targetFile"

    .prologue
    .line 544
    const/4 v1, 0x0

    .line 546
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    .line 547
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 549
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 550
    const/4 v1, 0x0

    .line 557
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    if-eqz v1, :cond_0

    .line 558
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    const-string v3, "MiniLocalConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    if-eqz v1, :cond_0

    .line 558
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 561
    :catch_1
    move-exception v0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    const-string v3, "MiniLocalConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 557
    :goto_2
    if-eqz v1, :cond_1

    .line 558
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 565
    :cond_1
    :goto_3
    throw v3

    .line 561
    :catch_2
    move-exception v0

    .line 562
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    const-string v4, "MiniLocalConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 561
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 562
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    const-string v3, "MiniLocalConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 552
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static declared-synchronized putBoolean(Ljava/lang/String;Z)V
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 139
    const-class v8, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/isw/android/corp/util/LocalConfig;->putSpeiclaType(Ljava/lang/String;IZLjava/lang/String;IJF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v8

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized putFloat(Ljava/lang/String;F)V
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 155
    const-class v8, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v8

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v7, p1

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/isw/android/corp/util/LocalConfig;->putSpeiclaType(Ljava/lang/String;IZLjava/lang/String;IJF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v8

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized putInt(Ljava/lang/String;I)V
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 147
    const-class v8, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v8

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/isw/android/corp/util/LocalConfig;->putSpeiclaType(Ljava/lang/String;IZLjava/lang/String;IJF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit v8

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized putLong(Ljava/lang/String;J)V
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 151
    const-class v8, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v8

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v5, p1

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/isw/android/corp/util/LocalConfig;->putSpeiclaType(Ljava/lang/String;IZLjava/lang/String;IJF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit v8

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static putSpeiclaType(Ljava/lang/String;IZLjava/lang/String;IJF)V
    .locals 17
    .parameter "key"
    .parameter "type"
    .parameter "bValue"
    .parameter "sValue"
    .parameter "iValue"
    .parameter "lValue"
    .parameter "fValue"

    .prologue
    .line 168
    const/4 v6, 0x0

    .line 169
    .local v6, input:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 171
    .local v11, output:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v13, ""

    sget-object v14, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 172
    new-instance v3, Ljava/io/File;

    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, configFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 175
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v13

    long-to-int v4, v13

    .line 176
    .local v4, count:I
    new-array v2, v4, [B

    .line 177
    .local v2, buffer:[B
    new-instance v7, Ljava/io/FileInputStream;

    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v6           #input:Ljava/io/FileInputStream;
    .local v7, input:Ljava/io/FileInputStream;
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v7, v2, v13, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 179
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    .line 180
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 181
    const/4 v6, 0x0

    .line 184
    .end local v2           #buffer:[B
    .end local v3           #configFile:Ljava/io/File;
    .end local v4           #count:I
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :cond_0
    :try_start_2
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    if-nez v13, :cond_1

    .line 185
    const-string v13, ""

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    .line 188
    :cond_1
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 190
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 192
    .local v9, oldValue:Z
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 193
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 192
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    .line 232
    .end local v9           #oldValue:Z
    :goto_0
    new-instance v12, Ljava/io/FileOutputStream;

    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    .end local v11           #output:Ljava/io/FileOutputStream;
    .local v12, output:Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 235
    .local v8, newContent:[B
    const/4 v13, 0x0

    array-length v14, v8

    invoke-virtual {v12, v8, v13, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 236
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 237
    const/4 v11, 0x0

    .line 243
    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    if-eqz v6, :cond_2

    .line 244
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 246
    :cond_2
    if-eqz v11, :cond_3

    .line 247
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    .end local v8           #newContent:[B
    :cond_3
    :goto_1
    return-void

    .line 194
    :cond_4
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v13, v0, :cond_6

    .line 195
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, oldValue:Ljava/lang/String;
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 197
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 196
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 238
    .end local v9           #oldValue:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 239
    .local v5, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 243
    if-eqz v6, :cond_5

    .line 244
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 246
    :cond_5
    if-eqz v11, :cond_3

    .line 247
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 249
    :catch_1
    move-exception v5

    .line 250
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 198
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_6
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v13, v0, :cond_9

    .line 199
    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 200
    .local v9, oldValue:I
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 201
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 200
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v9           #oldValue:I
    :catchall_0
    move-exception v13

    .line 243
    :goto_3
    if-eqz v6, :cond_7

    .line 244
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 246
    :cond_7
    if-eqz v11, :cond_8

    .line 247
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 253
    :cond_8
    :goto_4
    throw v13

    .line 202
    :cond_9
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v13, v0, :cond_a

    .line 203
    :try_start_a
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v9

    .line 204
    .local v9, oldValue:J
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 205
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p5

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 204
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 206
    .end local v9           #oldValue:J
    :cond_a
    const/4 v13, 0x5

    move/from16 v0, p1

    if-ne v13, v0, :cond_b

    .line 207
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getFloat(Ljava/lang/String;F)F

    move-result v9

    .line 208
    .local v9, oldValue:F
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 209
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p7

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 208
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 211
    .end local v9           #oldValue:F
    :cond_b
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Warning! The type["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 212
    const-string v15, "] is not supported!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 211
    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_c
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v13, v0, :cond_d

    .line 217
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 218
    :cond_d
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v13, v0, :cond_e

    .line 219
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 220
    :cond_e
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v13, v0, :cond_f

    .line 221
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 222
    :cond_f
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v13, v0, :cond_10

    .line 223
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p5

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :cond_10
    const/4 v13, 0x5

    move/from16 v0, p1

    if-ne v13, v0, :cond_11

    .line 225
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/isw/android/corp/util/LocalConfig;->configContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 227
    :cond_11
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Warning! The type["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 228
    const-string v15, "] is not supported!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 227
    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 249
    :catch_2
    move-exception v5

    .line 250
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 249
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v8       #newContent:[B
    :catch_3
    move-exception v5

    .line 250
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v8           #newContent:[B
    .restart local v2       #buffer:[B
    .restart local v3       #configFile:Ljava/io/File;
    .restart local v4       #count:I
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2           #buffer:[B
    .end local v3           #configFile:Ljava/io/File;
    .end local v4           #count:I
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v12       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v13

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 238
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #configFile:Ljava/io/File;
    .restart local v4       #count:I
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v2           #buffer:[B
    .end local v3           #configFile:Ljava/io/File;
    .end local v4           #count:I
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v12       #output:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public static declared-synchronized putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 143
    const-class v8, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v8

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/isw/android/corp/util/LocalConfig;->putSpeiclaType(Ljava/lang/String;IZLjava/lang/String;IJF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v8

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static readDataStorage()J
    .locals 17

    .prologue
    .line 782
    const-wide/16 v8, 0x0

    .line 784
    .local v8, freeStorageSize:J
    :try_start_0
    const-string v6, "/data"

    .line 785
    .local v6, dataDir:Ljava/lang/String;
    const-string v11, "MiniLocalConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[readDataStorage] dataDir: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    new-instance v10, Landroid/os/StatFs;

    invoke-direct {v10, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 787
    .local v10, sf:Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v4, v11

    .line 788
    .local v4, blockSize:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v2, v11

    .line 789
    .local v2, blockCount:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 791
    .local v0, availCount:J
    mul-long v11, v0, v4

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    const-wide/16 v13, 0x400

    div-long v8, v11, v13

    .line 793
    const-string v11, "MiniLocalConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[readDataStorage] one block size: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 794
    const-string v13, ", block number: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 795
    const-string v13, ", total storage size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-long v13, v4, v2

    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    .line 796
    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 793
    invoke-static {v11, v12}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v11, "MiniLocalConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[readDataStorage] available block number: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", available storage size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 799
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 797
    invoke-static {v11, v12}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v0           #availCount:J
    .end local v2           #blockCount:J
    .end local v4           #blockSize:J
    .end local v6           #dataDir:Ljava/lang/String;
    .end local v10           #sf:Landroid/os/StatFs;
    :goto_0
    return-wide v8

    .line 800
    :catch_0
    move-exception v7

    .line 801
    .local v7, ex:Ljava/lang/Exception;
    const-string v11, "MiniLocalConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[readDataStorage]ex: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readSDStorage()J
    .locals 18

    .prologue
    .line 723
    const-wide/16 v7, 0x0

    .line 725
    .local v7, freeStorageSize:J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 726
    .local v11, state:Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 727
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 728
    .local v9, sdcardDir:Ljava/io/File;
    const-string v12, "MiniLocalConfig"

    .line 729
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[readSDStorage] sdcardDir: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 728
    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 732
    .local v10, sf:Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 733
    .local v4, blockSize:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v2, v12

    .line 734
    .local v2, blockCount:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v0, v12

    .line 735
    .local v0, availCount:J
    mul-long v12, v0, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long v7, v12, v14

    .line 737
    const-string v12, "MiniLocalConfig"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[readSDStorage] one block size: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 738
    const-string v14, ", block number: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 739
    const-string v14, ", total storage size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-long v14, v4, v2

    .line 740
    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "MB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 737
    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v12, "MiniLocalConfig"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[readSDStorage] available block number: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", available storage size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 743
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "MB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 741
    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v0           #availCount:J
    .end local v2           #blockCount:J
    .end local v4           #blockSize:J
    .end local v9           #sdcardDir:Ljava/io/File;
    .end local v10           #sf:Landroid/os/StatFs;
    .end local v11           #state:Ljava/lang/String;
    :goto_0
    return-wide v7

    .line 745
    .restart local v11       #state:Ljava/lang/String;
    :cond_0
    const-string v12, "MiniLocalConfig"

    const-string v13, "[readSDStorage] The SD card does not exist!"

    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    .end local v11           #state:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 748
    .local v6, ex:Ljava/lang/Exception;
    const-string v12, "MiniLocalConfig"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[readSdcardStorage]ex: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSdcardStorage()V
    .locals 3

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 920
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 921
    const-string v2, "/isw/company"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 920
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    .line 922
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 923
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 924
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 928
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 929
    const-string v2, "/isw/comitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 928
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    .line 930
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 932
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 936
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 937
    const-string v2, "/isw/image/ccbg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 936
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    .line 938
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 940
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 944
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 945
    const-string v2, "/isw/image/companyicon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 944
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    .line 946
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 948
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 952
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 953
    const-string v2, "/isw/image/doticon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 952
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    .line 954
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 955
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 956
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 960
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 961
    const-string v2, "/isw/image/callicon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    .line 962
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 963
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 964
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 967
    :cond_5
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 968
    const-string v2, "/isw/strg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 970
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 973
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 974
    const-string v2, "/isw/strg/callHistory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 978
    const-string v2, "/isw/strg/callHistoryBackup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 977
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/LocalConfig;->callHistoryBackupFile:Ljava/lang/String;

    .line 979
    return-void
.end method

.method public static setStoragePath(Z)V
    .locals 7
    .parameter "bUseSDCard"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 986
    const-string v2, "MiniLocalConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[setStoragePath] bUseSDCard: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    if-eqz p0, :cond_8

    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 994
    const-string v3, "/isw/company"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 993
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    .line 995
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 996
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 997
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1000
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/isw/company"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/company"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 999
    invoke-static {v2, v3, v6}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, newDataFileList:Ljava/lang/String;
    invoke-static {v1}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->indexFile:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1010
    const-string v3, "/isw/comitem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1009
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    .line 1011
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1012
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1013
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1015
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1016
    const-string v3, "/isw/comitem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1015
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1016
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1017
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/comitem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1016
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1021
    const-string v3, "/isw/image/ccbg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1020
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    .line 1022
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1024
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1026
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1027
    const-string v3, "/isw/image/ccbg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1026
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/ccbg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1027
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1031
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1032
    const-string v3, "/isw/image/companyicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1031
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    .line 1033
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1034
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1035
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1037
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1038
    const-string v3, "/isw/image/companyicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1037
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1039
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/companyicon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1038
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1037
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1044
    const-string v3, "/isw/image/doticon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    .line 1045
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1047
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1049
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1050
    const-string v3, "/isw/image/doticon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1049
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1051
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/doticon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1050
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1055
    const-string v3, "/isw/image/callicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1054
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    .line 1056
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1057
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1058
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1060
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1061
    const-string v3, "/isw/image/callicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1060
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1062
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/callicon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1061
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1060
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1064
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1065
    const-string v3, "/isw/strg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1064
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1067
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1071
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1072
    const-string v3, "/isw/strg/callHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1071
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1074
    const-string v3, "/isw/strg/callHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1073
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/strg/callHistory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1074
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1073
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1079
    const-string v3, "/isw/strg/callHistoryBackup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1078
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->callHistoryBackupFile:Ljava/lang/String;

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1082
    const-string v3, "/isw/strg/callHistoryBackup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1081
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1082
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1083
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/strg/callHistoryBackup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1082
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1081
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    .end local v0           #dir:Ljava/io/File;
    :goto_0
    return-void

    .line 1088
    .end local v1           #newDataFileList:Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1089
    const-string v3, "/isw/company"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1088
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/isw/company"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1090
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1092
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/company"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1091
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1090
    invoke-static {v2, v3, v6}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .restart local v1       #newDataFileList:Ljava/lang/String;
    invoke-static {v1}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1095
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->indexFile:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1100
    const-string v3, "/isw/comitem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1099
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1102
    const-string v3, "/isw/comitem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1103
    const-string v4, "/isw/comitem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1101
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1107
    const-string v3, "/isw/image/ccbg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    .line 1108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1109
    const-string v3, "/isw/image/ccbg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1110
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/ccbg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1108
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1114
    const-string v3, "/isw/image/companyicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1116
    const-string v3, "/isw/image/companyicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1117
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/companyicon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1115
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1122
    const-string v3, "/isw/image/doticon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1124
    const-string v3, "/isw/image/doticon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1125
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/doticon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1123
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1129
    const-string v3, "/isw/image/callicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1131
    const-string v3, "/isw/image/callicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/image/callicon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1130
    invoke-static {v2, v3, v5}, Lcom/isw/android/corp/util/LocalConfig;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1136
    const-string v3, "/isw/strg/callHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1138
    const-string v3, "/isw/strg/callHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1139
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/strg/callHistory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1137
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1142
    const-string v3, "/isw/strg/callHistoryBackup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/LocalConfig;->callHistoryBackupFile:Ljava/lang/String;

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1144
    const-string v3, "/isw/strg/callHistoryBackup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1144
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1145
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isw/strg/callHistoryBackup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1143
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1148
    const-string v3, "/isw/strg/app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1149
    const-string v4, "/isw/strg/app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized updateAppInfo()V
    .locals 9

    .prologue
    .line 1221
    const-class v6, Lcom/isw/android/corp/util/LocalConfig;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 1222
    sget-object v5, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 1223
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 1224
    .local v3, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    .line 1226
    .local v4, xmlHeader:Ljava/lang/String;
    const-string v0, ""

    .line 1227
    .local v0, body:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<AppInfo>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1241
    const-string v7, "</AppInfo>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1240
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/isw/android/corp/util/WinksApplication;->appInfoXml:Ljava/lang/String;

    .line 1242
    const-string v5, "MiniLocalConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "postxml:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->appInfoXml:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    sget-object v5, Lcom/isw/android/corp/util/WinksApplication;->appInfoXml:Ljava/lang/String;

    .line 1245
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->strgDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1244
    invoke-static {v5, v7}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    :cond_0
    monitor-exit v6

    return-void

    .line 1228
    :cond_1
    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1229
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-gtz v5, :cond_2

    .line 1230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<i><n>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1232
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1233
    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 1234
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1232
    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1234
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1232
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1235
    const-string v7, "</n>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "<p>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "</p>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1236
    const-string v7, "</i>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1227
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1221
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #xmlHeader:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static updateCallRecordFile(Ljava/lang/String;)V
    .locals 17
    .parameter "number"

    .prologue
    .line 599
    const/4 v7, 0x0

    .line 601
    .local v7, input:Ljava/io/FileInputStream;
    :try_start_0
    const-string v13, "maxSingleCall"

    const/16 v14, 0x7d0

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 602
    .local v9, maxSingleCall:I
    new-instance v5, Ljava/io/File;

    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->callRecordFile:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    .local v5, file:Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 604
    .local v10, newContent:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 606
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v13

    long-to-int v3, v13

    .line 607
    .local v3, count:I
    new-array v1, v3, [B

    .line 608
    .local v1, buffer:[B
    new-instance v8, Ljava/io/FileInputStream;

    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->callRecordFile:Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v7           #input:Ljava/io/FileInputStream;
    .local v8, input:Ljava/io/FileInputStream;
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v8, v1, v13, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 610
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 611
    const/4 v7, 0x0

    .line 612
    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 613
    .local v2, content:Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 614
    .local v11, split:[Ljava/lang/String;
    const/4 v12, 0x1

    .line 615
    .local v12, total:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v13, v11

    if-lt v6, v13, :cond_2

    .line 626
    .end local v1           #buffer:[B
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #count:I
    .end local v6           #i:I
    .end local v11           #split:[Ljava/lang/String;
    .end local v12           #total:I
    :cond_0
    sget-object v13, Lcom/isw/android/corp/util/LocalConfig;->callRecordFile:Ljava/lang/String;

    invoke-static {v10, v13}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 631
    if-eqz v7, :cond_1

    .line 632
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 639
    .end local v5           #file:Ljava/io/File;
    .end local v9           #maxSingleCall:I
    .end local v10           #newContent:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 616
    .restart local v1       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #i:I
    .restart local v9       #maxSingleCall:I
    .restart local v10       #newContent:Ljava/lang/String;
    .restart local v11       #split:[Ljava/lang/String;
    .restart local v12       #total:I
    :cond_2
    :try_start_4
    aget-object v13, v11, v6

    invoke-static {v13}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 617
    aget-object v13, v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v14, v11, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v10

    .line 619
    add-int/lit8 v12, v12, 0x1

    .line 621
    :cond_3
    if-ge v12, v9, :cond_0

    .line 615
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 627
    .end local v1           #buffer:[B
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #file:Ljava/io/File;
    .end local v6           #i:I
    .end local v9           #maxSingleCall:I
    .end local v10           #newContent:Ljava/lang/String;
    .end local v11           #split:[Ljava/lang/String;
    .end local v12           #total:I
    :catch_0
    move-exception v4

    .line 628
    .local v4, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    if-eqz v7, :cond_1

    .line 632
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 634
    :catch_1
    move-exception v4

    .line 635
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 629
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 631
    :goto_3
    if-eqz v7, :cond_4

    .line 632
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 638
    :cond_4
    :goto_4
    throw v13

    .line 634
    :catch_2
    move-exception v4

    .line 635
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    const-string v14, "MiniLocalConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 634
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v9       #maxSingleCall:I
    .restart local v10       #newContent:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 635
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    const-string v13, "MiniLocalConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 629
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v1       #buffer:[B
    .restart local v3       #count:I
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .line 627
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static uploadCallHistoryToServer()V
    .locals 13

    .prologue
    .line 497
    const/4 v4, 0x0

    .line 499
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v9, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v3, historyFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 501
    const-string v9, "MiniLocalConfig"

    const-string v10, "Note! The call history file is not exist!"

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 533
    if-eqz v4, :cond_0

    .line 534
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 541
    .end local v3           #historyFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 536
    .restart local v3       #historyFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 537
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v1, v9

    .line 506
    .local v1, count:I
    new-array v0, v1, [B

    .line 507
    .local v0, buffer:[B
    new-instance v5, Ljava/io/FileInputStream;

    sget-object v9, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 508
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v5, input:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v9, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 509
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 510
    const/4 v4, 0x0

    .line 511
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 513
    .local v6, postBody:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://d.zqlx.com:8100/winksWS/user/uploadcompanycallhistory?imsi="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 516
    const-string v10, "uid"

    const-string v11, "uid"

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 513
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 517
    .local v8, url:Ljava/lang/String;
    invoke-static {v8, v6}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, response:Ljava/lang/String;
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v9, "lastUploadCallHistory"

    .line 520
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 519
    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v9, "MiniLocalConfig"

    const-string v10, "Delete the current call history file."

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 533
    if-eqz v4, :cond_0

    .line 534
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 536
    :catch_1
    move-exception v2

    .line 537
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #historyFile:Ljava/io/File;
    .end local v6           #postBody:Ljava/lang/String;
    .end local v7           #response:Ljava/lang/String;
    .end local v8           #url:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 529
    .restart local v2       #ex:Ljava/lang/Exception;
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 533
    if-eqz v4, :cond_0

    .line 534
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 536
    :catch_3
    move-exception v2

    .line 537
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    const-string v9, "MiniLocalConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 533
    :goto_2
    if-eqz v4, :cond_2

    .line 534
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 540
    :cond_2
    :goto_3
    throw v9

    .line 536
    :catch_4
    move-exception v2

    .line 537
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    const-string v10, "MiniLocalConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 531
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v3       #historyFile:Ljava/io/File;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_2

    .line 528
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_1
.end method
