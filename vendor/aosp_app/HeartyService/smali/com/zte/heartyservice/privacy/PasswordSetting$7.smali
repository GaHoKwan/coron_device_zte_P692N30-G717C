.class final Lcom/zte/heartyservice/privacy/PasswordSetting$7;
.super Landroid/os/Handler;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1730
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 1733
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1742
    :goto_0
    return-void

    .line 1735
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1736
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1737
    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->checkHideState(Z)V
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3200(Z)V

    goto :goto_0

    .line 1733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
