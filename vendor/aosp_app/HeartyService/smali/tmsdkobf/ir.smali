.class final Ltmsdkobf/ir;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final rC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final rD:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private rE:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7f2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Ltmsdkobf/ir;->rD:J

    .line 62
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "AresEngineManager"

    const-string v2, "aresengine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "QScannerManager"

    const-string v2, "qscanner"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "LocationManager"

    const-string v2, "phoneservice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "IpDialManager"

    const-string v2, "phoneservice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "UsefulNumberManager"

    const-string v2, "phoneservice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "NetworkManager"

    const-string v2, "network"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "TrafficCorrectionManager"

    const-string v2, "network"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "FirewallManager"

    const-string v2, "network"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "NetSettingManager"

    const-string v2, "netsetting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "OptimizeManager"

    const-string v2, "optimize"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "UpdateManager"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "UrlCheckManager"

    const-string v2, "urlcheck"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "PermissionManager"

    const-string v2, "permission"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "SoftwareManager"

    const-string v2, "software"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "AntitheftManager"

    const-string v2, "antitheft"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Ltmsdkobf/ir;->rC:Ljava/util/HashMap;

    const-string v1, "PowerSavingManager"

    const-string v2, "powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Landroid/content/Context;)V
    .locals 0
    .parameter "properties"
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Ltmsdkobf/ir;->rE:Ljava/util/Properties;

    .line 86
    iput-object p2, p0, Ltmsdkobf/ir;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private bk(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "pkg"

    .prologue
    .line 192
    iget-object v7, p0, Ltmsdkobf/ir;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 193
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 197
    .local v3, mInfo:Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-static {v4, p1, v7}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 202
    :goto_0
    const/4 v5, 0x0

    .line 204
    .local v5, result:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 205
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 206
    .local v6, signature:Landroid/content/pm/Signature;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    .local v2, input:Ljava/io/ByteArrayInputStream;
    :try_start_1
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 210
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Ltmsdkobf/kd;->v([B)Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 220
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #input:Ljava/io/ByteArrayInputStream;
    .end local v6           #signature:Landroid/content/pm/Signature;
    :cond_0
    :goto_1
    return-object v5

    .line 198
    .end local v5           #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #input:Ljava/io/ByteArrayInputStream;
    .restart local v5       #result:Ljava/lang/String;
    .restart local v6       #signature:Landroid/content/pm/Signature;
    :catch_1
    move-exception v1

    .line 214
    .local v1, e:Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v1           #e:Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v1

    .line 216
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method a(Ltmsdkobf/ah;)I
    .locals 5
    .parameter "checkResult"

    .prologue
    .line 177
    const-class v4, Ltmsdkobf/lk;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdkobf/lk;

    .line 178
    .local v3, manager:Ltmsdkobf/lk;
    iget-object v4, p0, Ltmsdkobf/ir;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ltmsdkobf/ir;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, certmd5:Ljava/lang/String;
    const-string v4, "channel"

    invoke-static {v4}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, channelId:Ljava/lang/String;
    new-instance v2, Ltmsdkobf/ai;

    invoke-direct {v2, v0, v1}, Ltmsdkobf/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v2, info:Ltmsdkobf/ai;
    invoke-virtual {v3, v2, p1}, Ltmsdkobf/lk;->a(Ltmsdkobf/ai;Ltmsdkobf/ah;)I

    move-result v4

    return v4
.end method

.method public dp()Z
    .locals 6

    .prologue
    .line 136
    iget-object v3, p0, Ltmsdkobf/ir;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, pkg:Ljava/lang/String;
    invoke-direct {p0, v2}, Ltmsdkobf/ir;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, certmd5:Ljava/lang/String;
    iget-object v3, p0, Ltmsdkobf/ir;->rE:Ljava/util/Properties;

    const-string v4, "signature"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, lcmd5:Ljava/lang/String;
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "your    signature is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "licence signature is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public dq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Ltmsdkobf/ir;->rE:Ljava/util/Properties;

    const-string v1, "lc_sdk_channel"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Ltmsdkobf/ir;->rE:Ljava/util/Properties;

    const-string v1, "lc_sdk_pid"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ds()J
    .locals 3

    .prologue
    .line 167
    sget-wide v1, Ltmsdkobf/ir;->rD:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, defaultString:Ljava/lang/String;
    iget-object v1, p0, Ltmsdkobf/ir;->rE:Ljava/util/Properties;

    const-string v2, "expiry.seconds"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method
