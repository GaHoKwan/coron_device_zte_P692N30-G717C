.class Lcom/android/simmelock/CPAddLockSetting$9;
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
    .line 355
    iput-object p1, p0, Lcom/android/simmelock/CPAddLockSetting$9;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 357
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 358
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$9;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/CPAddLockSetting;->access$1102(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    .line 359
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$9;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 360
    return-void
.end method
