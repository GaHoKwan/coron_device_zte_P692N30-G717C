.class Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;
.super Ljava/lang/Object;
.source "ModemTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v1, "0"

    const/4 v2, 0x0

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->sendATCommad(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V

    .line 260
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 261
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->setGprsTransferType(I)V
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->writePreferred(I)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v1, "1,0"

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->sendATCommad(Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V

    .line 273
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->setGprsTransferType(I)V
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    goto :goto_0

    .line 278
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->writePreferred(I)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 291
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->writePreferred(I)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 302
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->writePreferred(I)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v1, "5"

    const/4 v2, 0x6

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->sendATCommad(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->setGprsTransferType(I)V
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    goto/16 :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b02f1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
