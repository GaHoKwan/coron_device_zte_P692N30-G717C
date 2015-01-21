.class public Lcom/mediatek/mms/op09/MmsFailedNotifyExt;
.super Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;
.source "MmsFailedNotifyExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsFailedNotifyExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsShowTransientFailure:Z

.field private mResources:Landroid/content/res/Resources;

.field private mToastHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;

    .line 54
    new-instance v0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;-><init>(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)V

    iput-object v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mContext:Landroid/content/Context;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mIsShowTransientFailure:Z

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getFailedNotificationEnabled()Z
    .locals 3

    .prologue
    .line 157
    const-string v0, "Mms/MmsFailedNotifyExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFailedNotificationEnabled() sIsShowTransientFailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mIsShowTransientFailure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mIsShowTransientFailure:Z

    return v0
.end method

.method public popupToast(ILjava/lang/String;)V
    .locals 3
    .parameter "reason"
    .parameter "statusText"

    .prologue
    .line 106
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "MmsFailedNotifyExt.popupToast()"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 151
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():default"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 110
    :pswitch_0
    if-nez p2, :cond_0

    .line 111
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast() statusText == null!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():REQUEST_RESPONSE_TEXT"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 121
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_1
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():DATA_OCCUPIED"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 126
    :pswitch_2
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():DATA_CONNECT_FAILED"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 131
    :pswitch_3
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():GATEWAY_NOT_RESPOND"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 136
    :pswitch_4
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():HTTP_ERROR"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 141
    :pswitch_5
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():CANCEL_DOWNLOAD"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 146
    :pswitch_6
    const-string v1, "Mms/MmsFailedNotifyExt"

    const-string v2, "popupToast():DISABLE_DELIVERY_REPORT"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setFailedNotificationEnabled(Z)V
    .locals 3
    .parameter "isShow"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mIsShowTransientFailure:Z

    .line 163
    const-string v0, "Mms/MmsFailedNotifyExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowFailedEnabled() sIsShowTransientFailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mIsShowTransientFailure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
