.class public Lcom/android/musicfx/ControlPanelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ControlPanelReceiver.java"


# static fields
.field public static final ATTACH_AUX_AUDIO_EFFECT:Ljava/lang/String; = "com.android.music.attachauxaudioeffect"

.field private static final AUX_AUDIO_EFFECT_ID:Ljava/lang/String; = "auxaudioeffectid"

.field public static final DETACH_AUX_AUDIO_EFFECT:Ljava/lang/String; = "com.android.music.detachauxaudioeffect"

.field private static final PRESET_REVERB_CURRENT_PRESET_DEFAULT:I = 0x0

.field private static final PRESET_REVERB_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicFXControlPanelReceiver"


# instance fields
.field private mAudioSession:I

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicfx/ControlPanelReceiver;->mPackageName:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/musicfx/ControlPanelReceiver;->mAudioSession:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/musicfx/ControlPanelReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/musicfx/ControlPanelReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/musicfx/ControlPanelReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/musicfx/ControlPanelReceiver;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/musicfx/ControlPanelReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/musicfx/ControlPanelReceiver;->mAudioSession:I

    return v0
.end method

.method private sendMessageToMusicAttachEffect(ZI)V
    .locals 3
    .parameter "enabled"
    .parameter "presetReverb"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.attachauxaudioeffect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "auxaudioeffectid"

    iget v2, p0, Lcom/android/musicfx/ControlPanelReceiver;->mAudioSession:I

    invoke-static {v2}, Lcom/android/musicfx/ControlPanelEffect;->getAuxiliaryEffectId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/android/musicfx/ControlPanelReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, -0x4

    const/4 v11, 0x0

    .line 43
    const-string v8, "MusicFXControlPanelReceiver"

    const-string v9, "onReceive"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 46
    :cond_0
    const-string v8, "MusicFXControlPanelReceiver"

    const-string v9, "Context or intent is null. Do nothing."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    iput-object p1, p0, Lcom/android/musicfx/ControlPanelReceiver;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, packageName:Ljava/lang/String;
    const-string v8, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 56
    .local v1, audioSession:I
    iput v1, p0, Lcom/android/musicfx/ControlPanelReceiver;->mAudioSession:I

    .line 57
    iput-object v4, p0, Lcom/android/musicfx/ControlPanelReceiver;->mPackageName:Ljava/lang/String;

    .line 59
    const-string v8, "MusicFXControlPanelReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v8, "MusicFXControlPanelReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v8, "MusicFXControlPanelReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Audio session: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-nez v4, :cond_3

    .line 65
    const-string v8, "MusicFXControlPanelReceiver"

    const-string v9, "Null package name"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    if-eq v1, v12, :cond_4

    if-gez v1, :cond_5

    .line 71
    :cond_4
    const-string v8, "MusicFXControlPanelReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid or missing audio session "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    :cond_5
    invoke-virtual {p1, v4, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    sget-object v9, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-short v6, v8

    .line 80
    .local v6, presetReverb:S
    const-string v8, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 83
    invoke-virtual {p1, v4, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    sget-object v9, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 90
    .local v3, isGlobalEnabled:Z
    const-string v8, "reset_reverb"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 91
    iget v8, p0, Lcom/android/musicfx/ControlPanelReceiver;->mAudioSession:I

    invoke-static {v8}, Lcom/android/musicfx/ControlPanelEffect;->resetPresetReverbInstances(I)V

    .line 93
    :cond_6
    invoke-static {p1, v4, v1}, Lcom/android/musicfx/ControlPanelEffect;->openSession(Landroid/content/Context;Ljava/lang/String;I)V

    .line 97
    invoke-direct {p0, v3, v6}, Lcom/android/musicfx/ControlPanelReceiver;->sendMessageToMusicAttachEffect(ZI)V

    .line 101
    .end local v3           #isGlobalEnabled:Z
    :cond_7
    const-string v8, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 103
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/musicfx/ControlPanelReceiver$1;

    invoke-direct {v9, p0}, Lcom/android/musicfx/ControlPanelReceiver$1;-><init>(Lcom/android/musicfx/ControlPanelReceiver;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_8
    const-string v8, "AudioEffect.ACTION_SET_PARAM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 116
    const-string v8, "AudioEffect.EXTRA_PARAM"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, param:Ljava/lang/String;
    const-string v8, "GLOBAL_ENABLED"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 119
    const-string v8, "AudioEffect.EXTRA_VALUE"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 120
    .local v7, value:Ljava/lang/Boolean;
    sget-object v8, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {p1, v4, v1, v8, v9}, Lcom/android/musicfx/ControlPanelEffect;->setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V

    .line 125
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {p0, v8, v6}, Lcom/android/musicfx/ControlPanelReceiver;->sendMessageToMusicAttachEffect(ZI)V

    .line 130
    .end local v5           #param:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Boolean;
    :cond_9
    const-string v8, "AudioEffect.ACTION_GET_PARAM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    const-string v8, "AudioEffect.EXTRA_PARAM"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5       #param:Ljava/lang/String;
    const-string v8, "GLOBAL_ENABLED"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 134
    sget-object v8, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {p1, v4, v1, v8}, Lcom/android/musicfx/ControlPanelEffect;->getParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)Ljava/lang/Boolean;

    move-result-object v7

    .line 136
    .restart local v7       #value:Ljava/lang/Boolean;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v2, extras:Landroid/os/Bundle;
    const-string v8, "GLOBAL_ENABLED"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver;->setResultExtras(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
