.class Lcom/android/simmelock/LockSetting$3;
.super Ljava/lang/Object;
.source "LockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/LockSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 160
    iput-object p1, p0, Lcom/android/simmelock/LockSetting$3;->this$0:Lcom/android/simmelock/LockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$3;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v0, v0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$3;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v0, v0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$3;->this$0:Lcom/android/simmelock/LockSetting;

    iget-object v0, v0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$3;->this$0:Lcom/android/simmelock/LockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/LockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/LockSetting;->access$002(Lcom/android/simmelock/LockSetting;Z)Z

    .line 167
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 168
    return-void
.end method
