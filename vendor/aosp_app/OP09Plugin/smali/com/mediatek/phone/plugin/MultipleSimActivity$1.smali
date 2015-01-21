.class Lcom/mediatek/phone/plugin/MultipleSimActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "MultipleSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/plugin/MultipleSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$1;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$1;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged ans state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->access$300(Lcom/mediatek/phone/plugin/MultipleSimActivity;Ljava/lang/String;)V

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v0, "OP09MultipleSimActivity"

    const-string v1, "mPhoneStateListener else start"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$1;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    #calls: Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceEnableState()V
    invoke-static {v0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->access$100(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V

    .line 110
    const-string v0, "OP09MultipleSimActivity"

    const-string v1, "mPhoneStateListener else end"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
