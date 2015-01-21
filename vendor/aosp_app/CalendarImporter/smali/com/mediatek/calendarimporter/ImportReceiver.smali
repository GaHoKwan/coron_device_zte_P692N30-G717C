.class public Lcom/mediatek/calendarimporter/ImportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImportReceiver.java"

# interfaces
.implements Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.mtk.intent.action.RESTORE"

.field private static final ACTION_RESULT:Ljava/lang/String; = "com.mtk.intent.action.RESTORE.RESULT"

.field private static final TAG:Ljava/lang/String; = "ImportReceiver"

.field private static final VCS_CONTENT:Ljava/lang/String; = "vcs_content"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

.field private mService:Lcom/mediatek/calendarimporter/service/VCalService;

.field private mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

.field private mVcsContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calendarimporter/ImportReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mContext:Landroid/content/Context;

    .line 74
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    .local v1, appContext:Landroid/content/Context;
    const-string v3, "ImportReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "com.mtk.intent.action.RESTORE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const-string v3, "vcs_content"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 79
    .local v2, vcs:[B
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    iput-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mVcsContent:Ljava/lang/String;

    .line 80
    const-string v3, "ImportReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive,file length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mVcsContent:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v3, Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-direct {v3, v1, p0}, Lcom/mediatek/calendarimporter/BindServiceHelper;-><init>(Landroid/content/Context;Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;)V

    iput-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    .line 82
    const-string v3, "ImportReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v3}, Lcom/mediatek/calendarimporter/BindServiceHelper;->onBindService()V

    .line 85
    .end local v2           #vcs:[B
    :cond_0
    return-void

    .line 79
    .restart local v2       #vcs:[B
    :cond_1
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public serviceConnected(Lcom/mediatek/calendarimporter/service/VCalService;)V
    .locals 5
    .parameter "service"

    .prologue
    .line 89
    const-string v2, "ImportReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver: service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 91
    new-instance v1, Lcom/mediatek/calendarimporter/ImportReceiver$1;

    invoke-direct {v1, p0}, Lcom/mediatek/calendarimporter/ImportReceiver$1;-><init>(Lcom/mediatek/calendarimporter/ImportReceiver;)V

    .line 118
    .local v1, handler:Landroid/os/Handler;
    :try_start_0
    new-instance v2, Lcom/mediatek/calendarimporter/service/ImportProcessor;

    iget-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v4, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mVcsContent:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/mediatek/calendarimporter/service/ImportProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

    invoke-virtual {v2, v3}, Lcom/mediatek/calendarimporter/service/VCalService;->tryExecuteProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "ImportReceiver"

    const-string v3, "Can not create the Processor for a empty VcsContent."

    invoke-static {v2, v3}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public serviceUnConnected()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/ImportProcessor;->cancel(Z)Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/ImportReceiver;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 130
    return-void
.end method
