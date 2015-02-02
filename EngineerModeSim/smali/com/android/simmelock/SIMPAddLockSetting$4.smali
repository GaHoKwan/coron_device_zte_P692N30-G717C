.class Lcom/android/simmelock/SIMPAddLockSetting$4;
.super Ljava/lang/Object;
.source "SIMPAddLockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/SIMPAddLockSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/SIMPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/SIMPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/simmelock/SIMPAddLockSetting$4;->this$0:Lcom/android/simmelock/SIMPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/simmelock/SIMPAddLockSetting$4;->this$0:Lcom/android/simmelock/SIMPAddLockSetting;

    #getter for: Lcom/android/simmelock/SIMPAddLockSetting;->etImsi:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SIMPAddLockSetting;->access$100(Lcom/android/simmelock/SIMPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/simmelock/SIMPAddLockSetting$4;->this$0:Lcom/android/simmelock/SIMPAddLockSetting;

    #getter for: Lcom/android/simmelock/SIMPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SIMPAddLockSetting;->access$500(Lcom/android/simmelock/SIMPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/simmelock/SIMPAddLockSetting$4;->this$0:Lcom/android/simmelock/SIMPAddLockSetting;

    #getter for: Lcom/android/simmelock/SIMPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/SIMPAddLockSetting;->access$600(Lcom/android/simmelock/SIMPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 213
    iget-object v0, p0, Lcom/android/simmelock/SIMPAddLockSetting$4;->this$0:Lcom/android/simmelock/SIMPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/SIMPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/SIMPAddLockSetting;->access$302(Lcom/android/simmelock/SIMPAddLockSetting;Z)Z

    .line 214
    return-void
.end method
