.class Lcom/zte/retrieve/service/RetrieveLockView$1;
.super Landroid/os/Handler;
.source "RetrieveLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/RetrieveLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 186
    :pswitch_0
    const-string v0, "lockViewUpdateHandler:received call is ringing"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnOffhook:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$0(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$1(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "lockViewUpdateHandler:calling security number"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnOffhook:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$0(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$1(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 196
    :pswitch_2
    const-string v0, "lockViewUpdateHandler:idle state"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnOffhook:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$0(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$1(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$1;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$1(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
