.class Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)V
    .locals 0
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 786
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 787
    .local v7, threads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$300(Lcom/android/mms/ui/MultiDeleteActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->access$500(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mMaxSmsId:I
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->access$600(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)I

    move-result v3

    invoke-static {v0, v7, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->deleteIpMessage(Landroid/content/Context;Ljava/util/Collection;ZI)V

    .line 792
    const/16 v1, 0x709

    .line 793
    .local v1, token:I
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->access$500(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v3, v3, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$300(Lcom/android/mms/ui/MultiDeleteActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mMaxMmsId:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->access$700(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mMaxSmsId:I
    invoke-static {v6}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->access$600(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJII)V

    .line 795
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v2, v2, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$300(Lcom/android/mms/ui/MultiDeleteActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 796
    return-void
.end method
