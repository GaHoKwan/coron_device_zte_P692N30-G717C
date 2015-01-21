.class public Ltmsdkobf/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile qK:Z

.field private static volatile qL:Z

.field private static qM:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Ltmsdkobf/ie;->qK:Z

    .line 23
    sput-boolean v0, Ltmsdkobf/ie;->qL:Z

    .line 24
    new-instance v0, Ltmsdkobf/ie$1;

    invoke-direct {v0}, Ltmsdkobf/ie$1;-><init>()V

    sput-object v0, Ltmsdkobf/ie;->qM:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic cI()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Ltmsdkobf/ie;->qK:Z

    return v0
.end method

.method static synthetic cJ()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Ltmsdkobf/ie;->qM:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic ce()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Ltmsdkobf/ie;->qL:Z

    return v0
.end method

.method static synthetic l(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput-boolean p0, Ltmsdkobf/ie;->qL:Z

    return p0
.end method

.method static synthetic m(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput-boolean p0, Ltmsdkobf/ie;->qK:Z

    return p0
.end method

.method public static reportChannelInfo()V
    .locals 4

    .prologue
    .line 46
    sget-boolean v1, Ltmsdkobf/ie;->qK:Z

    if-eqz v1, :cond_1

    .line 81
    .local v0, properties:Ltmsdkobf/kf;
    :cond_0
    :goto_0
    return-void

    .line 49
    .end local v0           #properties:Ltmsdkobf/kf;
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Ltmsdkobf/ie;->qK:Z

    .line 50
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "tms"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v0       #properties:Ltmsdkobf/kf;
    const-string v1, "reportlc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/kf;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v1

    new-instance v2, Ltmsdkobf/ie$2;

    invoke-direct {v2, v0}, Ltmsdkobf/ie$2;-><init>(Ltmsdkobf/kf;)V

    const-string v3, "reportChannelInfoThread"

    invoke-virtual {v1, v2, v3}, Ltmsdkobf/ij;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method
