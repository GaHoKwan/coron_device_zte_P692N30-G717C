.class Lcom/mediatek/email/emailvip/activity/VipRemoveDialog$1;
.super Ljava/lang/Object;
.source "VipRemoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    invoke-static {}, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->access$000()Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->access$000()Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 45
    :cond_0
    return-void
.end method
