.class public Lcom/zte/retrieve/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static final ALARM:Ljava/lang/String; = "ALARM"

.field private static final CALL_FORWARDING_NUM:Ljava/lang/String; = "CALL_FORWARDING_NUM"

.field private static final CLOUD_ACTIVE:Ljava/lang/String; = "CLOUD_ACTIVE"

.field private static final CLOUD_SELECT:Ljava/lang/String; = "CLOUD_SELECT"

.field private static final HOST_NAME:Ljava/lang/String; = "HOST_NAME"

.field private static final ICCID:Ljava/lang/String; = "ICCID"

.field private static final ICCID_DOUBLE:Ljava/lang/String; = "ICCID_DOUBLE"

.field private static final IMSI:Ljava/lang/String; = "IMSI"

.field private static final IMSI_DOUBLE:Ljava/lang/String; = "IMSI_DOUBLE"

.field private static final LAST_UPDATE_CHECK_TIME:Ljava/lang/String; = "LAST_UPDATE_CHECK_TIME"

.field private static final LOCAL_ACTIVE:Ljava/lang/String; = "LOCAL_ACTIVE"

.field private static final LOCAL_SELECT:Ljava/lang/String; = "LOCAL_SELECT"

.field private static final LOCK:Ljava/lang/String; = "LOCK"

.field private static final NOTIF_CIRCLE:J = 0x240c8400L

.field private static final PASSWORD:Ljava/lang/String; = "PASSWORD"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "notification"

.field private static final RETRIEVE_LOGIN_PATH:Ljava/lang/String; = "RETRIEVE_LOGIN_PATH"

.field private static final SECURITY_NUM:Ljava/lang/String; = "SECURITY_NUM"

.field private static final SMS_FORWARDING:Ljava/lang/String; = "SMS_FORWARDING"

.field private static final SMS_FORWARDING_NUM:Ljava/lang/String; = "SMS_FORWARDING_NUM"

.field private static final USERID:Ljava/lang/String; = "USERID"

.field private static final VERSION_CODE:Ljava/lang/String; = "version_number"

.field private static mController:Lcom/zte/retrieve/controller/Controller;


# instance fields
.field private accountInfo:I

.field private activationUserInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;

.field private hasAnswer:Z

.field private isFromAuthRetrieveView:Z

.field private isFromRecentapps:Z

.field private isPickingContack:Z

.field private isScreenOff2On:Z

.field private isTwoUpdateToThree:Z

.field private mActivityContext:Landroid/content/Context;

.field private mAppContext:Landroid/content/Context;

.field private mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

.field private mPendingActivity:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/zte/retrieve/iview/IView;",
            ">;"
        }
    .end annotation
.end field

.field private mSiminfoManager:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

.field private mStorage:Lcom/zte/retrieve/service/format/FormatStorageManager;

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/retrieve/controller/Controller;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mPendingActivity:Ljava/util/Stack;

    .line 83
    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mSiminfoManager:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    .line 85
    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    .line 86
    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mStorage:Lcom/zte/retrieve/service/format/FormatStorageManager;

    .line 107
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mPendingActivity:Ljava/util/Stack;

    .line 108
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "securityNum"

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 318
    .local v1, formattedNum:Ljava/lang/String;
    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 320
    const/4 v3, 0x0

    .line 321
    .local v3, zeroCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 330
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    return-object v1

    .line 322
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .local v0, a:C
    const/16 v4, 0x30

    if-ne v0, v4, :cond_0

    .line 324
    add-int/lit8 v3, v3, 0x1

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getISiminfoManager()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
    .locals 7

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, siminfoManager:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
    invoke-static {}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->values()[Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 150
    :goto_1
    if-nez v1, :cond_0

    .line 151
    const-string v2, "the platform does not write to SiminfoEnum!"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 154
    :cond_0
    return-object v1

    .line 141
    :cond_1
    aget-object v0, v3, v2

    .line 143
    .local v0, siminfoEnum:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->getSiminfo(Landroid/content/Context;)Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v1

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "this SimInfo platform is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v5

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getIStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/zte/retrieve/service/format/FormatStorageManager;

    iget-object v1, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/retrieve/service/format/FormatStorageManager;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, mStorage:Lcom/zte/retrieve/service/format/FormatStorageManager;
    return-object v0
.end method

.method public static getInstance()Lcom/zte/retrieve/controller/Controller;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/zte/retrieve/controller/Controller;->mController:Lcom/zte/retrieve/controller/Controller;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/zte/retrieve/controller/Controller;

    invoke-direct {v0}, Lcom/zte/retrieve/controller/Controller;-><init>()V

    sput-object v0, Lcom/zte/retrieve/controller/Controller;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 119
    :cond_0
    sget-object v0, Lcom/zte/retrieve/controller/Controller;->mController:Lcom/zte/retrieve/controller/Controller;

    return-object v0
.end method

.method private getLastUpdateCheckTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 913
    new-instance v0, Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "notification"

    invoke-direct {v0, p1, v1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "LAST_UPDATE_CHECK_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getStoreDirectory()Ljava/lang/String;
    .locals 6

    .prologue
    .line 979
    const/4 v3, 0x0

    .line 980
    .local v3, updateFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, sdCardState:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, fileCardPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getVirtualStorageState()Ljava/lang/String;

    move-result-object v4

    .line 984
    .local v4, virtualStatus:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getVirtualStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, fileVirtualPath:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 988
    const-string v5, "external sdcard is valid"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 989
    move-object v3, v0

    .line 997
    :goto_0
    return-object v3

    .line 990
    :cond_0
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 991
    const-string v5, "external sdcard is invalid,try virtual card"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 992
    move-object v3, v1

    goto :goto_0

    .line 994
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initIntentActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/retrieve/controller/IntentParaInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 655
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p3, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/retrieve/controller/IntentParaInfo;>;"
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 657
    if-eqz p3, :cond_0

    .line 658
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 665
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 666
    return-void

    .line 659
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/retrieve/controller/IntentParaInfo;

    .line 660
    .local v1, intentPara:Lcom/zte/retrieve/controller/IntentParaInfo;
    invoke-virtual {v1}, Lcom/zte/retrieve/controller/IntentParaInfo;->getParaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/IntentParaInfo;->getParaValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paraName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/IntentParaInfo;->getParaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", paraValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/IntentParaInfo;->getParaValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 863
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPendingActivity(Lcom/zte/retrieve/iview/IView;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 607
    if-eqz p1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mPendingActivity:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_0
    return-void
.end method

.method public cleanIMSIConfig()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "IMSI"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/utils/ConfigManager;->remove(Ljava/lang/String;)Z

    .line 868
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "IMSI_DOUBLE"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/utils/ConfigManager;->remove(Ljava/lang/String;)Z

    .line 869
    return-void
.end method

.method public closePendingActivity()V
    .locals 2

    .prologue
    .line 618
    :goto_0
    iget-object v1, p0, Lcom/zte/retrieve/controller/Controller;->mPendingActivity:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    return-void

    .line 620
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/controller/Controller;->mPendingActivity:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/retrieve/iview/IView;

    invoke-interface {v1}, Lcom/zte/retrieve/iview/IView;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "mContext"
    .parameter "downLoadUrl"
    .parameter "summary"
    .parameter "fileName"
    .parameter "versionName"

    .prologue
    .line 949
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 950
    .local v6, uri:Landroid/net/Uri;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 951
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 952
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/zte/retrieve/controller/Controller;->getStoreDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    .local v3, internalSD:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    const-string v7, "Download"

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 955
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 956
    const v7, 0x7f0600ca

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 975
    .end local v3           #internalSD:Ljava/io/File;
    :goto_0
    return-void

    .line 962
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 963
    .local v1, downLoadRequest:Landroid/app/DownloadManager$Request;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    .line 964
    .local v5, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, mimeString:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 966
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 967
    .local v0, buf:Ljava/lang/StringBuffer;
    const/high16 v7, 0x7f06

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 968
    const v8, 0x7f0600bc

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p5, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 969
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 971
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 972
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 973
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 974
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    goto :goto_0
.end method

.method public getAccountManagerInfo()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/zte/retrieve/controller/Controller;->accountInfo:I

    return v0
.end method

.method public getActivationUserInfo()Lcom/zte/retrieve/utils/ServerResponseInfo;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->activationUserInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;

    return-object v0
.end method

.method public getAnswerStatus()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/zte/retrieve/controller/Controller;->hasAnswer:Z

    return v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCallForwardingNum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "CALL_FORWARDING_NUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "HOST_NAME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getICCID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "ICCID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getICCIDDouble()Ljava/lang/String;
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "ICCID_DOUBLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "IMSI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSIDouble()Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "IMSI_DOUBLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMD5Imei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 921
    new-instance v1, Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-direct {v1, p1}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zte/retrieve/utils/PhoneInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, imei:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/RetrieveMD5;->toMd5([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v2, "PASSWORD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, ciphertext:Ljava/lang/String;
    const-string v1, "ztephoneretrieve"

    invoke-static {v0, v1}, Lcom/zte/retrieve/utils/Cryptography;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQueryUserInfo()Lcom/zte/retrieve/utils/ServerResponseInfo;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->activationUserInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;

    return-object v0
.end method

.method public getSMSForwardingNum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "SMS_FORWARDING_NUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityNum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "SECURITY_NUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mSiminfoManager:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    return-object v0
.end method

.method public getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mStorage:Lcom/zte/retrieve/service/format/FormatStorageManager;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "USERID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getVersionFlag()I
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "version_number"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "appContext"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 132
    iput-object p1, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Lcom/zte/retrieve/controller/Controller;->getISiminfoManager()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mSiminfoManager:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    .line 134
    invoke-direct {p0}, Lcom/zte/retrieve/controller/Controller;->getIStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mStorage:Lcom/zte/retrieve/service/format/FormatStorageManager;

    .line 135
    new-instance v0, Lcom/zte/retrieve/utils/ConfigManager;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    .line 137
    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cloud="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    const/4 v0, 0x1

    .line 569
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlarmStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 556
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "ALARM"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCloudActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 710
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "CLOUD_ACTIVE"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCloudSelect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 697
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "CLOUD_SELECT"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isFromAuthRetrieveView()Z
    .locals 1

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/zte/retrieve/controller/Controller;->isFromAuthRetrieveView:Z

    return v0
.end method

.method public isFromRecentapps()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/zte/retrieve/controller/Controller;->isFromRecentapps:Z

    return v0
.end method

.method public isIIupdateToIII()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/zte/retrieve/controller/Controller;->isTwoUpdateToThree:Z

    return v0
.end method

.method public isIccidExist(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 497
    new-instance v0, Lcom/zte/retrieve/utils/ConfigManager;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    const-string v1, "ICCID"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/utils/ConfigManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/retrieve/utils/ConfigManager;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    const-string v1, "ICCID_DOUBLE"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/utils/ConfigManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    const-string v0, "retrieve is open"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImsiExist(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, bImsiValid:Z
    const/4 v0, 0x0

    .line 438
    .local v0, bImsiDoubleValid:Z
    new-instance v2, Lcom/zte/retrieve/utils/ConfigManager;

    invoke-direct {v2, p1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    const-string v3, "IMSI"

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/utils/ConfigManager;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 439
    const-string v2, "imsi is exist"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 440
    const/4 v1, 0x1

    .line 442
    :cond_0
    new-instance v2, Lcom/zte/retrieve/utils/ConfigManager;

    invoke-direct {v2, p1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    const-string v3, "IMSI_DOUBLE"

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/utils/ConfigManager;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getIMSIDouble()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 443
    const-string v2, "imsi_double is exist"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x1

    .line 447
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 448
    :cond_2
    const-string v2, "retrieve II is open"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 449
    const/4 v2, 0x1

    .line 452
    :goto_0
    return v2

    .line 451
    :cond_3
    const-string v2, "retrieve II is not open"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 452
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLocalActiveStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 719
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "LOCAL_ACTIVE"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLocalSelect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 689
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "LOCAL_SELECT"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLockStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 529
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "LOCK"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMTKPlatform()Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mSiminfoManager:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    instance-of v0, v0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;

    return v0
.end method

.method public isModeDualcard()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mSiminfoManager:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    invoke-virtual {v0}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->isDualSimCardMode()Z

    move-result v0

    return v0
.end method

.method public isPickingContack()Z
    .locals 1

    .prologue
    .line 1046
    iget-boolean v0, p0, Lcom/zte/retrieve/controller/Controller;->isPickingContack:Z

    return v0
.end method

.method public isRetrieveLoginPath()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 728
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "RETRIEVE_LOGIN_PATH"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSMSForwardingStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 597
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v3, "SMS_FORWARDING"

    invoke-virtual {v2, v3, v1}, Lcom/zte/retrieve/utils/ConfigManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isScreenOff2On()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/zte/retrieve/controller/Controller;->isScreenOff2On:Z

    return v0
.end method

.method public isSecurityNum(Ljava/lang/String;)Z
    .locals 10
    .parameter "inComingNum"

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, securityNum:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chenk securityNum, the coming number : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", security number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v3}, Lcom/zte/retrieve/controller/Controller;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, formatSecNumber:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/zte/retrieve/controller/Controller;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, formatIncomNumber:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 274
    .local v2, incomLen:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 276
    .local v4, setLen:I
    if-ne v2, v4, :cond_2

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v6

    .line 280
    goto :goto_0

    .line 284
    :cond_2
    if-le v2, v4, :cond_4

    .line 285
    sub-int v7, v2, v4

    if-le v7, v9, :cond_3

    move v5, v6

    .line 286
    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    .line 291
    goto :goto_0

    .line 295
    :cond_4
    sub-int v7, v4, v2

    if-le v7, v9, :cond_5

    move v5, v6

    .line 296
    goto :goto_0

    .line 298
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    .line 301
    goto :goto_0
.end method

.method public isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "mContext"
    .parameter "className"

    .prologue
    .line 1008
    const/4 v2, 0x0

    .line 1009
    .local v2, isRunning:Z
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1010
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 1011
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1012
    const/4 v4, 0x0

    .line 1021
    :goto_0
    return v4

    .line 1014
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 1020
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "service,isRunning="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    move v4, v2

    .line 1021
    goto :goto_0

    .line 1015
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1016
    const/4 v2, 0x1

    .line 1017
    goto :goto_2

    .line 1014
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isUpdateNeed2Check(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getCurrentTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";getLastUpdateCheckTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zte/retrieve/controller/Controller;->getLastUpdateCheckTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getCurrentTime()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/zte/retrieve/controller/Controller;->getLastUpdateCheckTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 903
    const/4 v0, 0x1

    .line 905
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVersionSecondUpdateThreeWithLocalOpen()Z
    .locals 2

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getVersionFlag()I

    move-result v0

    if-nez v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/controller/Controller;->isImsiExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/retrieve/controller/Controller;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->isIccidExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 896
    goto :goto_0
.end method

.method public navigateTo(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 629
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 631
    return-void
.end method

.method public navigateTo(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/retrieve/controller/IntentParaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p3, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/retrieve/controller/IntentParaInfo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 635
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/retrieve/controller/Controller;->initIntentActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 636
    return-void
.end method

.method public navigateToExistActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/retrieve/controller/IntentParaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p3, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/retrieve/controller/IntentParaInfo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 649
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 650
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/retrieve/controller/Controller;->initIntentActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 651
    return-void
.end method

.method public setAccountManagerInfo(I)V
    .locals 0
    .parameter "accountChg"

    .prologue
    .line 804
    iput p1, p0, Lcom/zte/retrieve/controller/Controller;->accountInfo:I

    .line 805
    return-void
.end method

.method public setActivationUserInfo(Lcom/zte/retrieve/utils/ServerResponseInfo;)V
    .locals 0
    .parameter "userInfo"

    .prologue
    .line 775
    iput-object p1, p0, Lcom/zte/retrieve/controller/Controller;->activationUserInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;

    .line 776
    return-void
.end method

.method public setAlarm()Z
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "ALARM"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setAnswerStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 818
    iput-boolean p1, p0, Lcom/zte/retrieve/controller/Controller;->hasAnswer:Z

    .line 819
    return-void
.end method

.method public setCallForwardindgNum(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "CALL_FORWARDING_NUM"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCloudActiveStatus(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 714
    invoke-static {p1}, Lcom/zte/retrieve/utils/TrackInfoManager;->activeCloudTrack(I)V

    .line 715
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "CLOUD_ACTIVE"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setCloudSelectStatus(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "CLOUD_SELECT"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setCurrentActivity(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 934
    iput-object p1, p0, Lcom/zte/retrieve/controller/Controller;->mActivityContext:Landroid/content/Context;

    .line 935
    return-void
.end method

.method public setFromRecentapps(Z)V
    .locals 0
    .parameter "isFromRecentapps"

    .prologue
    .line 1034
    iput-boolean p1, p0, Lcom/zte/retrieve/controller/Controller;->isFromRecentapps:Z

    .line 1035
    return-void
.end method

.method public setHostName(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "HOST_NAME"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setICCID(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "ICCID"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setICCIDConfigFile(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v2

    .line 833
    .local v2, siminfo:Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 834
    iget-object v0, v2, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdOne:Ljava/lang/String;

    .line 835
    .local v0, simCardIccid1:Ljava/lang/String;
    iget-object v1, v2, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdTwo:Ljava/lang/String;

    .line 838
    .local v1, simCardIccid2:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "config dualcard,simCardIccid1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simCardIccid2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 840
    invoke-direct {p0, v0}, Lcom/zte/retrieve/controller/Controller;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 841
    invoke-virtual {p0, v5}, Lcom/zte/retrieve/controller/Controller;->setICCID(Ljava/lang/String;)Z

    .line 846
    :goto_0
    invoke-direct {p0, v1}, Lcom/zte/retrieve/controller/Controller;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    invoke-virtual {p0, v5}, Lcom/zte/retrieve/controller/Controller;->setICCIDDouble(Ljava/lang/String;)Z

    .line 852
    :goto_1
    iget-object v3, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v4, "IMSI"

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/utils/ConfigManager;->remove(Ljava/lang/String;)Z

    .line 853
    iget-object v3, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v4, "IMSI_DOUBLE"

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/utils/ConfigManager;->remove(Ljava/lang/String;)Z

    .line 854
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0, v0}, Lcom/zte/retrieve/controller/Controller;->setICCID(Ljava/lang/String;)Z

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p0, v1}, Lcom/zte/retrieve/controller/Controller;->setICCIDDouble(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public setICCIDDouble(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "ICCID_DOUBLE"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIMSI(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "IMSI"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIMSIDouble(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "IMSI_DOUBLE"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setInstrGuideFromView(Z)V
    .locals 0
    .parameter "fromAuthRetrieveView"

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/zte/retrieve/controller/Controller;->isFromAuthRetrieveView:Z

    .line 760
    return-void
.end method

.method public setLastUpdateCheckTime(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "currentTime"

    .prologue
    .line 909
    new-instance v0, Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "notification"

    invoke-direct {v0, p1, v1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "LAST_UPDATE_CHECK_TIME"

    invoke-virtual {v0, v1, p2, p3}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setLocalActiveStatus(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 723
    invoke-static {p1}, Lcom/zte/retrieve/utils/TrackInfoManager;->activeLocalTrack(I)V

    .line 724
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "LOCAL_ACTIVE"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setLocalSelectStatus(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "LOCAL_SELECT"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setLock()Z
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "LOCK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    const-string v1, "ztephoneretrieve"

    invoke-static {p1, v1}, Lcom/zte/retrieve/utils/Cryptography;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, ciphertext:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v2, "PASSWORD"

    invoke-virtual {v1, v2, v0}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setPickingContack(Z)V
    .locals 0
    .parameter "isPickingContack"

    .prologue
    .line 1050
    iput-boolean p1, p0, Lcom/zte/retrieve/controller/Controller;->isPickingContack:Z

    .line 1051
    return-void
.end method

.method public setQueryUserInfo(Lcom/zte/retrieve/utils/ServerResponseInfo;)V
    .locals 0
    .parameter "userInfo"

    .prologue
    .line 783
    iput-object p1, p0, Lcom/zte/retrieve/controller/Controller;->activationUserInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;

    .line 784
    return-void
.end method

.method public setRetrieveLoginPath(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "RETRIEVE_LOGIN_PATH"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setSMSForwardindgNum(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "SMS_FORWARDING_NUM"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSMSForwardingStatus()Z
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "SMS_FORWARDING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setScreenOff2On(Z)V
    .locals 0
    .parameter "isScreenOff2On"

    .prologue
    .line 1042
    iput-boolean p1, p0, Lcom/zte/retrieve/controller/Controller;->isScreenOff2On:Z

    .line 1043
    return-void
.end method

.method public setSecurityNum(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "SECURITY_NUM"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setUid(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "USERID"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setUnSMSForwardingStatus()Z
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "SMS_FORWARDING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setUnalarm()Z
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "ALARM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setUnlock()Z
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setUpdateHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 926
    iput-object p1, p0, Lcom/zte/retrieve/controller/Controller;->updateHandler:Landroid/os/Handler;

    .line 927
    return-void
.end method

.method public setVersionFlag(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/zte/retrieve/controller/Controller;->mConfigManager:Lcom/zte/retrieve/utils/ConfigManager;

    const-string v1, "version_number"

    invoke-virtual {v0, v1, p1}, Lcom/zte/retrieve/utils/ConfigManager;->set(Ljava/lang/String;I)Z

    .line 768
    return-void
.end method

.method public setVersionUpdateInfo(Z)V
    .locals 0
    .parameter "is2updateTO3"

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/zte/retrieve/controller/Controller;->isTwoUpdateToThree:Z

    .line 792
    return-void
.end method

.method public startBootService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 872
    sget-object v2, Lcom/zte/retrieve/controller/Controller;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2, p1}, Lcom/zte/retrieve/controller/Controller;->startService(Landroid/content/Context;)V

    .line 873
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/zte/retrieve/receiver/BootReceiver;

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 874
    .local v0, bootReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/zte/retrieve/receiver/NetStateReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 875
    .local v1, netStateReceiver:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 878
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 882
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    const-string v1, "start phoneRetrieveService"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public stopBootService(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 885
    const-string v2, "stop boot service"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 886
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/zte/retrieve/receiver/BootReceiver;

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 887
    .local v0, bootReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/zte/retrieve/receiver/NetStateReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 888
    .local v1, netStateReceiver:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 890
    iget-object v2, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 892
    sget-object v2, Lcom/zte/retrieve/controller/Controller;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v3, p0, Lcom/zte/retrieve/controller/Controller;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/controller/Controller;->stopService(Landroid/content/Context;)V

    .line 893
    return-void
.end method

.method public stopService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 209
    const-string v1, "stop phoneRetrieveService"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 210
    return-void
.end method
