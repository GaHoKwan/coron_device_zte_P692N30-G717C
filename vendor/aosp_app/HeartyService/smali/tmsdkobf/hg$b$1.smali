.class Ltmsdkobf/hg$b$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hg$b;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pp:Ltmsdkobf/hg$b;


# direct methods
.method constructor <init>(Ltmsdkobf/hg$b;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 75
    iput-object p1, p0, Ltmsdkobf/hg$b$1;->pp:Ltmsdkobf/hg$b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    :try_start_0
    const-class v4, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v4}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v4

    check-cast v4, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastSentSms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v3

    .line 88
    .local v3, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    if-nez v3, :cond_0

    .line 90
    const-class v4, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v4}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v4

    check-cast v4, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastSentMms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v3

    .line 92
    :cond_0
    if-eqz v3, :cond_1

    .line 93
    iget-object v4, p0, Ltmsdkobf/hg$b$1;->pp:Ltmsdkobf/hg$b;

    invoke-static {v4}, Ltmsdkobf/hg$b;->a(Ltmsdkobf/hg$b;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 96
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    iget-object v4, p0, Ltmsdkobf/hg$b$1;->pp:Ltmsdkobf/hg$b;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ltmsdkobf/hg$b;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 102
    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    :cond_1
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
