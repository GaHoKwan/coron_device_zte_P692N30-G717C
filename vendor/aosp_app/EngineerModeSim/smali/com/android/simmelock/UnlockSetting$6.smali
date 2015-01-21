.class Lcom/android/simmelock/UnlockSetting$6;
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
    .line 210
    iput-object p1, p0, Lcom/android/simmelock/UnlockSetting$6;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$6;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget-object v0, v0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 214
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$6;->this$0:Lcom/android/simmelock/UnlockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/UnlockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/UnlockSetting;->access$002(Lcom/android/simmelock/UnlockSetting;Z)Z

    .line 215
    return-void
.end method
