.class public abstract Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;
.super Landroid/app/Activity;
.source "PhoneInfoBase.java"


# static fields
.field private static final AMOI_CLOUD_UUID:I = 0x2a

.field protected static final BASEBAND:Ljava/lang/String; = "gsm.version.baseband"

.field protected static final ENGINEER_VERSION:Ljava/lang/String; = "AMOI-20120316-V2.0"

.field public static final FILE_GSM:Ljava/lang/String; = "/local/nvm/GsmCalData.nvm"

.field public static final FILE_MANUFACTORY:Ljava/lang/String; = "/local/nvm/ManufactoryInf.nvm"

.field public static final FILE_TD:Ljava/lang/String; = "/local/nvm/TdCalData.nvm"

.field protected static final GEMINI_SIM_1:I = 0x0

.field protected static final GEMINI_SIM_2:I = 0x1

.field protected static final REVISION:Ljava/lang/String; = "Revision"


# instance fields
.field protected ap_build:Ljava/lang/String;

.field protected baseband:Ljava/lang/String;

.field protected hardwareVersion:Ljava/lang/String;

.field private final iTel:Lcom/android/internal/telephony/ITelephony;

.field protected infoArray:[Ljava/lang/String;

.field private mInfo_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/base/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field protected macAddress:Ljava/lang/String;

.field protected phoneInfoListView:Landroid/widget/ListView;

.field private sim:Ljava/lang/String;

.field protected softwareVersion:Ljava/lang/String;

.field protected textGsm:Ljava/lang/String;

.field protected textTd:Ljava/lang/String;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->iTel:Lcom/android/internal/telephony/ITelephony;

    .line 48
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->phoneInfoListView:Landroid/widget/ListView;

    .line 50
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->softwareVersion:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->hardwareVersion:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->baseband:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->ap_build:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->macAddress:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->sim:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    return-void
.end method

.method private getUUID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 165
    const-string v4, ""

    .line 166
    .local v4, text:Ljava/lang/String;
    const-string v5, "NvRAMAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 167
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/base/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amoi/AmoiEngineerMode/base/NvRAMAgent;

    move-result-object v0

    .line 168
    .local v0, agent:Lcom/amoi/AmoiEngineerMode/base/NvRAMAgent;
    const/4 v2, 0x0

    .line 170
    .local v2, buff:[B
    const/16 v5, 0x2a

    :try_start_0
    invoke-interface {v0, v5}, Lcom/amoi/AmoiEngineerMode/base/NvRAMAgent;->readFile(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 176
    :goto_0
    array-length v5, v2

    if-lez v5, :cond_0

    .line 177
    new-instance v4, Ljava/lang/String;

    .end local v4           #text:Ljava/lang/String;
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 179
    .restart local v4       #text:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 171
    :catch_0
    move-exception v3

    .line 173
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getBaseband()V
    .locals 1

    .prologue
    .line 320
    const-string v0, "gsm.version.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->baseband:Ljava/lang/String;

    .line 321
    return-void
.end method

.method protected getByte(Ljava/lang/String;I)B
    .locals 4
    .parameter "filedir"
    .parameter "index"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, by:B
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->openFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    aget-byte v0, v2, p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return v0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method getFileData()[B
    .locals 10

    .prologue
    .line 360
    new-instance v2, Ljava/io/File;

    const-string v8, "/local/nvm/ManufactoryInf.nvm"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, f:Ljava/io/File;
    const/4 v4, 0x0

    .line 362
    .local v4, len:I
    const/4 v8, 0x2

    new-array v6, v8, [B

    .line 364
    .local v6, res:[B
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 365
    .local v3, fr:Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v8, 0x400

    invoke-direct {v5, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 366
    .local v5, reader:Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, s:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    .line 368
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 369
    .local v0, bs:[B
    array-length v4, v0

    .line 370
    const/4 v8, 0x0

    add-int/lit8 v9, v4, -0x2

    aget-byte v9, v0, v9

    aput-byte v9, v6, v8

    .line 371
    const/4 v8, 0x1

    add-int/lit8 v9, v4, -0x1

    aget-byte v9, v0, v9

    aput-byte v9, v6, v8

    .line 372
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 373
    goto :goto_0

    .line 374
    .end local v0           #bs:[B
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 375
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v7           #s:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 378
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 379
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected getFormattedKernelVersion()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 194
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 199
    .local v4, procVersionStr:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 202
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 215
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 216
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 218
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 221
    const-string v6, "Unavailable"

    .line 237
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :goto_0
    return-object v6

    .line 199
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/io/IOException;
    const-string v6, "Unavailable"

    goto :goto_0

    .line 222
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-ge v6, v8, :cond_1

    .line 226
    const-string v6, "Unavailable"

    goto :goto_0

    .line 228
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method protected getFromSystemProp()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "ro.build.display.id"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->softwareVersion:Ljava/lang/String;

    .line 246
    const-string v0, "ro.mediatek.version.release"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->ap_build:Ljava/lang/String;

    .line 247
    return-void
.end method

.method protected getRevisioninfo()V
    .locals 7

    .prologue
    .line 293
    const-string v3, "/proc/hwversion"

    .line 295
    .local v3, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 296
    .local v4, fin:Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    .local v0, buffer:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, c:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 299
    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    .line 300
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #c:I
    .end local v4           #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 309
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    invoke-static {}, Lcom/amoi/AmoiEngineerMode/DeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->hardwareVersion:Ljava/lang/String;

    .line 314
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 305
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #c:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->hardwareVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected initInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 78
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 80
    .local v6, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, imei:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v11}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    .line 83
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSN()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, sn:Ljava/lang/String;
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 85
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_1

    const/4 v3, 0x0

    .line 86
    .local v3, info:Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->macAddress:Ljava/lang/String;

    .line 90
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->iTel:Lcom/android/internal/telephony/ITelephony;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600e6

    invoke-virtual {p0, v8}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->sim:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->iTel:Lcom/android/internal/telephony/ITelephony;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->sim:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nSIM2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600e6

    invoke-virtual {p0, v8}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->sim:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_2
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getFromSystemProp()V

    .line 111
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->testNvm()V

    .line 112
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getRevisioninfo()V

    .line 113
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getBaseband()V

    .line 115
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    const v7, 0x7f06002f

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->softwareVersion:Ljava/lang/String;

    invoke-direct {v4, v7, v8, v9}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    .local v4, infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f0600d4

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v5, v9}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f060034

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v2, v9}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f0600e0

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->macAddress:Ljava/lang/String;

    invoke-direct {v4, v7, v8, v9}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f060035

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->hardwareVersion:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f060033

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f0600db

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->ap_build:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f060036

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->baseband:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v4, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v7, 0x7f060037

    invoke-virtual {p0, v7}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AMOI-20120316-V2.0"

    invoke-direct {v4, v7, v8}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .restart local v4       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->phoneInfoListView:Landroid/widget/ListView;

    new-instance v8, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;

    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->mInfo_List:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v9}, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    return-void

    .line 85
    .end local v3           #info:Landroid/net/wifi/WifiInfo;
    .end local v4           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    :cond_1
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    goto/16 :goto_0

    .line 93
    .restart local v3       #info:Landroid/net/wifi/WifiInfo;
    :cond_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600e7

    invoke-virtual {p0, v8}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->sim:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 97
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 103
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->sim:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nSIM2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600e7

    invoke-virtual {p0, v8}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->sim:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 105
    :catch_1
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method protected abstract initView()V
.end method

.method protected isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "fil"

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->setContentView(I)V

    .line 67
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->phoneInfoListView:Landroid/widget/ListView;

    .line 70
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->initView()V

    .line 71
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->initInfo()V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 387
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->wifiMgr:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 390
    :cond_0
    return-void
.end method

.method public openFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filedir"

    .prologue
    .line 327
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v3, file:Ljava/io/File;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 329
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 330
    .local v1, data:[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v6, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 333
    .local v5, len:I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 334
    .local v4, inStream:Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 335
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v4           #inStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 341
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    return-object v7

    .line 337
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 338
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 339
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected testNvm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 259
    const-string v1, "/local/nvm/GsmCalData.nvm"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/local/nvm/TdCalData.nvm"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "OK"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textGsm:Ljava/lang/String;

    .line 269
    :goto_0
    const-string v1, "/local/nvm/ManufactoryInf.nvm"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 270
    const-string v1, "\u6682\u4e0d\u652f\u6301"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textTd:Ljava/lang/String;

    .line 271
    const-string v1, "SmallTest"

    const-string v2, "file is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_1
    return-void

    .line 262
    :cond_0
    const-string v1, "/local/nvm/GsmCalData.nvm"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const-string v1, "Only GSM RF OK"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textGsm:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_1
    const-string v1, "/local/nvm/TdCalData.nvm"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    const-string v1, "Only TD RF OK"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textGsm:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_2
    const-string v1, "\u6682\u4e0d\u652f\u6301"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textGsm:Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->getFileData()[B

    move-result-object v0

    .line 274
    .local v0, bs:[B
    aget-byte v1, v0, v4

    if-ne v1, v3, :cond_4

    aget-byte v1, v0, v3

    if-ne v1, v3, :cond_4

    .line 275
    const-string v1, "PASS"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textTd:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_4
    aget-byte v1, v0, v4

    if-eq v1, v3, :cond_5

    aget-byte v1, v0, v3

    if-eq v1, v3, :cond_5

    .line 277
    const-string v1, "\u6682\u4e0d\u652f\u6301"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textTd:Ljava/lang/String;

    goto :goto_1

    .line 279
    :cond_5
    const-string v1, "SmallTest"

    const-string v2, "file is found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    aget-byte v1, v0, v4

    if-ne v1, v3, :cond_6

    .line 281
    const-string v1, "Only GSM RF PASS"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textTd:Ljava/lang/String;

    goto :goto_1

    .line 283
    :cond_6
    const-string v1, "Only TD RF PASS"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;->textTd:Ljava/lang/String;

    goto :goto_1
.end method
