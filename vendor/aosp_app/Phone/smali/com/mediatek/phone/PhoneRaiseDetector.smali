.class public Lcom/mediatek/phone/PhoneRaiseDetector;
.super Ljava/lang/Object;
.source "PhoneRaiseDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/PhoneRaiseDetector$Listener;
    }
.end annotation


# static fields
.field private static final IDENTIFY_SUCCESS:I = 0x1

.field private static final MESSAGE_PHONE_ARAISE_IDENTIFY:I = 0x0

.field private static final MOTION_TYPE_RAISE_TO_HEAD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PhoneRaiseDetector"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsDetecting:Z

.field private mListener:Lcom/mediatek/phone/PhoneRaiseDetector$Listener;

.field private mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;


# direct methods
.method public constructor <init>(Lcom/mediatek/phone/PhoneRaiseDetector$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/mediatek/phone/PhoneRaiseDetector$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/PhoneRaiseDetector$1;-><init>(Lcom/mediatek/phone/PhoneRaiseDetector;)V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mHandler:Landroid/os/Handler;

    .line 49
    const-class v0, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mHandler:Landroid/os/Handler;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    iput-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    .line 51
    iget-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "PhoneRaiseDetector(), mVoicePhoneDetector is null"

    invoke-static {v0}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mListener:Lcom/mediatek/phone/PhoneRaiseDetector$Listener;

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-static {p0}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/PhoneRaiseDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mediatek/phone/PhoneRaiseDetector;->onPhoneRaised()V

    return-void
.end method

.method public static isValidCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 123
    const-string v0, "PhoneRaiseDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method private onPhoneRaised()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneRaised(), mIsDetecting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mListener:Lcom/mediatek/phone/PhoneRaiseDetector$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mListener:Lcom/mediatek/phone/PhoneRaiseDetector$Listener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mListener:Lcom/mediatek/phone/PhoneRaiseDetector$Listener;

    invoke-interface {v0}, Lcom/mediatek/phone/PhoneRaiseDetector$Listener;->onPhoneRaised()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/phone/PhoneRaiseDetector;->stopPhoneDetect()V

    .line 67
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mListener:Lcom/mediatek/phone/PhoneRaiseDetector$Listener;

    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    invoke-interface {v0}, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;->releaseSelf()V

    .line 106
    :cond_0
    return-void
.end method

.method public startPhoneDetect()V
    .locals 3

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPhoneDetect(), mVoicePhoneDetector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDetecting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    if-nez v1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    invoke-interface {v1}, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;->startPhoneDetection()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "startPhoneDetect exception"

    invoke-static {v1}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopPhoneDetect()V
    .locals 3

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPhoneDetect(), mVoicePhoneDetector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDetecting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mVoicePhoneDetector:Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    invoke-interface {v1}, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;->stopPhoneDetection()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/phone/PhoneRaiseDetector;->mIsDetecting:Z

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "stopPhoneDetect exception"

    invoke-static {v1}, Lcom/mediatek/phone/PhoneRaiseDetector;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
