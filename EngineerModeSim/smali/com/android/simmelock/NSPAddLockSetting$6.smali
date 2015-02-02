.class Lcom/android/simmelock/NSPAddLockSetting$6;
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
    .line 250
    iput-object p1, p0, Lcom/android/simmelock/NSPAddLockSetting$6;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$6;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    #getter for: Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/NSPAddLockSetting;->access$100(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 254
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting$6;->this$0:Lcom/android/simmelock/NSPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/NSPAddLockSetting;->access$302(Lcom/android/simmelock/NSPAddLockSetting;Z)Z

    .line 255
    return-void
.end method
