.class Lcom/android/simmelock/NPAddLockSetting$2;
.super Ljava/lang/Object;
.source "NPAddLockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/NPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/NPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/NPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x6

    const/4 v6, 0x4

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 138
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z
    invoke-static {v2}, Lcom/android/simmelock/NPAddLockSetting;->access$300(Lcom/android/simmelock/NPAddLockSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$300(Lcom/android/simmelock/NPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #setter for: Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v3}, Lcom/android/simmelock/NPAddLockSetting;->access$302(Lcom/android/simmelock/NPAddLockSetting;Z)Z

    .line 146
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$200(Lcom/android/simmelock/NPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$100(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v4, v0, :cond_1

    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$100(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$200(Lcom/android/simmelock/NPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$400(Lcom/android/simmelock/NPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$400(Lcom/android/simmelock/NPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v4, v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$400(Lcom/android/simmelock/NPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$500(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$500(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_6

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$500(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/simmelock/NPAddLockSetting;->access$600(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 155
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$700(Lcom/android/simmelock/NPAddLockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 158
    .local v7, callback:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/simmelock/NPAddLockSetting;->access$500(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v4}, Lcom/android/simmelock/NPAddLockSetting;->access$200(Lcom/android/simmelock/NPAddLockSetting;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/simmelock/NPAddLockSetting;->access$400(Lcom/android/simmelock/NPAddLockSetting;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/simmelock/SimLockBaseActivity;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting$2;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/simmelock/NPAddLockSetting;->access$100(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
