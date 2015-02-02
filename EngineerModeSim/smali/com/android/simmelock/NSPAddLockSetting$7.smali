.class Lcom/android/simmelock/NSPAddLockSetting$7;
.super Ljava/lang/Object;
.source "NSPAddLockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/NSPAddLockSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 260
    iput-object p1, p0, Lcom/android/simmelock/NSPAddLockSetting$7;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$7;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$100(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$7;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$500(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$7;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$600(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 266
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$7;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/NSPAddLockSetting;->access$302(Lcom/android/simmelock/NSPAddLockSetting;Z)Z

    .line 267
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$7;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 268
    return-void
.end method
