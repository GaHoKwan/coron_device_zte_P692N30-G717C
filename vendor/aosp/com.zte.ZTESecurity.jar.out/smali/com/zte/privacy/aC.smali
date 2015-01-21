.class public Lcom/zte/privacy/aC;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEAntiPhoneRecordingUtils"

.field private static final qA:I = 0x1

.field private static final qB:Ljava/lang/String; = "ANTI_PHONE_RECORDING"

.field private static final qC:Ljava/lang/String; = "anti_phone_recording_setting"

.field private static final qz:I


# instance fields
.field private iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/privacy/aC;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iput-object p2, p0, Lcom/zte/privacy/aC;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ac(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x2710

    if-gt p1, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/aC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :try_start_0
    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_1
    if-eqz v1, :cond_4

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private ds()I
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/aC;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method


# virtual methods
.method public U(I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aC;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getAdapter()Lcom/zte/privacy/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ar;->U(I)V

    return-void
.end method

.method public ad(I)Z
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/zte/privacy/aC;->ds()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/privacy/aC;->cB()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/privacy/aC;->ac(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/aC;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/aC;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->KillApplication(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zte/privacy/aC;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v1, v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendAntiPhoneRecordingBroadcast(Ljava/lang/String;)V

    const-string v1, "ZTEAntiPhoneRecordingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needRefusePhoneRecording enter , uid is :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isSystemApp is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zte/privacy/aC;->ac(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cA()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aC;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getAdapter()Lcom/zte/privacy/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/privacy/ar;->cA()V

    return-void
.end method

.method public cB()I
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aC;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getAdapter()Lcom/zte/privacy/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/privacy/ar;->cB()I

    move-result v0

    return v0
.end method
