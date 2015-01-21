.class public abstract Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
.super Ljava/lang/Object;
.source "ISiminfoManager.java"


# instance fields
.field public simCardIdOne:Ljava/lang/String;

.field public simCardIdTwo:Ljava/lang/String;

.field public simCardType1:I

.field public simCardType2:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardType1:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardType2:I

    .line 14
    iput-object v1, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdOne:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdTwo:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getIdentificationforSimcard(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bIdFlag"

    .prologue
    const/4 v1, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 36
    new-instance v0, Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/PhoneInfo;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdOne:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdTwo:Ljava/lang/String;

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/PhoneInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdOne:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdTwo:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract isDualSimCardMode()Z
.end method

.method public isSimcardInsert(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "single card hasIccCard "

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/PhoneInfo;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 0
    .parameter "toNumber"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "simCardId"

    .prologue
    .line 50
    invoke-static {p1, p2, p3, p4}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 51
    return-void
.end method
