.class Lcom/android/simmelock/LockSetting$1;
.super Ljava/lang/Object;
.source "LockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/LockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/LockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/LockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 108
    const-string v0, "SIMMELOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickFlag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    #getter for: Lcom/android/simmelock/LockSetting;->clickFlag:Z
    invoke-static {v3}, Lcom/android/simmelock/LockSetting;->access$000(Lcom/android/simmelock/LockSetting;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    #getter for: Lcom/android/simmelock/LockSetting;->clickFlag:Z
    invoke-static {v0}, Lcom/android/simmelock/LockSetting;->access$000(Lcom/android/simmelock/LockSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    #setter for: Lcom/android/simmelock/LockSetting;->clickFlag:Z
    invoke-static {v0, v2}, Lcom/android/simmelock/LockSetting;->access$002(Lcom/android/simmelock/LockSetting;Z)Z

    .line 114
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v0, v0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v0, v0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    if-ne v0, v5, :cond_4

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v0, v0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v1, v1, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    #getter for: Lcom/android/simmelock/LockSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/LockSetting;->access$100(Lcom/android/simmelock/LockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 131
    .local v7, callback:Landroid/os/Message;
    const-string v0, "SIMMELOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LockSetting]simNumber is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v3, v3, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 133
    .local v8, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget v1, v1, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    iget-object v3, p0, Lcom/android/simmelock/LockSetting$1;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v3, v3, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
