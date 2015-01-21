.class public Lcom/zte/zdm/custom/selfregister/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/f/a/e;


# static fields
.field private static final c:Ljava/lang/String; = "selfRegistryRecordFile"

.field private static s:Lcom/zte/zdm/f/a/e;


# instance fields
.field protected final a:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Lcom/zte/zdm/f/a/d;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:S

.field private p:I

.field private q:Landroid/telephony/TelephonyManager;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/custom/selfregister/b;->s:Lcom/zte/zdm/f/a/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10654040:4266"

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->d:Ljava/lang/String;

    const-string v0, "1065840409:4266"

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->e:Ljava/lang/String;

    const-string v0, "10655459:6838"

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->f:Ljava/lang/String;

    const-string v0, "10655464:6838"

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->g:Ljava/lang/String;

    const-string v0, "self_regist_address"

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->h:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p0, Lcom/zte/zdm/custom/selfregister/b;->p:I

    const-string v0, "com.zte.zdm.SENT_SMS_ACTION"

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/custom/selfregister/b;->r:Z

    iput-object p1, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/zte/zdm/custom/selfregister/b;->a(Lcom/zte/zdm/b/b/a;)V

    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/b;->o()V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/custom/selfregister/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/f/a/e;
    .locals 1

    sget-object v0, Lcom/zte/zdm/custom/selfregister/b;->s:Lcom/zte/zdm/f/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/custom/selfregister/b;

    invoke-direct {v0, p0, p1}, Lcom/zte/zdm/custom/selfregister/b;-><init>(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)V

    sput-object v0, Lcom/zte/zdm/custom/selfregister/b;->s:Lcom/zte/zdm/f/a/e;

    :cond_0
    sget-object v0, Lcom/zte/zdm/custom/selfregister/b;->s:Lcom/zte/zdm/f/a/e;

    return-object v0
.end method

.method private a(J)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zte/zdm/custom/selfregister/b;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/custom/selfregister/b;->p:I

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/f/a/e;
    .locals 1

    new-instance v0, Lcom/zte/zdm/custom/selfregister/b;

    invoke-direct {v0, p0, p1}, Lcom/zte/zdm/custom/selfregister/b;-><init>(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)V

    sput-object v0, Lcom/zte/zdm/custom/selfregister/b;->s:Lcom/zte/zdm/f/a/e;

    sget-object v0, Lcom/zte/zdm/custom/selfregister/b;->s:Lcom/zte/zdm/f/a/e;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "46000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46007"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "This is not chinamobile card!"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/zte/zdm/custom/selfregister/b;)I
    .locals 2

    iget v0, p0, Lcom/zte/zdm/custom/selfregister/b;->p:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zte/zdm/custom/selfregister/b;->p:I

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "46001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "This is not chinamobile card!"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/zte/zdm/custom/selfregister/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/b;->s()V

    return-void
.end method

.method static synthetic n()Lcom/zte/zdm/f/a/e;
    .locals 1

    sget-object v0, Lcom/zte/zdm/custom/selfregister/b;->s:Lcom/zte/zdm/f/a/e;

    return-object v0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->q:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/b;->p()V

    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/b;->q()V

    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->j:Ljava/lang/String;

    return-void
.end method

.method private q()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/zte/zdm/f/a/d;

    invoke-direct {v0}, Lcom/zte/zdm/f/a/d;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->k:Lcom/zte/zdm/f/a/d;

    invoke-virtual {p0, v5}, Lcom/zte/zdm/custom/selfregister/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/zte/zdm/custom/selfregister/b;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "CMCC"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/zte/zdm/custom/selfregister/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "CU"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/zte/zdm/custom/selfregister/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "CMCC"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/zte/zdm/custom/selfregister/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "CU"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v2}, Lcom/zte/zdm/custom/selfregister/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/custom/selfregister/b;->k:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/f/a/d;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/zte/zdm/custom/selfregister/b;->k:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v2, v1}, Lcom/zte/zdm/f/a/d;->a(Ljava/lang/String;)Z

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iput v5, p0, Lcom/zte/zdm/custom/selfregister/b;->l:I

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->m:Ljava/lang/String;

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSimCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/custom/selfregister/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/b;->k:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iput v6, p0, Lcom/zte/zdm/custom/selfregister/b;->l:I

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/b;->m:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method private r()V
    .locals 4

    const-string v0, "registerSMSCallback"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    new-instance v1, Lcom/zte/zdm/custom/selfregister/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/zdm/custom/selfregister/d;-><init>(Lcom/zte/zdm/custom/selfregister/b;Lcom/zte/zdm/custom/selfregister/c;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.zte.zdm.SENT_SMS_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private s()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resend self sms reSendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/custom/selfregister/b;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zte/zdm/custom/selfregister/c;

    invoke-direct {v1, p0}, Lcom/zte/zdm/custom/selfregister/c;-><init>(Lcom/zte/zdm/custom/selfregister/b;)V

    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private t()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone roaming is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private u()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "No sim card in slot"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->k:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/f/a/d;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->q:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSubscriberIdGemini"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/b;->q:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->q:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/b/a;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "self_regist_address"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "CMCC"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "10654040:4266"

    if-eq v0, v1, :cond_1

    const-string v1, "1065840409:4266"

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "self_regist_address"

    const-string v1, "10654040:4266"

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "10654040:4266"

    :cond_1
    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/b;->n:Ljava/lang/String;

    aget-object v0, v0, v4

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    iput-short v0, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    return-void

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "CU"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "10655459:6838"

    if-eq v0, v1, :cond_1

    const-string v1, "10655464:6838"

    if-eq v0, v1, :cond_1

    :cond_3
    const-string v0, "self_regist_address"

    const-string v1, "10655459:6838"

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "10655459:6838"

    goto :goto_0

    :cond_4
    const-string v0, "10654040:4266"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/custom/selfregister/b;->n:Ljava/lang/String;

    return-void
.end method

.method public a(S)V
    .locals 0

    iput-short p1, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    return-void
.end method

.method public a(Ljava/lang/String;S[B)Z
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.zdm.SENT_SMS_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x800

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/b;->r()V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->n:Ljava/lang/String;

    iget-short v2, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    iget-short v3, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    iget v5, p0, Lcom/zte/zdm/custom/selfregister/b;->l:I

    move-object v4, p3

    move-object v7, v1

    invoke-static/range {v0 .. v7}, Lcom/zte/zdm/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;SS[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a([B)Z
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->n:Ljava/lang/String;

    iget-short v1, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/zdm/custom/selfregister/b;->a(Ljava/lang/String;S[B)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "ZTE"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
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
    return-object v0
.end method

.method public f()Lcom/zte/zdm/custom/selfregister/a;
    .locals 4

    new-instance v0, Lcom/zte/zdm/custom/selfregister/a;

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/b;->n:Ljava/lang/String;

    iget-short v2, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    iget-object v3, p0, Lcom/zte/zdm/custom/selfregister/b;->k:Lcom/zte/zdm/f/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zdm/custom/selfregister/a;-><init>(Ljava/lang/String;SLcom/zte/zdm/f/a/d;)V

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "selfRegistryRecordFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/b;->k:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/f/a/d;

    invoke-direct {v0}, Lcom/zte/zdm/f/a/d;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zdm/custom/selfregister/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/f/a/d;->a(Ljava/lang/String;)Z

    new-instance v1, Lcom/zte/zdm/custom/selfregister/a;

    iget-object v2, p0, Lcom/zte/zdm/custom/selfregister/b;->n:Ljava/lang/String;

    iget-short v3, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    invoke-direct {v1, v2, v3, v0}, Lcom/zte/zdm/custom/selfregister/a;-><init>(Ljava/lang/String;SLcom/zte/zdm/f/a/d;)V

    invoke-virtual {p0}, Lcom/zte/zdm/custom/selfregister/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zte/zdm/f/a/f;->a(Ljava/lang/String;Lcom/zte/zdm/custom/selfregister/a;)V

    invoke-virtual {p0}, Lcom/zte/zdm/custom/selfregister/b;->m()V

    return-void
.end method

.method public i()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin handleSelfRegistry,lock ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/custom/selfregister/b;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/f/a/h;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/zte/zdm/custom/selfregister/b;->r:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/b;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cannot send reg sms on Roaming"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/f/a/h;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/b;->u()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "the sim card is not ready"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/f/a/h;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/zte/zdm/f/a/f;->a(Lcom/zte/zdm/f/a/e;)Lcom/zte/zdm/f/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/f/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "send new self reg sms"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/custom/selfregister/b;->l()V

    invoke-virtual {v0}, Lcom/zte/zdm/f/a/f;->e()V

    goto :goto_0

    :cond_3
    const-string v0, "not need send self regist"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/f/a/h;->f(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lcom/zte/zdm/custom/selfregister/b;->o:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/custom/selfregister/b;->r:Z

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/custom/selfregister/b;->r:Z

    return-void
.end method
