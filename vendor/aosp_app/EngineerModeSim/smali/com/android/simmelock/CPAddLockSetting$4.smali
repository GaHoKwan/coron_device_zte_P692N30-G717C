.class Lcom/android/simmelock/CPAddLockSetting$4;
.super Ljava/lang/Object;
.source "CPAddLockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/CPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/CPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/CPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 218
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z
    invoke-static {v2}, Lcom/android/simmelock/CPAddLockSetting;->access$1100(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1100(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v3}, Lcom/android/simmelock/CPAddLockSetting;->access$1102(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    .line 224
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$200(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v5, v0, :cond_1

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$200(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1200(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1200(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v5, v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1200(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$500(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v3, :cond_5

    .line 231
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid2ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$900(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$800(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v3, :cond_6

    .line 233
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 234
    :cond_6
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$500(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfe

    if-le v0, v1, :cond_8

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid2ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$900(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$800(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$800(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfe

    if-le v0, v1, :cond_a

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 240
    :cond_a
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$500(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$600(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 241
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid2ReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$900(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2Valid:Z
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1000(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 243
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 244
    :cond_c
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1300(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v8, :cond_d

    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1300(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_e

    .line 245
    :cond_d
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 246
    :cond_e
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1300(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/simmelock/CPAddLockSetting;->access$1400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 247
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 249
    :cond_f
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1500(Lcom/android/simmelock/CPAddLockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 250
    .local v7, callback:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const/4 v1, 0x3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/simmelock/CPAddLockSetting;->access$1300(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v4}, Lcom/android/simmelock/CPAddLockSetting;->access$200(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/simmelock/CPAddLockSetting;->access$1200(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid1ReadSim:Z
    invoke-static {v5}, Lcom/android/simmelock/CPAddLockSetting;->access$500(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/simmelock/CPAddLockSetting;->access$1600(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iget-object v6, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mGid2ReadSim:Z
    invoke-static {v6}, Lcom/android/simmelock/CPAddLockSetting;->access$900(Lcom/android/simmelock/CPAddLockSetting;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/simmelock/CPAddLockSetting;->access$1700(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lcom/android/simmelock/SimLockBaseActivity;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/simmelock/CPAddLockSetting;->access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_11
    iget-object v5, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/simmelock/CPAddLockSetting;->access$400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_12
    iget-object v6, p0, Lcom/android/simmelock/CPAddLockSetting$4;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/simmelock/CPAddLockSetting;->access$800(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method
