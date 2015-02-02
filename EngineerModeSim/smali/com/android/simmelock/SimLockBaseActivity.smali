.class public Lcom/android/simmelock/SimLockBaseActivity;
.super Landroid/app/Activity;
.source "SimLockBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SIMMELOCK"


# instance fields
.field lockCategory:I

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field simNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    .line 166
    new-instance v0, Lcom/android/simmelock/SimLockBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/simmelock/SimLockBaseActivity$1;-><init>(Lcom/android/simmelock/SimLockBaseActivity;)V

    iput-object v0, p0, Lcom/android/simmelock/SimLockBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/android/simmelock/SimLockBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/android/simmelock/SimLockBaseActivity$2;-><init>(Lcom/android/simmelock/SimLockBaseActivity;)V

    iput-object v0, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method protected getLockName(I)Ljava/lang/String;
    .locals 1
    .parameter "locktype"

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 129
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_1
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_2
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_3
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_4
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
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

.method protected isSimReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    .line 141
    .local v0, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v2, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 145
    :cond_0
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 163
    const-string v0, "SIMMELOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "SIMNo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const-string v3, "LockCategory"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    .line 87
    :cond_0
    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    if-ne v3, v4, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->getLockName(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, lockName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/android/simmelock/SimLockBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "category"
    .parameter "op"
    .parameter "passwd"
    .parameter "mcc"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "callback"

    .prologue
    .line 155
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 156
    .local v8, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-eqz v8, :cond_0

    .line 157
    iget v0, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 160
    :cond_0
    return-void
.end method
