.class Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;
.super Landroid/os/Handler;
.source "SlotSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/SlotSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 170
    const-string v1, "SlotSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage--mIsSIMRadioSwitching = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z
    invoke-static {v3}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$000(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$000(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$002(Lcom/mediatek/settings/plugin/SlotSettingsFragment;Z)Z

    .line 175
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$100(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$100(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$100(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$100(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 184
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 185
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 186
    const-string v1, "SlotSettingsFragment"

    const-string v2, "EVENT_AUTO_SELECT_DONE network selection: failed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsForeground:Z
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$200(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$300(Lcom/mediatek/settings/plugin/SlotSettingsFragment;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :cond_2
    const-string v1, "SlotSettingsFragment"

    const-string v2, "EVENT_AUTO_SELECT_DONE network selection: succeed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsForeground:Z
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$200(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #calls: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->displayNetworkSelectionSucceeded()V
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$400(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
