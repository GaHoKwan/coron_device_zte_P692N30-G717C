.class Lcom/android/mms/data/WorkingMessage$6;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncDeleteOldMmsDraft(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-wide p2, p0, Lcom/android/mms/data/WorkingMessage$6;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2636
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/mms/data/WorkingMessage$6;->val$threadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2637
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 2638
    .local v0, pduId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage$6;->val$threadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2640
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    #calls: Lcom/android/mms/data/WorkingMessage;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v2, v3, v1, v4}, Lcom/android/mms/data/WorkingMessage;->access$2200(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2642
    .end local v0           #pduId:Ljava/lang/String;
    .end local v1           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method
