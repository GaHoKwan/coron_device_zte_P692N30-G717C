.class Ltmsdkobf/ha$b$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/ha$b;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oP:Ltmsdkobf/ha$b;


# direct methods
.method constructor <init>(Ltmsdkobf/ha$b;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Ltmsdkobf/ha$b$1;->oP:Ltmsdkobf/ha$b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x0

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 142
    return-void

    .line 123
    :pswitch_1
    new-instance v1, Ltmsdk/common/module/aresengine/CallLogEntity;

    invoke-direct {v1}, Ltmsdk/common/module/aresengine/CallLogEntity;-><init>()V

    .line 124
    .local v1, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    iput-object p2, v1, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    .line 125
    const/4 v2, 0x1

    iput v2, v1, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    .line 127
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 128
    .local v0, adapter:Ltmsdkobf/lm;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    iput-object v2, v1, Ltmsdk/common/module/aresengine/CallLogEntity;->fromCard:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Ltmsdkobf/ha$b$1;->oP:Ltmsdkobf/ha$b;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ltmsdkobf/ha$b;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {v0, v4}, Ltmsdkobf/lm;->bZ(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
