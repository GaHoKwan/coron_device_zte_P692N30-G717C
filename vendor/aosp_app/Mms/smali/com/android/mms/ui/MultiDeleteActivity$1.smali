.class Lcom/android/mms/ui/MultiDeleteActivity$1;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->startMsgListQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 515
    .local v3, conversationUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$200(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsCompose;->isMassTextEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$200(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-interface {v0, v3, v1, v2}, Lcom/mediatek/mms/ext/IMmsCompose;->getConverationUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v0

    const/16 v1, 0x2537

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$300(Lcom/android/mms/ui/MultiDeleteActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method
