.class Lcom/android/simmelock/SPAddLockSetting$8;
.super Ljava/lang/Object;
.source "SPAddLockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/SPAddLockSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 300
    iput-object p1, p0, Lcom/android/simmelock/SPAddLockSetting$8;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$8;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$400(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$8;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$100(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$8;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$900(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$8;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SPAddLockSetting;->access$1000(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 307
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$8;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/SPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/SPAddLockSetting;->access$702(Lcom/android/simmelock/SPAddLockSetting;Z)Z

    .line 308
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$8;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 309
    return-void
.end method