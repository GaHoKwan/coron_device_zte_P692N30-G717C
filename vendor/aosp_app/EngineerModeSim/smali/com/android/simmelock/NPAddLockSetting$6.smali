.class Lcom/android/simmelock/NPAddLockSetting$6;
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
    .line 232
    iput-object p1, p0, Lcom/android/simmelock/NPAddLockSetting$6;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$6;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    #getter for: Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NPAddLockSetting;->access$100(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$6;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/NPAddLockSetting;->access$302(Lcom/android/simmelock/NPAddLockSetting;Z)Z

    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 237
    return-void
.end method