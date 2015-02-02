.class Lcom/mediatek/engineermode/swla/SwlaActivity$1;
.super Landroid/os/Handler;
.source "SwlaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/swla/SwlaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/swla/SwlaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 76
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    #getter for: Lcom/mediatek/engineermode/swla/SwlaActivity;->mAssertBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$000(Lcom/mediatek/engineermode/swla/SwlaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    #getter for: Lcom/mediatek/engineermode/swla/SwlaActivity;->mPaused:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$100(Lcom/mediatek/engineermode/swla/SwlaActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 83
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    const-string v2, "Assert Modem Success."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    const-string v2, "Assert Modem Failed."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    #getter for: Lcom/mediatek/engineermode/swla/SwlaActivity;->mEnableSwlaBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$200(Lcom/mediatek/engineermode/swla/SwlaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    #getter for: Lcom/mediatek/engineermode/swla/SwlaActivity;->mPaused:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$100(Lcom/mediatek/engineermode/swla/SwlaActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    const-string v2, "Enable Softwore LA Success"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    const-string v2, "Enable Softwore LA Failed."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
