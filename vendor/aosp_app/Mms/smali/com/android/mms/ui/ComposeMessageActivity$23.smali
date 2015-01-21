.class Lcom/android/mms/ui/ComposeMessageActivity$23;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3058
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 3061
    const-string v3, "com.android.mms.PROGRESS_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3062
    const-string v3, "token"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 3064
    .local v1, token:J
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 3081
    .end local v1           #token:J
    :cond_0
    :goto_0
    return-void

    .line 3068
    .restart local v1       #token:J
    :cond_1
    const-string v3, "progress"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3069
    .local v0, progress:I
    sparse-switch v0, :sswitch_data_0

    .line 3078
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    mul-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0

    .line 3071
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    goto :goto_0

    .line 3075
    :sswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    goto :goto_0

    .line 3069
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
