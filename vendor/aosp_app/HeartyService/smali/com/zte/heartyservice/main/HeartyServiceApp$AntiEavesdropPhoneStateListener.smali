.class Lcom/zte/heartyservice/main/HeartyServiceApp$AntiEavesdropPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HeartyServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AntiEavesdropPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$AntiEavesdropPhoneStateListener;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp;Lcom/zte/heartyservice/main/HeartyServiceApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2374
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp$AntiEavesdropPhoneStateListener;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 2379
    packed-switch p1, :pswitch_data_0

    .line 2390
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 2391
    return-void

    .line 2381
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->closeAntiEavesdropTip()V

    goto :goto_0

    .line 2385
    :pswitch_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->showAntiEavesdropTip()V

    goto :goto_0

    .line 2379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
