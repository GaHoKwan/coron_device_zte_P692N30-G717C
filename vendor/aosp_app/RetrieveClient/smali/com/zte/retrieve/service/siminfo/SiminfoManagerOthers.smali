.class public Lcom/zte/retrieve/service/siminfo/SiminfoManagerOthers;
.super Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
.source "SiminfoManagerOthers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentificationforSimcard(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "bIdFlag"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 38
    return-void
.end method

.method public isDualSimCardMode()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isSimcardInsert(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const-string v0, "other platform isSimcardInsert"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->isSimcardInsert(Landroid/content/Context;)Z

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
    .line 53
    invoke-super/range {p0 .. p5}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 54
    return-void
.end method
