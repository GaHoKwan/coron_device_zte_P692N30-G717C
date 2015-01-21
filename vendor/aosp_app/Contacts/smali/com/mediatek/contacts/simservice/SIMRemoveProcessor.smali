.class public Lcom/mediatek/contacts/simservice/SIMRemoveProcessor;
.super Lcom/mediatek/contacts/simservice/SIMProcessorBase;
.source "SIMRemoveProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SIMRemoveProcessor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSlotId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V
    .locals 0
    .parameter "context"
    .parameter "slotId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 18
    invoke-direct {p0, p3, p4}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;-><init>(Landroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .line 19
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMRemoveProcessor;->mContext:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/mediatek/contacts/simservice/SIMRemoveProcessor;->mSlotId:I

    .line 21
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "SIMRemoveProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doWork]cancel remove work. Thread id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMRemoveProcessor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/contacts/simservice/SIMRemoveProcessor;->mSlotId:I

    invoke-static {v0, v1}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->deleteSimContact(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    return v0
.end method
