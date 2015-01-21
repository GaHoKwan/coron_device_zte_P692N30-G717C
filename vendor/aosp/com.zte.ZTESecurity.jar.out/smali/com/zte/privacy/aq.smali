.class public Lcom/zte/privacy/aq;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEAppLockStrategyUtils"

.field private static final ir:Ljava/lang/String; = "zte.intent.extra.package"

.field private static final mC:I = 0x0

.field private static final mD:I = 0x1

.field private static final mE:Ljava/lang/String; = "zte.intent.action.APP_LOCK_EVENT"

.field private static final mF:Ljava/lang/String; = "zte.intent.extra.type"


# instance fields
.field private iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

.field private mB:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/privacy/aq;->mB:Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/privacy/aq;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iput-object p2, p0, Lcom/zte/privacy/aq;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "ZTEAppLockStrategyUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppLockEvent, type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.intent.action.APP_LOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "zte.intent.extra.type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string v1, "zte.intent.extra.package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/zte/privacy/aq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/aq;->mB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/aq;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zte/privacy/aq;->iq:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iget-object v1, p0, Lcom/zte/privacy/aq;->mB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/privacy/aq;->a(ILjava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/zte/privacy/aq;->mB:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/zte/privacy/aq;->mB:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/zte/privacy/aq;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
