.class public Lcom/zte/zdm/application/services/ZdmSelfRegisterService;
.super Landroid/app/Service;


# static fields
.field public static final a:Ljava/lang/String; = "SENT_SMS_ACTION"

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static h:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;


# instance fields
.field public d:Landroid/content/SharedPreferences;

.field public e:Ljava/lang/String;

.field f:Landroid/os/Handler;

.field g:Landroid/content/BroadcastReceiver;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->h:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->d:Landroid/content/SharedPreferences;

    const-string v0, "register"

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->k:Ljava/lang/String;

    const-string v0, "ZTE"

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->p:I

    new-instance v0, Lcom/zte/zdm/application/services/a;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/services/a;-><init>(Lcom/zte/zdm/application/services/ZdmSelfRegisterService;)V

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->f:Landroid/os/Handler;

    new-instance v0, Lcom/zte/zdm/application/services/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/services/b;-><init>(Lcom/zte/zdm/application/services/ZdmSelfRegisterService;)V

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/services/ZdmSelfRegisterService;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->h:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SENT_SMS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->o:Ljava/lang/String;

    iget v3, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->p:I

    int-to-short v3, v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const-string v0, "NAVY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destinationAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destinationPort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->i:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Landroid/telephony/TelephonyManager;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->b(Landroid/telephony/TelephonyManager;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->g()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->h()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/telephony/TelephonyManager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SRSAddr"

    const-string v1, "10655459"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SRSPort"

    const-string v1, "6838"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SrvAddr"

    const-string v1, "http://dm.uni-info.com.cn/"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SrvPort"

    const-string v1, "7001"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const-string v0, "SRSAddr"

    const-string v1, "10654040"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SRSPort"

    const-string v1, "4266"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SrvAddr"

    const-string v1, "http://dm.monternet.com/"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SrvPort"

    const-string v1, "7001"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/telephony/TelephonyManager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v0, "IMSI"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->k:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IMEI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->b(Ljava/lang/String;)V

    const-string v1, "IMSI"

    iget-object v2, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NAVY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructAndSendChinaMobileSMS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IMEI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->b(Ljava/lang/String;)V

    const-string v1, "IMSI"

    iget-object v2, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NAVY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructAndSendChinaUnicomSMS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->g:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SENT_SMS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public g()V
    .locals 3

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "apps.setting.product.release"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->n:Ljava/lang/String;

    return-void
.end method

.method public h()V
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->m:Ljava/lang/String;

    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "SRSAddr"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->o:Ljava/lang/String;

    const-string v0, "SRSPort"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->p:I

    return-void

    :cond_0
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->g:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "NAVY"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->onStartCommand(Landroid/content/Intent;II)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-wide/16 v3, 0xfa0

    const/4 v2, 0x2

    const-string v0, "NAVY"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->h:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;

    invoke-direct {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->k()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->b()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->i()V

    invoke-direct {p0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->j:Ljava/lang/String;

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
