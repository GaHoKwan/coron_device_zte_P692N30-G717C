.class final Lcom/nuance/dragon/toolkit/cloudservices/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:Ljava/lang/String;

.field private final e:S

.field private final f:Landroid/content/Context;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final i:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->f:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->d:Ljava/lang/String;

    int-to-short v0, p4

    iput-short v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->e:S

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->c:[B

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-object p7, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->h:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-object p9, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-object p10, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->j:Ljava/util/List;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/nuance/dragon/toolkit/cloudservices/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/c/c;

    invoke-direct {v0, p1}, Lcom/nuance/a/a/a/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nuance/a/a/a/c/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    move-object p7, v0

    goto :goto_1
.end method

.method private static a(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/a/a/a/a/a/a$a;
    .locals 4

    const/16 v3, 0x3e80

    const/16 v2, 0x1f40

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->Q:Lcom/nuance/a/a/a/a/a/a$a;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->S:Lcom/nuance/a/a/a/a/a/a$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->M:Lcom/nuance/a/a/a/a/a/a$a;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->N:Lcom/nuance/a/a/a/a/a/a$a;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v1, "unknown"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->c:[B

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->e:S

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "carrier"

    :cond_1
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->f:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->j:Ljava/util/List;

    return-object v0
.end method

.method public final j()Lcom/nuance/a/a/a/a/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->h:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/b;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/nuance/a/a/a/a/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/b;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method
