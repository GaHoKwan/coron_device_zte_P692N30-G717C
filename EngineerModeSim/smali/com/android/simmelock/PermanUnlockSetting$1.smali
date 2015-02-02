.class Lcom/android/simmelock/PermanUnlockSetting$1;
.super Landroid/os/Handler;
.source "PermanUnlockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/PermanUnlockSetting;
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
    .line 70
    iput-object p1, p0, Lcom/android/simmelock/PermanUnlockSetting$1;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 75
    :sswitch_0
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting$1;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    sget v1, Lcom/android/simmelock/PermanUnlockSetting;->DIALOG_PERMANUNLOCK:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 78
    :sswitch_1
    iget-object v0, p0, Lcom/android/simmelock/PermanUnlockSetting$1;->this$0:Lcom/android/simmelock/PermanUnlockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x29a -> :sswitch_0
        0x309 -> :sswitch_1
    .end sparse-switch
.end method
