.class Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;
.super Landroid/os/Handler;
.source "MessageFileViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageFileViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageFileViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageFileViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageFileViewFragment;Lcom/android/email/activity/MessageFileViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageFileViewFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 335
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 343
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 346
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/email/activity/MessageFileViewFragment;->reportProgress(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageFileViewFragment;->access$300(Lcom/android/email/activity/MessageFileViewFragment;I)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 348
    const-string v1, "MessageFileViewFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgress progreee : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 351
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method
