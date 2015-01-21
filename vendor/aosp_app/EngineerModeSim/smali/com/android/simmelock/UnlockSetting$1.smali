.class Lcom/android/simmelock/UnlockSetting$1;
.super Ljava/lang/Object;
.source "UnlockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/UnlockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/UnlockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/UnlockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    const-string v0, "SIMMELOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->clickFlag:Z
    invoke-static {v2}, Lcom/android/simmelock/UnlockSetting;->access$000(Lcom/android/simmelock/UnlockSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->clickFlag:Z
    invoke-static {v0}, Lcom/android/simmelock/UnlockSetting;->access$000(Lcom/android/simmelock/UnlockSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    #setter for: Lcom/android/simmelock/UnlockSetting;->clickFlag:Z
    invoke-static {v0, v3}, Lcom/android/simmelock/UnlockSetting;->access$002(Lcom/android/simmelock/UnlockSetting;Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget-object v0, v0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget-object v0, v0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/UnlockSetting;->access$100(Lcom/android/simmelock/UnlockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 129
    .local v7, callback:Landroid/os/Message;
    const-string v0, "SIMMELOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[btnconfirm]simNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget v2, v2, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 131
    .local v8, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget v1, v1, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$1;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget-object v3, v3, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
