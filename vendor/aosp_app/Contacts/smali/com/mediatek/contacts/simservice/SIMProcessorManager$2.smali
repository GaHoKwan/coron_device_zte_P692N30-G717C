.class Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;
.super Ljava/lang/Object;
.source "SIMProcessorManager.java"

# interfaces
.implements Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simservice/SIMProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessorCompleted(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 136
    if-eqz p1, :cond_1

    .line 137
    const-string v2, "which_slot"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, slotId:I
    const-string v2, "work_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, workType:I
    const-string v2, "SIMProcessorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onProcessorCompleted] slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    #getter for: Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->access$100(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const-string v2, "SIMProcessorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onProcessorCompleted] remove import/remove processor slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    #getter for: Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mImportRemoveProcessors:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->access$100(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    #calls: Lcom/mediatek/contacts/simservice/SIMProcessorManager;->checkStopService()V
    invoke-static {v2}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->access$200(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)V

    .line 152
    .end local v0           #slotId:I
    .end local v1           #workType:I
    :cond_1
    :goto_0
    return-void

    .line 146
    .restart local v0       #slotId:I
    .restart local v1       #workType:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    #getter for: Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->access$300(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const-string v2, "SIMProcessorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onProcessorCompleted] remove other processor slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    #getter for: Lcom/mediatek/contacts/simservice/SIMProcessorManager;->mOtherProcessors:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->access$300(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$2;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    #calls: Lcom/mediatek/contacts/simservice/SIMProcessorManager;->checkStopService()V
    invoke-static {v2}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->access$200(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)V

    goto :goto_0
.end method
