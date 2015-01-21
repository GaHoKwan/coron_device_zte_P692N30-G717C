.class Lcom/android/simmelock/NPAddLockSetting$4;
.super Ljava/lang/Object;
.source "NPAddLockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/NPAddLockSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 209
    iput-object p1, p0, Lcom/android/simmelock/NPAddLockSetting$4;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$4;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$100(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$4;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$500(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$4;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$600(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$4;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/NPAddLockSetting;->access$302(Lcom/android/simmelock/NPAddLockSetting;Z)Z

    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 216
    return-void
.end method
