.class public Lcom/android/deskclock/AlarmPhoneListenerService;
.super Landroid/app/Service;
.source "AlarmPhoneListenerService.java"


# static fields
.field private static final DELAY_START_ALARM:I = 0x384

.field private static final GIMINI_SIM_1:I = 0x0

.field private static final GIMINI_SIM_2:I = 0x1

.field private static final GIMINI_SIM_3:I = 0x2

.field private static final GIMINI_SIM_4:I = 0x3


# instance fields
.field private mAlarm:Lcom/android/deskclock/Alarm;

.field private mCurrentCallState:I

.field private mCurrentCallState1:I

.field private mCurrentCallState2:I

.field private mCurrentCallState3:I

.field private mCurrentCallState4:I

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/android/deskclock/AlarmPhoneListenerService$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmPhoneListenerService$1;-><init>(Lcom/android/deskclock/AlarmPhoneListenerService;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 108
    new-instance v0, Lcom/android/deskclock/AlarmPhoneListenerService$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmPhoneListenerService$2;-><init>(Lcom/android/deskclock/AlarmPhoneListenerService;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 143
    new-instance v0, Lcom/android/deskclock/AlarmPhoneListenerService$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmPhoneListenerService$3;-><init>(Lcom/android/deskclock/AlarmPhoneListenerService;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 161
    new-instance v0, Lcom/android/deskclock/AlarmPhoneListenerService$4;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmPhoneListenerService$4;-><init>(Lcom/android/deskclock/AlarmPhoneListenerService;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    .line 175
    new-instance v0, Lcom/android/deskclock/AlarmPhoneListenerService$5;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmPhoneListenerService$5;-><init>(Lcom/android/deskclock/AlarmPhoneListenerService;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmPhoneListenerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmPhoneListenerService;)Lcom/android/deskclock/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mAlarm:Lcom/android/deskclock/Alarm;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmPhoneListenerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/deskclock/AlarmPhoneListenerService;->sendStartAlarmBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmPhoneListenerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmPhoneListenerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState1:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/AlarmPhoneListenerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState2:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/AlarmPhoneListenerService;)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/AlarmPhoneListenerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState3:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/AlarmPhoneListenerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState4:I

    return v0
.end method

.method private sendStartAlarmBroadcast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, startAlarm:Landroid/content/Intent;
    const-string v1, "setNextAlert"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mAlarm:Lcom/android/deskclock/Alarm;

    iput-boolean v2, v1, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 278
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mAlarm:Lcom/android/deskclock/Alarm;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/deskclock/Alarm;->silent:Z

    .line 280
    const-string v1, "intent.extra.alarm"

    iget-object v2, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    const-string v1, "AlarmPhoneListenerService sendStartAlarmBroadcast"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 284
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/16 v3, 0x21

    .line 193
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 194
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 195
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 200
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 204
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 208
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 212
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 222
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 230
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 231
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 232
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 237
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 238
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 247
    const-string v1, "intent.extra.alarm"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/Alarm;

    iput-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 248
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mAlarm:Lcom/android/deskclock/Alarm;

    if-nez v1, :cond_0

    .line 249
    const-string v1, "AlarmKlaxon failed to parse the alarm from the intent"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    move v1, v2

    .line 270
    :goto_0
    return v1

    .line 254
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreciseCallState()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState:I

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCallStateGemini(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState1:I

    .line 259
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCallStateGemini(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState2:I

    .line 261
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCallStateGemini(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState3:I

    .line 263
    iget-object v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCallStateGemini(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState4:I

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",CallState1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",CallState2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v3

    .line 270
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch exception when getPreciseCallState: ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_1
.end method
