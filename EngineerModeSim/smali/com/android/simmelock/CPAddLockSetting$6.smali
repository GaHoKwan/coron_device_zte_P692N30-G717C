.class Lcom/android/simmelock/CPAddLockSetting$6;
.super Ljava/lang/Object;
.source "CPAddLockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/CPAddLockSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 320
    iput-object p1, p0, Lcom/android/simmelock/CPAddLockSetting$6;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$6;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$6;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$800(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$6;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$6;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1300(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$6;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$1400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 328
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$6;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/CPAddLockSetting;->access$1102(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    .line 329
    return-void
.end method
