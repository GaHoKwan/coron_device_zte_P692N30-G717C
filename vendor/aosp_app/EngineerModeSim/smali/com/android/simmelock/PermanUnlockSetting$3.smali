.class Lcom/android/simmelock/PermanUnlockSetting$3;
.super Ljava/lang/Object;
.source "PermanUnlockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/PermanUnlockSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/PermanUnlockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/PermanUnlockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/simmelock/PermanUnlockSetting$3;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting$3;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    #getter for: Lcom/android/simmelock/PermanUnlockSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/PermanUnlockSetting;->access$100(Lcom/android/simmelock/PermanUnlockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 111
    .local v7, callback:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 112
    .local v8, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting$3;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    iget v0, v0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/simmelock/PermanUnlockSetting$3;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    iget v1, v1, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v2, 0x4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 115
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting$3;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    return-void
.end method
