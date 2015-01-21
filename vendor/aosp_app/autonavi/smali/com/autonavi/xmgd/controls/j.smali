.class public Lcom/autonavi/xmgd/controls/j;
.super Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/mobilebox/tts/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobilebox/tts/g;->d()V

    :cond_1
    invoke-static {v1}, Lcom/autonavi/xmgd/application/NaviApplication;->setHasPhoneCall(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setHasPhoneCall(Z)V

    goto :goto_0
.end method
