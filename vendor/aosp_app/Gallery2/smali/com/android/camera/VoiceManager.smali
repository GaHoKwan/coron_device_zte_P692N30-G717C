.class public Lcom/android/camera/VoiceManager;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VoiceManager$MainHandler;,
        Lcom/android/camera/VoiceManager$Listener;
    }
.end annotation


# static fields
.field private static final PLAY_VOICE_COMMAND:I = 0x67

.field private static final TAG:Ljava/lang/String; = "VoiceManager"

.field private static final UNKNOWN:I = -0x1

.field private static final USER_GUIDE_UPDATED:I = 0x64

.field private static final VOICE_COMMAND_CAPTURE:I = 0x3

.field private static final VOICE_COMMAND_CHEESE:I = 0x4

.field private static final VOICE_COMMAND_RECEIVE:I = 0x66

.field public static final VOICE_OFF:Ljava/lang/String; = "off"

.field public static final VOICE_ON:Ljava/lang/String; = "on"

.field private static final VOICE_SERVICE:Ljava/lang/String; = "voicecommand"

.field private static final VOICE_VALUE_UPDATED:I = 0x65


# instance fields
.field private mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mCommandId:I

.field private mCommandPath:[Ljava/lang/String;

.field private mCommandPathKeywords:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private mKeywords:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/VoiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mRegistered:Z

.field private mSettingManager:Lcom/android/camera/manager/SettingManager;

.field private mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartUpdate:Z

.field private mSwitchSublistShow:Z

.field private mVoiceCaptureSound:Landroid/media/SoundPool;

.field private mVoiceCaptureSoundId:I

.field private mVoiceCaptureStreamId:I

.field private mVoiceCommandId:I

.field private mVoiceCommandPath:Ljava/lang/String;

.field private mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field private mVoiceValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/camera/VoiceManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/VoiceManager$MainHandler;-><init>(Lcom/android/camera/VoiceManager;Lcom/android/camera/VoiceManager$1;)V

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "voice0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "voice1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mSoundMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mListeners:Ljava/util/List;

    .line 294
    new-instance v0, Lcom/android/camera/VoiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VoiceManager$1;-><init>(Lcom/android/camera/VoiceManager;)V

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    .line 360
    new-instance v0, Lcom/android/camera/VoiceManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VoiceManager$2;-><init>(Lcom/android/camera/VoiceManager;)V

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 77
    iput-object p1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingManager()Lcom/android/camera/manager/SettingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    .line 79
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VoiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->notifyUserGuideIfNeed()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/VoiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/VoiceManager;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/VoiceManager;->printExtraData(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/VoiceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/VoiceManager;->mKeywords:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/camera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/camera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/VoiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->notifyCachePathIfNeed()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VoiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->notifyStateChangedIfNeed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VoiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/VoiceManager;->mCommandId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/VoiceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/VoiceManager;->mCommandId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/VoiceManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/VoiceManager;->notifyCommandIfNeed(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VoiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCommandId:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/VoiceManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/VoiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/VoiceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/VoiceManager;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VoiceManager;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private bindVoiceService()V
    .locals 4

    .prologue
    .line 286
    const-string v1, "VoiceManager"

    const-string v2, "Bind voice service."

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, mVoiceServiceIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 292
    return-void
.end method

.method private disableVoice()V
    .locals 4

    .prologue
    .line 250
    const-string v0, "VoiceManager"

    const-string v1, "disableVoice()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VoiceManager;->unRegisterVoiceCommand(Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method private getUserVoiceGuide([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "voice"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, userGuide:Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lt v1, v3, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00c0

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p1, v5

    aput-object v4, v3, v5

    aget-object v4, p1, v6

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserVoiceGuide("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v0
.end method

.method private isVoiceEnabled()Z
    .locals 4

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v1

    .line 491
    .local v1, mSettingChecker:Lcom/android/camera/SettingChecker;
    if-eqz v1, :cond_0

    const-string v2, "on"

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const/4 v0, 0x1

    .line 497
    :cond_0
    return v0
.end method

.method private notifyCachePathIfNeed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 173
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCachePathIfNeed mCommandPathKeywords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    .line 176
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mSoundMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    invoke-virtual {v4, v1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private notifyCommandIfNeed(I)V
    .locals 5
    .parameter "commandId"

    .prologue
    const/4 v4, 0x3

    .line 158
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCommandIfNeed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    .line 161
    .local v0, mShutterManager:Lcom/android/camera/manager/ShutterManager;
    if-eq v4, p1, :cond_0

    const/4 v1, 0x4

    if-ne v1, p1, :cond_1

    .line 163
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->isVoiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VoiceManager;->mSwitchSublistShow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getViewState()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/android/camera/manager/ShutterManager;->performPhotoShutter()Z

    .line 170
    :cond_1
    return-void
.end method

.method private notifyStateChangedIfNeed()V
    .locals 5

    .prologue
    .line 144
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStateChangedIfNeed() mVoiceValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/VoiceManager$Listener;

    .line 146
    .local v1, listener:Lcom/android/camera/VoiceManager$Listener;
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/camera/VoiceManager$Listener;->onVoiceValueUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v1           #listener:Lcom/android/camera/VoiceManager$Listener;
    :cond_0
    const-string v2, "on"

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/VoiceManager;->enableVoice()V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 155
    :cond_2
    return-void
.end method

.method private notifyUserGuideIfNeed()V
    .locals 4

    .prologue
    .line 132
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUserGuideIfNeed() mKeywords="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mKeywords:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mKeywords:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mKeywords:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VoiceManager;->getUserVoiceGuide([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, userGuide:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->isVoiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->showToast(Ljava/lang/String;)V

    .line 141
    .end local v0           #userGuide:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private printExtraData(Landroid/os/Bundle;)V
    .locals 6
    .parameter "extraData"

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 457
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    .local v1, key:Ljava/lang/String;
    const-string v3, "VoiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "printExtraData() extraData["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 319
    iget-boolean v2, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z

    if-nez v2, :cond_1

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 323
    .local v1, errorid:I
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register voice Listener pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errorid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-nez v1, :cond_0

    .line 326
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1           #errorid:I
    :goto_0
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register voice listener end! mRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 328
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "VoiceManager"

    const-string v3, "Register voice Listener failure "

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 330
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z

    .line 332
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 333
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register voice Listener RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "VoiceManager"

    const-string v3, "App has register voice listener success"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 481
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 484
    :cond_0
    return-void
.end method

.method private startGetVoiceState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 271
    const-string v0, "VoiceManager"

    const-string v1, "startGetVoiceState()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->bindVoiceService()V

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VoiceManager;->registerVoiceCommand(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extra"

    .prologue
    .line 442
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_0
    :goto_0
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceCommand() mVoiceManagerService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private stopVoice()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 260
    const-string v0, "VoiceManager"

    const-string v1, "stopVoice()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VoiceManager;->unRegisterVoiceCommand(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->release()V

    .line 268
    :cond_0
    return-void
.end method

.method private unRegisterVoiceCommand(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 346
    .local v1, errorid:I
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister voice listener, errorid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez v1, :cond_0

    .line 348
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnRegister voice listener end! mRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister error in handler RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-boolean v5, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z

    .line 354
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/camera/VoiceManager$Listener;)Z
    .locals 4
    .parameter "l"

    .prologue
    .line 83
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addListener("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, added:Z
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    return v0
.end method

.method public enableVoice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 234
    const-string v0, "VoiceManager"

    const-string v1, "enableVoice()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->bindVoiceService()V

    .line 247
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VoiceManager;->registerVoiceCommand(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v3, v4}, Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getVoiceEntryValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mKeywords:[Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceValue() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    return-object v0
.end method

.method public playVoiceCommandById(I)V
    .locals 3
    .parameter "commandId"

    .prologue
    .line 469
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVoiceCommandById commandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput p1, p0, Lcom/android/camera/VoiceManager;->mVoiceCommandId:I

    .line 471
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    return-void
.end method

.method public playVoiceCommandSound(I)V
    .locals 7
    .parameter "voiceId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 125
    const-string v0, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVoiceCommandSound() voiceId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mSoundMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/camera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 127
    .local v1, voiceCommandId:I
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureStreamId:I

    .line 129
    return-void
.end method

.method public releaseSoundPool()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    .line 509
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/camera/VoiceManager$Listener;)Z
    .locals 3
    .parameter "l"

    .prologue
    .line 93
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setVoiceSublistShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/android/camera/VoiceManager;->mSwitchSublistShow:Z

    .line 466
    return-void
.end method

.method public setVoiceValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 194
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mVoiceValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    .line 197
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/android/camera/VoiceManager;->enableVoice()V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->disableVoice()V

    goto :goto_0
.end method

.method public startUpdateVoiceState()V
    .locals 3

    .prologue
    .line 211
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpdateVoiceState() mStartUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/VoiceManager;->mStartUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isVoiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-boolean v0, p0, Lcom/android/camera/VoiceManager;->mStartUpdate:Z

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->startGetVoiceState()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VoiceManager;->mStartUpdate:Z

    .line 218
    :cond_0
    return-void
.end method

.method public stopUpdateVoiceState()V
    .locals 3

    .prologue
    .line 221
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopUpdateVoiceState() mStartUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/VoiceManager;->mStartUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isVoiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-boolean v0, p0, Lcom/android/camera/VoiceManager;->mStartUpdate:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/camera/VoiceManager;->stopVoice()V

    .line 227
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VoiceManager;->mStartUpdate:Z

    .line 231
    :cond_0
    return-void
.end method

.method public unBindVoiceService()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/camera/VoiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/VoiceManager;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VoiceManager;->mRegistered:Z

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 517
    :cond_0
    return-void
.end method
