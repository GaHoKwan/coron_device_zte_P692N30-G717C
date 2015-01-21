.class Lcom/android/simmelock/SPAddLockSetting$3;
.super Ljava/lang/Object;
.source "SPAddLockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/SPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/SPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/SPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x6

    .line 179
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->clickFlag:Z
    invoke-static {v3}, Lcom/android/simmelock/SPAddLockSetting;->access$700(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->clickFlag:Z
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$700(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #setter for: Lcom/android/simmelock/SPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v5}, Lcom/android/simmelock/SPAddLockSetting;->access$702(Lcom/android/simmelock/SPAddLockSetting;Z)Z

    .line 187
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$200(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$100(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v6, v0, :cond_1

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$100(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$200(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$800(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$800(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v6, v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$800(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$500(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$400(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 194
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$500(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$400(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$400(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xfe

    if-le v0, v2, :cond_7

    .line 197
    :cond_6
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 198
    :cond_7
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$500(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$600(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$900(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v8, :cond_9

    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$900(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_a

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 202
    :cond_a
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$900(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$1000(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 205
    :cond_b
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$1100(Lcom/android/simmelock/SPAddLockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x78

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 206
    .local v7, callback:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$900(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$200(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$800(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$500(Lcom/android/simmelock/SPAddLockSetting;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$1200(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v6, 0x0

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/simmelock/SimLockBaseActivity;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$100(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_d
    iget-object v2, p0, Lcom/android/simmelock/SPAddLockSetting$3;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/simmelock/SPAddLockSetting;->access$400(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
