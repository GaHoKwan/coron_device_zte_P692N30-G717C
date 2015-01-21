.class Lcom/mediatek/op/policy/DualClockImp$1;
.super Landroid/telephony/PhoneStateListener;
.source "DualClockImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op/policy/DualClockImp;->initPhoneStateListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/policy/DualClockImp;


# direct methods
.method constructor <init>(Lcom/mediatek/op/policy/DualClockImp;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/op/policy/DualClockImp$1;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    .line 108
    .local v0, inServiceState:I
    const-string v1, "DualClockImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneStateListener--onServiceStateChanged inServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/mediatek/op/policy/DualClockImp$1;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp$1;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    #calls: Lcom/mediatek/op/policy/DualClockImp;->isRoaming()Z
    invoke-static {v2}, Lcom/mediatek/op/policy/DualClockImp;->access$000(Lcom/mediatek/op/policy/DualClockImp;)Z

    move-result v2

    #calls: Lcom/mediatek/op/policy/DualClockImp;->udpateDualClock(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/op/policy/DualClockImp;->access$100(Lcom/mediatek/op/policy/DualClockImp;Z)V

    .line 113
    .end local v0           #inServiceState:I
    :cond_0
    return-void
.end method
