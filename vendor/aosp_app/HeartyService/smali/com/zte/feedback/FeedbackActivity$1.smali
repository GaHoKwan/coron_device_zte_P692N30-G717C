.class Lcom/zte/feedback/FeedbackActivity$1;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/zte/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zte/feedback/FeedbackActivity$1;->this$0:Lcom/zte/feedback/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity$1;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/feedback/FeedbackActivity;->access$000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity$1;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/feedback/FeedbackActivity;->access$000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
