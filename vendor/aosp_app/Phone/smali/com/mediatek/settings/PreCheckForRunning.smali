.class public Lcom/mediatek/settings/PreCheckForRunning;
.super Ljava/lang/Object;
.source "PreCheckForRunning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/PreCheckForRunning$ServiceComplete;
    }
.end annotation


# static fields
.field public static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "Settings/PreCheckForRunning"


# instance fields
.field public mByPass:Z

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mServiceComplete:Lcom/mediatek/settings/PreCheckForRunning$ServiceComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mByPass:Z

    .line 24
    iput-object p1, p0, Lcom/mediatek/settings/PreCheckForRunning;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/mediatek/settings/PreCheckForRunning$ServiceComplete;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PreCheckForRunning$ServiceComplete;-><init>(Lcom/mediatek/settings/PreCheckForRunning;)V

    iput-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mServiceComplete:Lcom/mediatek/settings/PreCheckForRunning$ServiceComplete;

    .line 26
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/settings/PreCheckForRunning;->mServiceComplete:Lcom/mediatek/settings/PreCheckForRunning$ServiceComplete;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 27
    iget-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/settings/PreCheckForRunning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/PreCheckForRunning;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/PreCheckForRunning;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/PreCheckForRunning;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkToRun(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "slotId"
    .parameter "req"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mByPass:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/settings/PreCheckForRunning;->unLock(Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public deRegister()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/settings/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 78
    return-void
.end method

.method public isSimLocked(I)Z
    .locals 7
    .parameter "slot"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, isLocked:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 58
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 69
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    move v2, v4

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v6, :cond_3

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    .line 65
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Settings/PreCheckForRunning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "it"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/settings/PreCheckForRunning;->mIntent:Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public unLock(Landroid/content/Intent;II)V
    .locals 4
    .parameter "intent"
    .parameter "slotId"
    .parameter "req"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/PreCheckForRunning;->setIntent(Landroid/content/Intent;)V

    .line 50
    iget-object v1, p0, Lcom/mediatek/settings/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    move-result v0

    .line 51
    .local v0, r:I
    const-string v1, "Settings/PreCheckForRunning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The result of handleCellConn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
