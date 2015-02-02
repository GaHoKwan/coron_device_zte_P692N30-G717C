.class Lcom/android/simmelock/UnlockSetting$3;
.super Ljava/lang/Object;
.source "UnlockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/UnlockSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 166
    iput-object p1, p0, Lcom/android/simmelock/UnlockSetting$3;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 168
    const-string v0, "SIMMELOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query mPwdLeftChances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/simmelock/UnlockSetting$3;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I
    invoke-static {v2}, Lcom/android/simmelock/UnlockSetting;->access$200(Lcom/android/simmelock/UnlockSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$3;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget-object v0, v0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$3;->this$0:Lcom/android/simmelock/UnlockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/UnlockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/UnlockSetting;->access$002(Lcom/android/simmelock/UnlockSetting;Z)Z

    .line 172
    return-void
.end method
