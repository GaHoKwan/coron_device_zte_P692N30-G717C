.class Ltmsdkobf/lv$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x14

    .line 821
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 822
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 852
    :goto_0
    return-void

    .line 824
    :pswitch_0
    invoke-static {}, Ltmsdkobf/lv;->gZ()V

    goto :goto_0

    .line 828
    :pswitch_1
    invoke-static {}, Ltmsdkobf/lv;->gY()V

    goto :goto_0

    .line 832
    :pswitch_2
    invoke-static {}, Ltmsdkobf/lv;->gW()V

    goto :goto_0

    .line 836
    :pswitch_3
    invoke-static {}, Ltmsdkobf/lv;->gX()V

    goto :goto_0

    .line 840
    :pswitch_4
    invoke-static {}, Ltmsdkobf/lv;->gV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    const-string v0, "UserLogCloudCmd"

    const-string v1, "NOT allow to upload auto"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 842
    invoke-static {}, Ltmsdkobf/lv;->hc()V

    goto :goto_0

    .line 847
    :cond_0
    invoke-static {}, Ltmsdkobf/lv;->hb()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 848
    invoke-static {}, Ltmsdkobf/lv;->hb()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
