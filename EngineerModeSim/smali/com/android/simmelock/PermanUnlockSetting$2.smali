.class Lcom/android/simmelock/PermanUnlockSetting$2;
.super Ljava/lang/Object;
.source "PermanUnlockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/PermanUnlockSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/PermanUnlockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/PermanUnlockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/simmelock/PermanUnlockSetting$2;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting$2;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    #getter for: Lcom/android/simmelock/PermanUnlockSetting;->mHandlerFinish:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/simmelock/PermanUnlockSetting;->access$000(Lcom/android/simmelock/PermanUnlockSetting;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x309

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method
