.class Lcom/android/simmelock/NSPAddLockSetting$2;
.super Ljava/lang/Object;
.source "NSPAddLockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/NSPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/NSPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/NSPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x7

    const/4 v6, 0x4

    const/16 v4, 0x8

    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z
    invoke-static {v3}, Lcom/android/simmelock/NSPAddLockSetting;->access$300(Lcom/android/simmelock/NSPAddLockSetting;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$300(Lcom/android/simmelock/NSPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #setter for: Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/NSPAddLockSetting;->access$302(Lcom/android/simmelock/NSPAddLockSetting;Z)Z

    .line 145
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mMccMncHlrReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$200(Lcom/android/simmelock/NSPAddLockSetting;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$100(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v8, v0, :cond_1

    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$100(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mMccMncHlrReadSim:Z
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$200(Lcom/android/simmelock/NSPAddLockSetting;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mSimMccMncHlr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$400(Lcom/android/simmelock/NSPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mSimMccMncHlr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$400(Lcom/android/simmelock/NSPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v8, v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mSimMccMncHlr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$400(Lcom/android/simmelock/NSPAddLockSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$500(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$500(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v4, :cond_6

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$500(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/simmelock/NSPAddLockSetting;->access$600(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 154
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$700(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6f

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 157
    .local v7, callback:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/simmelock/NSPAddLockSetting;->access$500(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mMccMncHlrReadSim:Z
    invoke-static {v4}, Lcom/android/simmelock/NSPAddLockSetting;->access$200(Lcom/android/simmelock/NSPAddLockSetting;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->mSimMccMncHlr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/simmelock/NSPAddLockSetting;->access$400(Lcom/android/simmelock/NSPAddLockSetting;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/simmelock/SimLockBaseActivity;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting$2;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/simmelock/NSPAddLockSetting;->access$100(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
