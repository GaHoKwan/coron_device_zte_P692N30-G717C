.class Lcom/android/mms/ui/CBMessageListActivity$4;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListActivity;->onDraftChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListActivity;

.field final synthetic val$hasDraft:Z

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$4;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/CBMessageListActivity$4;->val$threadId:J

    iput-boolean p4, p0, Lcom/android/mms/ui/CBMessageListActivity$4;->val$hasDraft:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 423
    const-string v0, "Mms/Cb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraftChanged: threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/CBMessageListActivity$4;->val$threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasDraft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/CBMessageListActivity$4;->val$hasDraft:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$4;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 426
    return-void
.end method
