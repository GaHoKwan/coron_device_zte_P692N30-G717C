.class Lcom/android/simmelock/NPAddLockSetting$9;
.super Landroid/os/Handler;
.source "NPAddLockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/NPAddLockSetting;
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
    .line 270
    iput-object p1, p0, Lcom/android/simmelock/NPAddLockSetting$9;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/simmelock/NPAddLockSetting$9;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/simmelock/NPAddLockSetting$9;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
