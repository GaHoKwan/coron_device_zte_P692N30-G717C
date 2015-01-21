.class public Lcom/mediatek/contacts/simservice/SIMProcessorManager;
.super Ljava/lang/Object;
.source "SIMProcessorManager.java"

# interfaces
.implements Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;,
        Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS_STOP_SEVICE:I = 0x7530

.field private static final MSG_SEND_STOP_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SIMProcessorManager"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simservice/SIMProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

.field private mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simservice/SIMProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessoListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;-><init>(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mProcessoListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;

    .line 40
    iput-object p2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-static {p0}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->setSIMProcessorState(Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;)V

    .line 44
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/simservice/SIMProcessorManager$1;-><init>(Lcom/mediatek/contacts/simservice/SIMProcessorManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->callStopService()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->checkStopService()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private callStopService()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "SIMProcessorManager"

    const-string v1, "[callStopService]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

    invoke-interface {v0}, Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;->onAllProcessorsFinished()V

    .line 171
    :cond_0
    return-void
.end method

.method private checkStopService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 156
    const-string v0, "SIMProcessorManager"

    const-string v1, "[checkStopService]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "SIMProcessorManager"

    const-string v1, "[checkStopService] send stop service message."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    :cond_0
    return-void
.end method

.method private createProcessor(Landroid/content/Context;IILandroid/content/Intent;)Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    .locals 9
    .parameter "context"
    .parameter "slotId"
    .parameter "workType"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    check-cast v6, Lcom/mediatek/contacts/simservice/SIMProcessorBase;

    .line 91
    .restart local v6       #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    const-string v0, "SIMProcessorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createProcessor] processor.getType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " workType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v6, :cond_2

    if-eq p3, v7, :cond_0

    if-ne p3, v8, :cond_2

    .line 94
    :cond_0
    invoke-virtual {v6}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->getType()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 95
    const-string v0, "SIMProcessorManager"

    const-string v1, "[createProcessor]has exist running processor, return null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 98
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->cancel(Z)Z

    .line 99
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mProcessoListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->createProcessor(Landroid/content/Context;IILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)Lcom/mediatek/contacts/simservice/SIMProcessorBase;

    move-result-object v6

    .line 105
    if-eq p3, v7, :cond_3

    if-ne p3, v8, :cond_4

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v0, v6

    .line 112
    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private createProcessor(Landroid/content/Context;IILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    .locals 3
    .parameter "context"
    .parameter "slotId"
    .parameter "workType"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 116
    const-string v1, "SIMProcessorManager"

    const-string v2, "[createProcessor] create new processor."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 120
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;

    .end local v0           #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    invoke-direct {v0, p1, p2, p4, p5}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;-><init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .line 129
    .restart local v0       #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 122
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMRemoveProcessor;

    .end local v0           #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    invoke-direct {v0, p1, p2, p4, p5}, Lcom/mediatek/contacts/simservice/SIMRemoveProcessor;-><init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .restart local v0       #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    goto :goto_0

    .line 123
    :cond_2
    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    .line 124
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;

    .end local v0           #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    invoke-direct {v0, p1, p2, p4, p5}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;-><init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .restart local v0       #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    goto :goto_0

    .line 125
    :cond_3
    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 126
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;

    .end local v0           #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    invoke-direct {v0, p1, p2, p4, p5}, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;-><init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .restart local v0       #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    goto :goto_0
.end method


# virtual methods
.method public handleProcessor(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "slotId"
    .parameter "workType"
    .parameter "intent"

    .prologue
    .line 60
    const-string v1, "SIMProcessorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleProcessor] slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->createProcessor(Landroid/content/Context;IILandroid/content/Intent;)Lcom/mediatek/contacts/simservice/SIMProcessorBase;

    move-result-object v0

    .line 62
    .local v0, processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "SIMProcessorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleProcessor]Add processor [slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to threadPool."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;->addProcessor(JLcom/android/contacts/vcard/ProcessorBase;)V

    .line 67
    :cond_0
    return-void
.end method

.method public isImportRemoveRunning(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;

    .line 72
    .local v0, processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    if-nez v0, :cond_1

    .line 73
    const-string v2, "SIMProcessorManager"

    const-string v3, "[isImportRemoveRunning]processor is null, return false."

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v0           #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    :cond_0
    :goto_0
    return v1

    .line 76
    .restart local v0       #processor:Lcom/mediatek/contacts/simservice/SIMProcessorBase;
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string v1, "SIMProcessorManager"

    const-string v2, "[isImportRemoveRunning]has exist running processor, return true."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x1

    goto :goto_0
.end method
