.class public Lcom/android/musicfx/ControlPanelEffect;
.super Ljava/lang/Object;
.source "ControlPanelEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicfx/ControlPanelEffect$1;,
        Lcom/android/musicfx/ControlPanelEffect$Key;,
        Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    }
.end annotation


# static fields
.field private static final BASS_BOOST_ENABLED_DEFAULT:Z = true

.field private static final BASS_BOOST_STRENGTH_DEFAULT:I = 0x29b

.field private static final DUMMY_ARGUMENT:I = -0x1

.field private static final EQUALIZER_BAND_LEVEL_RANGE_DEFAULT:[S = null

.field private static final EQUALIZER_CENTER_FREQ_DEFAULT:[I = null

.field private static final EQUALIZER_ENABLED_DEFAULT:Z = true

.field private static final EQUALIZER_NUMBER_BANDS_DEFAULT:S = 0x5s

.field private static final EQUALIZER_NUMBER_PRESETS_DEFAULT:S = 0x0s

.field private static final EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S = null

.field private static final EQUALIZER_PRESET_NAME_DEFAULT:Ljava/lang/String; = "Preset"

.field private static final EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S = null

.field private static final EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S = null

.field static final GLOBAL_ENABLED_DEFAULT:Z = false

.field private static final HASHMAP_CONCURRENCY_LEVEL:I = 0x2

.field private static final HASHMAP_INITIAL_CAPACITY:I = 0x10

.field private static final HASHMAP_LOAD_FACTOR:F = 0.75f

.field private static final PRESET_EQUALIZER_CURRENT_PRESET_DEFAULT:I = 0x3

.field private static final PRESET_REVERB_CURRENT_PRESET_DEFAULT:I = 0x0

.field private static final PRESET_REVERB_ENABLED_DEFAULT:Z = false

.field private static final PRIORITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicFXControlPanelEffect"

.field private static final VIRTUALIZER_ENABLED_DEFAULT:Z = true

.field private static final VIRTUALIZER_STRENGTH_DEFAULT:I = 0x3e8

.field private static final mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/BassBoost;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBooleanParameter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBooleanStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mEQBandLevelRange:[S

.field private static mEQCenterFreq:[I

.field private static final mEQInitLock:Ljava/lang/Object;

.field private static final mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/Equalizer;",
            ">;"
        }
    .end annotation
.end field

.field private static mEQNumBands:S

.field private static mEQNumPresets:S

.field private static mEQPresetNames:[Ljava/lang/String;

.field private static mEQPresetOpenSLESBandLevel:[[S

.field private static final mIntParameter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIntStatus:Ljava/util/HashMap;
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

.field private static mIsEQInitialized:Z

.field private static mNeedSaved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/PresetReverb;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/Virtualizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x5

    const/high16 v1, 0x3f40

    const/4 v2, 0x2

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mBooleanParameter:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/musicfx/ControlPanelEffect$Key;->values()[Lcom/android/musicfx/ControlPanelEffect$Key;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    .line 144
    new-array v0, v2, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_BAND_LEVEL_RANGE_DEFAULT:[S

    .line 145
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_CENTER_FREQ_DEFAULT:[I

    .line 147
    new-array v0, v3, [S

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    .line 148
    new-array v0, v3, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    .line 149
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    .line 152
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_BAND_LEVEL_RANGE_DEFAULT:[S

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    .line 153
    sput-short v3, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 154
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_CENTER_FREQ_DEFAULT:[I

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 155
    sput-short v5, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 156
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 158
    sput-boolean v5, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQInitLock:Ljava/lang/Object;

    return-void

    .line 144
    :array_0
    .array-data 0x2
        0x24t 0xfat
        0xdct 0x5t
    .end array-data

    .line 145
    :array_1
    .array-data 0x4
        0x60t 0xeat 0x0t 0x0t
        0x70t 0x82t 0x3t 0x0t
        0xb0t 0xe2t 0xdt 0x0t
        0x80t 0xeet 0x36t 0x0t
        0x80t 0x9ft 0xd5t 0x0t
    .end array-data

    .line 147
    :array_2
    .array-data 0x2
        0x0t 0x0t
        0x20t 0x3t
        0x90t 0x1t
        0x64t 0x0t
        0xe8t 0x3t
    .end array-data

    .line 148
    nop

    :array_3
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static closeSession(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"

    .prologue
    .line 1475
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeSession("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/PresetReverb;

    .line 1479
    .local v2, presetReverb:Landroid/media/audiofx/PresetReverb;
    if-eqz v2, :cond_0

    .line 1480
    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 1483
    :cond_0
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/Equalizer;

    .line 1484
    .local v1, equalizer:Landroid/media/audiofx/Equalizer;
    if-eqz v1, :cond_1

    .line 1485
    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 1488
    :cond_1
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/BassBoost;

    .line 1489
    .local v0, bassBoost:Landroid/media/audiofx/BassBoost;
    if-eqz v0, :cond_2

    .line 1490
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 1493
    :cond_2
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiofx/Virtualizer;

    .line 1494
    .local v3, virtualizer:Landroid/media/audiofx/Virtualizer;
    if-eqz v3, :cond_3

    .line 1495
    invoke-virtual {v3}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 1498
    :cond_3
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    return-void
.end method

.method public static getAuxiliaryEffectId(I)I
    .locals 6
    .parameter "audioSession"

    .prologue
    .line 1664
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;

    move-result-object v2

    .line 1665
    .local v2, presetReverb:Landroid/media/audiofx/PresetReverb;
    const/4 v1, -0x1

    .line 1666
    .local v1, id:I
    if-nez v2, :cond_0

    .line 1667
    const/4 v3, -0x1

    .line 1676
    :goto_0
    return v3

    .line 1670
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getId()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1675
    :goto_1
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAuxiliaryEffectId: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 1676
    goto :goto_0

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, ex:Ljava/lang/IllegalStateException;
    const/4 v1, -0x1

    .line 1673
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAuxiliaryEffectId throw IllegalStateException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;
    .locals 7
    .parameter "audioSession"

    .prologue
    .line 1564
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffectNoCreate(I)Landroid/media/audiofx/BassBoost;

    move-result-object v1

    .line 1565
    .local v1, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-nez v1, :cond_0

    .line 1567
    :try_start_0
    new-instance v3, Landroid/media/audiofx/BassBoost;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    .line 1568
    .local v3, newBassBoostEffect:Landroid/media/audiofx/BassBoost;
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/audiofx/BassBoost;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1569
    if-nez v1, :cond_0

    .line 1571
    move-object v1, v3

    .line 1581
    .end local v3           #newBassBoostEffect:Landroid/media/audiofx/BassBoost;
    :cond_0
    :goto_0
    return-object v1

    .line 1573
    :catch_0
    move-exception v2

    .line 1574
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BassBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1575
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1576
    .local v2, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BassBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1577
    .end local v2           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1578
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BassBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getBassBoostEffectNoCreate(I)Landroid/media/audiofx/BassBoost;
    .locals 2
    .parameter "audioSession"

    .prologue
    .line 1560
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/BassBoost;

    return-object v0
.end method

.method public static getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .locals 1
    .parameter "audioSession"

    .prologue
    .line 420
    const/4 v0, -0x4

    if-ne p0, v0, :cond_0

    .line 421
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_PREFERENCES:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    .line 423
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    goto :goto_0
.end method

.method private static getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;
    .locals 7
    .parameter "audioSession"

    .prologue
    .line 1596
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffectNoCreate(I)Landroid/media/audiofx/Equalizer;

    move-result-object v2

    .line 1597
    .local v2, equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-nez v2, :cond_0

    .line 1599
    :try_start_0
    new-instance v3, Landroid/media/audiofx/Equalizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    .line 1600
    .local v3, newEqualizerEffect:Landroid/media/audiofx/Equalizer;
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/audiofx/Equalizer;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1601
    if-nez v2, :cond_0

    .line 1603
    move-object v2, v3

    .line 1613
    .end local v3           #newEqualizerEffect:Landroid/media/audiofx/Equalizer;
    :cond_0
    :goto_0
    return-object v2

    .line 1605
    :catch_0
    move-exception v1

    .line 1606
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Equalizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1607
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1608
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Equalizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1609
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v1

    .line 1610
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Equalizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getEqualizerEffectNoCreate(I)Landroid/media/audiofx/Equalizer;
    .locals 2
    .parameter "audioSession"

    .prologue
    .line 1593
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Equalizer;

    return-object v0
.end method

.method public static getParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)Ljava/lang/Boolean;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 640
    .local v1, value:Z
    :try_start_0
    sget-object v2, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 645
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MusicFXControlPanelEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameterBoolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 968
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)I
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)I
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getParameterInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 940
    const/4 v1, 0x0

    .line 947
    .local v1, value:I
    :try_start_0
    sget-object v2, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 948
    const-string v2, "MusicFXControlPanelEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameterInt: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return v1

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MusicFXControlPanelEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameterInt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 1024
    const/4 v2, 0x0

    .line 1027
    .local v2, intArray:[I
    :try_start_0
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1048
    :pswitch_0
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParameterIntArray: Unknown/unsupported key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v4, 0x0

    .line 1063
    :goto_0
    return-object v4

    .line 1029
    :pswitch_1
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 1052
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1055
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v1

    .line 1056
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParameterIntArray: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1043
    .end local v1           #i:I
    :pswitch_2
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1044
    .local v3, numBands:I
    new-array v2, v3, [I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    goto :goto_1

    .line 1059
    .end local v3           #numBands:I
    :catch_0
    move-exception v0

    .line 1060
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParameterIntArray: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    move-object v4, v2

    .line 1063
    goto/16 :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getParameterString(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 1105
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterString(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 1078
    const-string v2, ""

    .line 1080
    .local v2, value:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1084
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1090
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParameterString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;
    .locals 7
    .parameter "audioSession"

    .prologue
    .line 1628
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiofx/PresetReverb;

    .line 1629
    .local v3, presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    if-nez v3, :cond_0

    .line 1635
    :try_start_0
    new-instance v2, Landroid/media/audiofx/PresetReverb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/media/audiofx/PresetReverb;-><init>(II)V

    .line 1637
    .local v2, newPresetReverbEffect:Landroid/media/audiofx/PresetReverb;
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/audiofx/PresetReverb;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1639
    if-nez v3, :cond_0

    .line 1641
    move-object v3, v2

    .line 1651
    .end local v2           #newPresetReverbEffect:Landroid/media/audiofx/PresetReverb;
    :cond_0
    :goto_0
    return-object v3

    .line 1643
    :catch_0
    move-exception v1

    .line 1644
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PresetReverb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1645
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1646
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PresetReverb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1647
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v1

    .line 1648
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PresetReverb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getReverbEnabled(I)Z
    .locals 6
    .parameter "audioSession"

    .prologue
    .line 1687
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;

    move-result-object v2

    .line 1688
    .local v2, presetReverb:Landroid/media/audiofx/PresetReverb;
    const/4 v0, 0x0

    .line 1689
    .local v0, enabled:Z
    if-nez v2, :cond_0

    .line 1690
    const/4 v3, 0x0

    .line 1699
    :goto_0
    return v3

    .line 1693
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1698
    :goto_1
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getReverbEnabled: enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 1699
    goto :goto_0

    .line 1694
    :catch_0
    move-exception v1

    .line 1695
    .local v1, ex:Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 1696
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getReverbEnabled throw IllegalStateException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;
    .locals 7
    .parameter "audioSession"

    .prologue
    .line 1530
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffectNoCreate(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v3

    .line 1531
    .local v3, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-nez v3, :cond_0

    .line 1533
    :try_start_0
    new-instance v2, Landroid/media/audiofx/Virtualizer;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    .line 1534
    .local v2, newVirtualizerEffect:Landroid/media/audiofx/Virtualizer;
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1536
    if-nez v3, :cond_0

    .line 1538
    move-object v3, v2

    .line 1548
    .end local v2           #newVirtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_0
    :goto_0
    return-object v3

    .line 1540
    :catch_0
    move-exception v1

    .line 1541
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Virtualizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1542
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1543
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Virtualizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1544
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v1

    .line 1545
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Virtualizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getVirtualizerEffectNoCreate(I)Landroid/media/audiofx/Virtualizer;
    .locals 2
    .parameter "audioSession"

    .prologue
    .line 1527
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    return-object v0
.end method

.method public static initEffectsPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 33
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"

    .prologue
    .line 178
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 180
    .local v20, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 181
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-result-object v6

    .line 186
    .local v6, controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    :try_start_0
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 188
    .local v17, isGlobalEnabled:Z
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v27, "MusicFXControlPanelEffect"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isGlobalEnabled = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 198
    .local v18, isVIEnabled:Z
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3e8

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 200
    .local v24, vIStrength:I
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    new-instance v19, Landroid/media/MediaPlayer;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaPlayer;-><init>()V

    .line 204
    .local v19, mediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->getAudioSessionId()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 205
    .local v23, session:I
    const/16 v25, 0x0

    .line 207
    .local v25, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :try_start_1
    new-instance v26, Landroid/media/audiofx/Virtualizer;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/media/audiofx/Virtualizer;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v25           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    .local v26, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :try_start_2
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength_supported:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Landroid/media/audiofx/Virtualizer;->getStrengthSupported()Z

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 211
    if-eqz v26, :cond_0

    .line 212
    :try_start_3
    const-string v27, "MusicFXControlPanelEffect"

    const-string v28, "Releasing dummy Virtualizer effect"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual/range {v26 .. v26}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 215
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 221
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 227
    .local v14, isBBEnabled:Z
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x29b

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 229
    .local v3, bBStrength:I
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v11, v0, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v11, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect;->mEQInitLock:Ljava/lang/Object;

    monitor-enter v29
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 241
    :try_start_4
    sget-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v27, :cond_10

    .line 242
    new-instance v19, Landroid/media/MediaPlayer;

    .end local v19           #mediaPlayer:Landroid/media/MediaPlayer;
    invoke-direct/range {v19 .. v19}, Landroid/media/MediaPlayer;-><init>()V

    .line 243
    .restart local v19       #mediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->getAudioSessionId()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v23

    .line 244
    const/4 v12, 0x0

    .line 246
    .local v12, equalizerEffect:Landroid/media/audiofx/Equalizer;
    :try_start_5
    const-string v27, "MusicFXControlPanelEffect"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Creating dummy EQ effect on session "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v13, Landroid/media/audiofx/Equalizer;

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/media/audiofx/Equalizer;-><init>(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 249
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .local v13, equalizerEffect:Landroid/media/audiofx/Equalizer;
    :try_start_6
    invoke-virtual {v13}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v27

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    .line 250
    invoke-virtual {v13}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v27

    sput-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 251
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 252
    const/4 v4, 0x0

    .local v4, band:S
    :goto_0
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v27

    if-ge v4, v0, :cond_2

    .line 253
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    invoke-virtual {v13, v4}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v28

    aput v28, v27, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 252
    add-int/lit8 v27, v4, 0x1

    move/from16 v0, v27

    int-to-short v4, v0

    goto :goto_0

    .line 211
    .end local v3           #bBStrength:I
    .end local v4           #band:S
    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v14           #isBBEnabled:Z
    .end local v26           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    .restart local v25       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :catchall_0
    move-exception v27

    :goto_1
    if-eqz v25, :cond_1

    .line 212
    :try_start_7
    const-string v28, "MusicFXControlPanelEffect"

    const-string v29, "Releasing dummy Virtualizer effect"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual/range {v25 .. v25}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 215
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    throw v27
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 406
    .end local v17           #isGlobalEnabled:Z
    .end local v18           #isVIEnabled:Z
    .end local v19           #mediaPlayer:Landroid/media/MediaPlayer;
    .end local v23           #session:I
    .end local v24           #vIStrength:I
    .end local v25           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :catch_0
    move-exception v7

    .line 407
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v27, "MusicFXControlPanelEffect"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initEffectsPreferences: processingEnabled: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v7           #e:Ljava/lang/RuntimeException;
    :goto_2
    return-void

    .line 255
    .restart local v3       #bBStrength:I
    .restart local v4       #band:S
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v14       #isBBEnabled:Z
    .restart local v17       #isGlobalEnabled:Z
    .restart local v18       #isVIEnabled:Z
    .restart local v19       #mediaPlayer:Landroid/media/MediaPlayer;
    .restart local v23       #session:I
    .restart local v24       #vIStrength:I
    .restart local v26       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_2
    :try_start_8
    invoke-virtual {v13}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v27

    sput-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 256
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    .line 257
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[S

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 258
    const/16 v21, 0x0

    .local v21, preset:S
    :goto_3
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 259
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v21

    .line 260
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 261
    const/4 v4, 0x0

    :goto_4
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v27

    if-ge v4, v0, :cond_3

    .line 262
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    aget-object v27, v27, v21

    invoke-virtual {v13, v4}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v28

    aput-short v28, v27, v4

    .line 261
    add-int/lit8 v27, v4, 0x1

    move/from16 v0, v27

    int-to-short v4, v0

    goto :goto_4

    .line 258
    :cond_3
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_3

    .line 267
    :cond_4
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    .line 277
    if-eqz v13, :cond_5

    .line 278
    :try_start_9
    const-string v27, "MusicFXControlPanelEffect"

    const-string v28, "Releasing dummy EQ effect"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v13}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 281
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 284
    sget-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v27, :cond_10

    .line 285
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[S

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 286
    const/16 v21, 0x0

    :goto_5
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 288
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Preset"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v21

    .line 291
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 292
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v28, v28, v21

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v28

    aput-object v28, v27, v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 286
    :cond_6
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_5

    .line 268
    .end local v4           #band:S
    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v21           #preset:S
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_1
    move-exception v7

    .line 269
    .local v7, e:Ljava/lang/IllegalStateException;
    :goto_6
    :try_start_a
    const-string v27, "MusicFXControlPanelEffect"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Equalizer: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 277
    if-eqz v12, :cond_7

    .line 278
    :try_start_b
    const-string v27, "MusicFXControlPanelEffect"

    const-string v28, "Releasing dummy EQ effect"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v12}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 281
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 284
    sget-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v27, :cond_10

    .line 285
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[S

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 286
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_7
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 288
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Preset"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v21

    .line 291
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 292
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v28, v28, v21

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v28

    aput-object v28, v27, v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 286
    :cond_8
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_7

    .line 270
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v21           #preset:S
    :catch_2
    move-exception v7

    .line 271
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :goto_8
    :try_start_c
    const-string v27, "MusicFXControlPanelEffect"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Equalizer: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 277
    if-eqz v12, :cond_9

    .line 278
    :try_start_d
    const-string v27, "MusicFXControlPanelEffect"

    const-string v28, "Releasing dummy EQ effect"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v12}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 281
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 284
    sget-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v27, :cond_10

    .line 285
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[S

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 286
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_9
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 288
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Preset"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v21

    .line 291
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 292
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v28, v28, v21

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v28

    aput-object v28, v27, v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 286
    :cond_a
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_9

    .line 272
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v21           #preset:S
    :catch_3
    move-exception v7

    .line 273
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    :goto_a
    :try_start_e
    const-string v27, "MusicFXControlPanelEffect"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Equalizer: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 277
    if-eqz v12, :cond_b

    .line 278
    :try_start_f
    const-string v27, "MusicFXControlPanelEffect"

    const-string v28, "Releasing dummy EQ effect"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v12}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 281
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 284
    sget-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v27, :cond_10

    .line 285
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[S

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 286
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_b
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 288
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Preset"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v21

    .line 291
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 292
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v28, v28, v21

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v28

    aput-object v28, v27, v21
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 286
    :cond_c
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_b

    .line 274
    .end local v7           #e:Ljava/lang/UnsupportedOperationException;
    .end local v21           #preset:S
    :catch_4
    move-exception v7

    .line 275
    .local v7, e:Ljava/lang/RuntimeException;
    :goto_c
    :try_start_10
    const-string v27, "MusicFXControlPanelEffect"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Equalizer: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 277
    if-eqz v12, :cond_d

    .line 278
    :try_start_11
    const-string v27, "MusicFXControlPanelEffect"

    const-string v28, "Releasing dummy EQ effect"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v12}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 281
    :cond_d
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 284
    sget-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v27, :cond_10

    .line 285
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[S

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 286
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_d
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 288
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Preset"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v21

    .line 291
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 292
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v28, v28, v21

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v28

    aput-object v28, v27, v21

    .line 286
    :cond_e
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_d

    .line 277
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v21           #preset:S
    :cond_f
    throw v28

    .line 383
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v19           #mediaPlayer:Landroid/media/MediaPlayer;
    :catchall_1
    move-exception v27

    monitor-exit v29
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw v27
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    .line 300
    .restart local v19       #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_10
    :try_start_13
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v30, 0x0

    aget-short v28, v28, v30

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v30, 0x1

    aget-short v28, v28, v30

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 302
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v31, 0x0

    aget-short v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v31, 0x1

    aget-short v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v27 .. v28}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v9

    .line 317
    .local v9, eQPresetCIExtremeBandLevel:[S
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v27 .. v28}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v10

    .line 323
    .local v10, eQPresetUserBandLevelDefault:[S
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    int-to-short v8, v0

    .line 324
    .local v8, eQPreset:S
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v11, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 328
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v27

    new-array v5, v0, [S

    .line 331
    .local v5, bandLevel:[S
    const/4 v4, 0x0

    .restart local v4       #band:S
    :goto_e
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v27

    if-ge v4, v0, :cond_14

    .line 332
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_PREFERENCES:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-object/from16 v0, v27

    if-ne v6, v0, :cond_11

    .line 333
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v27

    if-ge v8, v0, :cond_12

    .line 335
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    aget-object v27, v27, v8

    aget-short v27, v27, v4

    aput-short v27, v5, v4

    .line 345
    :goto_f
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aget-short v28, v5, v4

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 349
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aget-short v30, v5, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_11
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    aget v28, v28, v4

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aget-short v28, v9, v4

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 354
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aget-short v28, v10, v4

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 359
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    aget v30, v30, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aget-short v30, v9, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aget-short v30, v10, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aget-short v31, v10, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aget-short v31, v10, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    add-int/lit8 v27, v4, 0x1

    move/from16 v0, v27

    int-to-short v4, v0

    goto/16 :goto_e

    .line 336
    :cond_12
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v27

    if-ne v8, v0, :cond_13

    .line 338
    aget-short v27, v9, v4

    aput-short v27, v5, v4

    goto/16 :goto_f

    .line 341
    :cond_13
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aget-short v28, v10, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v5, v4

    goto/16 :goto_f

    .line 371
    :cond_14
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_10
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 372
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    aget-object v28, v28, v21

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 373
    const/4 v4, 0x0

    :goto_11
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v27

    if-ge v4, v0, :cond_15

    .line 374
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    aget-object v28, v28, v21

    aget-short v28, v28, v4

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 379
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "_"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    aget-object v30, v30, v21

    aget-short v30, v30, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    add-int/lit8 v27, v4, 0x1

    move/from16 v0, v27

    int-to-short v4, v0

    goto/16 :goto_11

    .line 371
    :cond_15
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto/16 :goto_10

    .line 383
    :cond_16
    monitor-exit v29
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 384
    :try_start_14
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 386
    .local v15, isEQEnabled:Z
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v11, v0, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 390
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 395
    .local v16, isEnabledPR:Z
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v22, v0

    .line 397
    .local v22, presetPR:S
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 398
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_2

    .line 277
    .end local v4           #band:S
    .end local v5           #bandLevel:[S
    .end local v8           #eQPreset:S
    .end local v9           #eQPresetCIExtremeBandLevel:[S
    .end local v10           #eQPresetUserBandLevelDefault:[S
    .end local v15           #isEQEnabled:Z
    .end local v16           #isEnabledPR:Z
    .end local v21           #preset:S
    .end local v22           #presetPR:S
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catchall_2
    move-exception v27

    move-object/from16 v28, v27

    :goto_12
    if-eqz v12, :cond_17

    .line 278
    :try_start_15
    const-string v27, "MusicFXControlPanelEffect"

    const-string v30, "Releasing dummy EQ effect"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v12}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 281
    :cond_17
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 284
    sget-boolean v27, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v27, :cond_f

    .line 285
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v27

    move/from16 v1, v30

    filled-new-array {v0, v1}, [I

    move-result-object v27

    sget-object v30, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[S

    sput-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 286
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_13
    sget-short v27, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 288
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Preset"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v27, v21

    .line 291
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    .line 292
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v30, v30, v21

    sget-short v31, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v30 .. v31}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v30

    aput-object v30, v27, v21
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 286
    :cond_18
    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_13

    .line 277
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v21           #preset:S
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catchall_3
    move-exception v27

    move-object/from16 v28, v27

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_12

    .line 274
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_5
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_c

    .line 272
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_6
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_a

    .line 270
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_7
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_8

    .line 268
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_8
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_6

    .line 211
    .end local v3           #bBStrength:I
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v14           #isBBEnabled:Z
    :catchall_4
    move-exception v27

    move-object/from16 v25, v26

    .end local v26           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    .restart local v25       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    goto/16 :goto_1
.end method

.method public static openSession(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 35
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"

    .prologue
    .line 1134
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "openSession("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v22, "openSession: "

    .line 1138
    .local v22, methodTag:Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1140
    .local v23, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1142
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 1144
    .local v20, isGlobalEnabled:Z
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1148
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    if-nez v20, :cond_0

    .line 1462
    :goto_0
    return-void

    .line 1157
    :cond_0
    const/16 v19, 0x0

    .line 1160
    .local v19, isExistingAudioSession:Z
    :try_start_0
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1162
    .local v6, currentAudioSession:Ljava/lang/Integer;
    if-eqz v6, :cond_1

    .line 1164
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v30

    move/from16 v0, v30

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 1170
    const/16 v19, 0x1

    .line 1185
    :cond_1
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v29

    .line 1187
    .local v29, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    const-string v17, "openSession: Virtualizer error: "

    .line 1191
    .local v17, errorTag:Ljava/lang/String;
    :try_start_1
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1193
    .local v18, isEnabled:Z
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x3e8

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 1196
    .local v28, strength:I
    new-instance v26, Landroid/media/audiofx/Virtualizer$Settings;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Virtualizer;strength="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/media/audiofx/Virtualizer$Settings;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v26, settings:Landroid/media/audiofx/Virtualizer$Settings;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V

    .line 1202
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 1203
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 1209
    :goto_2
    invoke-virtual/range {v29 .. v29}, Landroid/media/audiofx/Virtualizer;->getProperties()Landroid/media/audiofx/Virtualizer$Settings;

    move-result-object v26

    .line 1210
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Parameters: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v26 .. v26}, Landroid/media/audiofx/Virtualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ";enabled="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1214
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    iget-short v0, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1218
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    iget-short v0, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1228
    .end local v18           #isEnabled:Z
    .end local v26           #settings:Landroid/media/audiofx/Virtualizer$Settings;
    .end local v28           #strength:I
    :goto_3
    if-eqz v19, :cond_4

    .line 1229
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1172
    .end local v17           #errorTag:Ljava/lang/String;
    .end local v29           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect;->closeSession(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1175
    .end local v6           #currentAudioSession:Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 1176
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "openSession: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1205
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v6       #currentAudioSession:Ljava/lang/Integer;
    .restart local v17       #errorTag:Ljava/lang/String;
    .restart local v18       #isEnabled:Z
    .restart local v26       #settings:Landroid/media/audiofx/Virtualizer$Settings;
    .restart local v28       #strength:I
    .restart local v29       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_3
    const/16 v30, 0x0

    :try_start_3
    invoke-virtual/range {v29 .. v30}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1220
    .end local v18           #isEnabled:Z
    .end local v26           #settings:Landroid/media/audiofx/Virtualizer$Settings;
    .end local v28           #strength:I
    :catch_1
    move-exception v7

    .line 1221
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "openSession: Virtualizer error: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1235
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v5

    .line 1237
    .local v5, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    const-string v17, "openSession: BassBoost error: "

    .line 1241
    :try_start_4
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1243
    .restart local v18       #isEnabled:Z
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x29b

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 1247
    .restart local v28       #strength:I
    new-instance v26, Landroid/media/audiofx/BassBoost$Settings;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "BassBoost;strength="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/media/audiofx/BassBoost$Settings;-><init>(Ljava/lang/String;)V

    .line 1250
    .local v26, settings:Landroid/media/audiofx/BassBoost$Settings;
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/media/audiofx/BassBoost;->setProperties(Landroid/media/audiofx/BassBoost$Settings;)V

    .line 1253
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 1254
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 1260
    :goto_4
    invoke-virtual {v5}, Landroid/media/audiofx/BassBoost;->getProperties()Landroid/media/audiofx/BassBoost$Settings;

    move-result-object v26

    .line 1261
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Parameters: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v26 .. v26}, Landroid/media/audiofx/BassBoost$Settings;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ";enabled="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1265
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    iget-short v0, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1269
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    iget-short v0, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1278
    .end local v18           #isEnabled:Z
    .end local v26           #settings:Landroid/media/audiofx/BassBoost$Settings;
    .end local v28           #strength:I
    :goto_5
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v16

    .line 1280
    .local v16, equalizerEffect:Landroid/media/audiofx/Equalizer;
    const-string v17, "openSession: Equalizer error: "

    .line 1289
    :try_start_5
    sget-object v31, Lcom/android/musicfx/ControlPanelEffect;->mEQInitLock:Ljava/lang/Object;

    monitor-enter v31
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1291
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v30

    sput-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    .line 1292
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v30

    sput-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 1293
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    sput-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 1294
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v30

    sput-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 1295
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    sput-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    .line 1297
    const/16 v24, 0x0

    .local v24, preset:S
    :goto_6
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    .line 1298
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v24

    .line 1299
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    aget-object v32, v32, v24

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1297
    add-int/lit8 v30, v24, 0x1

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v24, v0

    goto :goto_6

    .line 1256
    .end local v16           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v24           #preset:S
    .restart local v18       #isEnabled:Z
    .restart local v26       #settings:Landroid/media/audiofx/BassBoost$Settings;
    .restart local v28       #strength:I
    :cond_5
    const/16 v30, 0x0

    :try_start_7
    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 1271
    .end local v18           #isEnabled:Z
    .end local v26           #settings:Landroid/media/audiofx/BassBoost$Settings;
    .end local v28           #strength:I
    :catch_2
    move-exception v7

    .line 1272
    .restart local v7       #e:Ljava/lang/RuntimeException;
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "openSession: BassBoost error: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1303
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v16       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v24       #preset:S
    :cond_6
    :try_start_8
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v33, 0x0

    aget-short v32, v32, v33

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1304
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v33, 0x1

    aget-short v32, v32, v33

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1305
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    sget-short v32, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1306
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    sget-short v32, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1310
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v34, 0x0

    aget-short v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v34, 0x1

    aget-short v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    sget-short v33, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    sget-short v33, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    sget-short v32, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v12

    .line 1319
    .local v12, eQPresetCIExtremeBandLevel:[S
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    sget-short v32, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v14

    .line 1322
    .local v14, eQPresetUserBandLevelDefault:[S
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    sget-short v32, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    int-to-short v11, v0

    .line 1324
    .local v11, eQPreset:S
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v30

    if-ge v11, v0, :cond_8

    .line 1326
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 1327
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S

    move-result v11

    .line 1343
    :cond_7
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v15, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1347
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v30

    new-array v4, v0, [S

    .line 1350
    .local v4, bandLevel:[S
    const/4 v3, 0x0

    .local v3, band:S
    :goto_7
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v30

    if-ge v3, v0, :cond_a

    .line 1351
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v32

    aput v32, v30, v3

    .line 1352
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v30

    aput-short v30, v4, v3

    .line 1354
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aget-short v32, v4, v3

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1355
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    aget v32, v32, v3

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1356
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aget-short v32, v12, v3

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1358
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aget-short v32, v14, v3

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1363
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aget-short v33, v4, v3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    aget v33, v33, v3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aget-short v33, v12, v3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aget-short v33, v14, v3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    add-int/lit8 v30, v3, 0x1

    move/from16 v0, v30

    int-to-short v3, v0

    goto/16 :goto_7

    .line 1329
    .end local v3           #band:S
    .end local v4           #bandLevel:[S
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #band:S
    :goto_8
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v30

    if-ge v3, v0, :cond_7

    .line 1330
    const/16 v21, 0x0

    .line 1331
    .local v21, level:S
    sget-short v30, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v30

    if-ne v11, v0, :cond_9

    .line 1333
    aget-short v21, v12, v3

    .line 1340
    :goto_9
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 1329
    add-int/lit8 v30, v3, 0x1

    move/from16 v0, v30

    int-to-short v3, v0

    goto :goto_8

    .line 1336
    :cond_9
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aget-short v32, v14, v3

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_9

    .line 1371
    .end local v21           #level:S
    .restart local v4       #bandLevel:[S
    :cond_a
    sget-short v9, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 1372
    .local v9, eQNumBands:S
    sget-object v8, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 1373
    .local v8, eQCenterFreq:[I
    sget-short v10, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 1374
    .local v10, eQNumPresets:S
    sget-object v13, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    .line 1375
    .local v13, eQPresetNames:[Ljava/lang/String;
    monitor-exit v31
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1377
    :try_start_9
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1379
    .restart local v18       #isEnabled:Z
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1383
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 1385
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 1391
    :goto_a
    const-string v30, "MusicFXControlPanelEffect"

    const-string v31, "Parameters: Equalizer"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "bands="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string v27, "levels="

    .line 1394
    .local v27, str:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v9, :cond_c

    .line 1395
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget-short v31, v4, v3

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v27

    .line 1394
    add-int/lit8 v30, v3, 0x1

    move/from16 v0, v30

    int-to-short v3, v0

    goto :goto_b

    .line 1375
    .end local v3           #band:S
    .end local v4           #bandLevel:[S
    .end local v8           #eQCenterFreq:[I
    .end local v9           #eQNumBands:S
    .end local v10           #eQNumPresets:S
    .end local v11           #eQPreset:S
    .end local v12           #eQPresetCIExtremeBandLevel:[S
    .end local v13           #eQPresetNames:[Ljava/lang/String;
    .end local v14           #eQPresetUserBandLevelDefault:[S
    .end local v18           #isEnabled:Z
    .end local v24           #preset:S
    .end local v27           #str:Ljava/lang/String;
    :catchall_0
    move-exception v30

    :try_start_a
    monitor-exit v31
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v30
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 1409
    :catch_3
    move-exception v7

    .line 1410
    .restart local v7       #e:Ljava/lang/RuntimeException;
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "openSession: Equalizer error: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    .end local v7           #e:Ljava/lang/RuntimeException;
    :goto_c
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;

    move-result-object v25

    .line 1422
    .local v25, presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    const-string v17, "openSession: PresetReverb error: "

    .line 1426
    :try_start_c
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1428
    .restart local v18       #isEnabled:Z
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v24, v0

    .line 1432
    .restart local v24       #preset:S
    new-instance v26, Landroid/media/audiofx/PresetReverb$Settings;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "PresetReverb;preset="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/media/audiofx/PresetReverb$Settings;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v26, settings:Landroid/media/audiofx/PresetReverb$Settings;
    invoke-virtual/range {v25 .. v26}, Landroid/media/audiofx/PresetReverb;->setProperties(Landroid/media/audiofx/PresetReverb$Settings;)V

    .line 1439
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 1440
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 1446
    :goto_d
    invoke-virtual/range {v25 .. v25}, Landroid/media/audiofx/PresetReverb;->getProperties()Landroid/media/audiofx/PresetReverb$Settings;

    move-result-object v26

    .line 1447
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Parameters: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v26 .. v26}, Landroid/media/audiofx/PresetReverb$Settings;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ";enabled="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1451
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    iget-short v0, v0, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1455
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    iget-short v0, v0, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 1461
    .end local v18           #isEnabled:Z
    .end local v24           #preset:S
    .end local v26           #settings:Landroid/media/audiofx/PresetReverb$Settings;
    :goto_e
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1387
    .end local v25           #presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    .restart local v3       #band:S
    .restart local v4       #bandLevel:[S
    .restart local v8       #eQCenterFreq:[I
    .restart local v9       #eQNumBands:S
    .restart local v10       #eQNumPresets:S
    .restart local v11       #eQPreset:S
    .restart local v12       #eQPresetCIExtremeBandLevel:[S
    .restart local v13       #eQPresetNames:[Ljava/lang/String;
    .restart local v14       #eQPresetUserBandLevelDefault:[S
    .restart local v18       #isEnabled:Z
    .restart local v24       #preset:S
    :cond_b
    const/16 v30, 0x0

    :try_start_d
    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_a

    .line 1397
    .restart local v27       #str:Ljava/lang/String;
    :cond_c
    const-string v30, "MusicFXControlPanelEffect"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const-string v27, "center="

    .line 1399
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v9, :cond_d

    .line 1400
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v8, v3

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1399
    add-int/lit8 v30, v3, 0x1

    move/from16 v0, v30

    int-to-short v3, v0

    goto :goto_f

    .line 1402
    :cond_d
    const-string v30, "MusicFXControlPanelEffect"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v27, "presets="

    .line 1404
    const/16 v24, 0x0

    :goto_10
    move/from16 v0, v24

    if-ge v0, v10, :cond_e

    .line 1405
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget-object v31, v13, v24

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1404
    add-int/lit8 v30, v24, 0x1

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v24, v0

    goto :goto_10

    .line 1407
    :cond_e
    const-string v30, "MusicFXControlPanelEffect"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "current="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_c

    .line 1442
    .end local v3           #band:S
    .end local v4           #bandLevel:[S
    .end local v8           #eQCenterFreq:[I
    .end local v9           #eQNumBands:S
    .end local v10           #eQNumPresets:S
    .end local v11           #eQPreset:S
    .end local v12           #eQPresetCIExtremeBandLevel:[S
    .end local v13           #eQPresetNames:[Ljava/lang/String;
    .end local v14           #eQPresetUserBandLevelDefault:[S
    .end local v27           #str:Ljava/lang/String;
    .restart local v25       #presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    .restart local v26       #settings:Landroid/media/audiofx/PresetReverb$Settings;
    :cond_f
    const/16 v30, 0x0

    :try_start_e
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_d

    .line 1457
    .end local v18           #isEnabled:Z
    .end local v24           #preset:S
    .end local v26           #settings:Landroid/media/audiofx/PresetReverb$Settings;
    :catch_4
    move-exception v7

    .line 1458
    .restart local v7       #e:Ljava/lang/RuntimeException;
    const-string v30, "MusicFXControlPanelEffect"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "openSession: PresetReverb error: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method public static resetPresetReverbInstances(I)V
    .locals 4
    .parameter "audioSession"

    .prologue
    .line 1744
    sget-object v1, Lcom/android/musicfx/ControlPanelEffect;->mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/PresetReverb;

    .line 1745
    .local v0, presetReverb:Landroid/media/audiofx/PresetReverb;
    if-eqz v0, :cond_0

    .line 1746
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 1748
    :cond_0
    const-string v1, "MusicFXControlPanelEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetPresetReverbInstances with audioSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    return-void
.end method

.method public static saveToSharePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1710
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mBooleanParameter:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1711
    const-string v6, "MusicFXControlPanelEffect"

    const-string v7, "The MusicFX settings is not changed, return"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :goto_0
    return-void

    .line 1714
    :cond_0
    const-string v6, "MusicFXControlPanelEffect"

    const-string v7, "Save The MusicFX settings changed to share preference when MusicFX onPause!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1716
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1717
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1718
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 1719
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1720
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1721
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mBooleanParameter:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1722
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1723
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1728
    :goto_2
    const-string v6, "MusicFXControlPanelEffect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveToSharePreference: name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1725
    .restart local v5       #value:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #value:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1726
    .restart local v5       #value:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1731
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1732
    const-string v6, "MusicFXControlPanelEffect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveToSharePreference: mNeedSaved = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1734
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mBooleanParameter:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1735
    sget-object v6, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1736
    const-string v6, "MusicFXControlPanelEffect"

    const-string v7, "saveToSharePreference finsh and clear all save hashmap to restore for next time!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setEnabledAll(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "enabled"

    .prologue
    .line 1514
    invoke-static {p0, p1, p2}, Lcom/android/musicfx/ControlPanelEffect;->initEffectsPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1515
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/musicfx/ControlPanelEffect;->setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V

    .line 1516
    return-void
.end method

.method public static setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V
    .locals 24
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 443
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-result-object v13

    .line 444
    .local v13, controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    move/from16 v15, p4

    .line 446
    .local v15, enabled:Z
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setParameterBoolean: audioSession = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 448
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_0
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_c

    .line 452
    const/16 v20, 0x0

    .line 453
    .local v20, processingEnabled:Z
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_7

    .line 455
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    if-ne v13, v4, :cond_5

    .line 456
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v23

    .line 457
    .local v23, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v23, :cond_1

    .line 462
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 463
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 464
    .local v22, vIStrength:I
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 467
    .end local v22           #vIStrength:I
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v12

    .line 468
    .local v12, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v12, :cond_2

    .line 473
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v12, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 474
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 475
    .local v10, bBStrength:I
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4, v10}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 478
    .end local v10           #bBStrength:I
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v16

    .line 479
    .local v16, equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v16, :cond_4

    .line 482
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 483
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v11

    .line 485
    .local v11, bandLevels:[I
    array-length v0, v11

    move/from16 v18, v0

    .line 489
    .local v18, len:I
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v21

    .line 492
    .local v21, userBandLevels:[I
    const/4 v9, 0x0

    .local v9, band:S
    :goto_0
    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    .line 493
    aget v8, v11, v9

    .line 494
    .local v8, level:I
    sget-object v7, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V

    .line 492
    add-int/lit8 v4, v9, 0x1

    int-to-short v9, v4

    goto :goto_0

    .line 498
    .end local v8           #level:I
    :cond_3
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 499
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget v6, v21, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget v6, v21, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    add-int/lit8 v4, v9, 0x1

    int-to-short v9, v4

    goto :goto_1

    .line 506
    .end local v9           #band:S
    .end local v11           #bandLevels:[I
    .end local v18           #len:I
    .end local v21           #userBandLevels:[I
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;

    move-result-object v19

    .line 507
    .local v19, presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    if-eqz v19, :cond_5

    .line 510
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 514
    .end local v12           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    .end local v16           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v19           #presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    .end local v23           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_5
    const/16 v20, 0x1

    .line 515
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processingEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_2
    move/from16 v15, v20

    .line 612
    .end local v20           #processingEnabled:Z
    :cond_6
    :goto_3
    :pswitch_0
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBooleanParameter:Ljava/util/HashMap;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setParameterBoolean<<< key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v13           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .end local v15           #enabled:Z
    :goto_4
    return-void

    .line 519
    .restart local v13       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .restart local v15       #enabled:Z
    .restart local v20       #processingEnabled:Z
    :cond_7
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    if-ne v13, v4, :cond_b

    .line 520
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffectNoCreate(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v23

    .line 521
    .restart local v23       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v23, :cond_8

    .line 522
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 523
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 524
    invoke-virtual/range {v23 .. v23}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 526
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffectNoCreate(I)Landroid/media/audiofx/BassBoost;

    move-result-object v12

    .line 527
    .restart local v12       #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v12, :cond_9

    .line 528
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 529
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 530
    invoke-virtual {v12}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 532
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffectNoCreate(I)Landroid/media/audiofx/Equalizer;

    move-result-object v16

    .line 533
    .restart local v16       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v16, :cond_a

    .line 534
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 535
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 536
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 540
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;

    move-result-object v19

    .line 541
    .restart local v19       #presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    if-eqz v19, :cond_b

    .line 542
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 546
    .end local v12           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    .end local v16           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v19           #presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    .end local v23           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_b
    const/16 v20, 0x0

    .line 547
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processingEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 616
    .end local v13           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .end local v15           #enabled:Z
    .end local v20           #processingEnabled:Z
    :catch_0
    move-exception v14

    .line 617
    .local v14, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setParameterBoolean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 550
    .end local v14           #e:Ljava/lang/RuntimeException;
    .restart local v13       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .restart local v15       #enabled:Z
    :cond_c
    :try_start_1
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    if-ne v13, v4, :cond_6

    .line 553
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBooleanStatus:Ljava/util/HashMap;

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 554
    .local v17, isGlobalEnabled:Z
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 556
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 601
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown/unsupported key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 564
    :pswitch_1
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v23

    .line 565
    .restart local v23       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v23, :cond_6

    .line 566
    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 567
    invoke-virtual/range {v23 .. v23}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v15

    goto/16 :goto_3

    .line 573
    .end local v23           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :pswitch_2
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v12

    .line 574
    .restart local v12       #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v12, :cond_6

    .line 575
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 576
    invoke-virtual {v12}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v15

    goto/16 :goto_3

    .line 582
    .end local v12           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    :pswitch_3
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v16

    .line 583
    .restart local v16       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v16, :cond_6

    .line 584
    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 585
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v15

    goto/16 :goto_3

    .line 593
    .end local v16           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :pswitch_4
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;

    move-result-object v19

    .line 594
    .restart local v19       #presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    if-eqz v19, :cond_6

    .line 595
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 596
    invoke-virtual/range {v19 .. v19}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    goto/16 :goto_3

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 925
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V

    .line 926
    return-void
.end method

.method public static setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V
    .locals 19
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 664
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v13

    .line 665
    .local v13, strKey:Ljava/lang/String;
    move/from16 v14, p4

    .line 671
    .local v14, value:I
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-result-object v5

    .line 673
    .local v5, controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    const-string v16, "MusicFXControlPanelEffect"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setParameterInt: audioSession = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", key = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", value = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-object/from16 v0, v16

    if-ne v5, v0, :cond_9

    .line 677
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 796
    const-string v16, "MusicFXControlPanelEffect"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setParameterInt: Unknown/unsupported key "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v5           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    :goto_0
    return-void

    .line 681
    .restart local v5       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    :pswitch_0
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v15

    .line 682
    .local v15, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v15, :cond_0

    .line 683
    int-to-short v0, v14

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V

    .line 684
    invoke-virtual {v15}, Landroid/media/audiofx/Virtualizer;->getRoundedStrength()S

    move-result v14

    .line 900
    .end local v15           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_0
    :goto_1
    :pswitch_1
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 901
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_1
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v16, "MusicFXControlPanelEffect"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setParameterInt<<<: key = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", value = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    .end local v5           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    :catch_0
    move-exception v6

    .line 908
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v16, "MusicFXControlPanelEffect"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setParameterInt: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v5       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    :pswitch_2
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v4

    .line 691
    .local v4, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v4, :cond_0

    .line 692
    int-to-short v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 693
    invoke-virtual {v4}, Landroid/media/audiofx/BassBoost;->getRoundedStrength()S

    move-result v14

    goto/16 :goto_1

    .line 699
    .end local v4           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    :pswitch_3
    const/16 v16, -0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 700
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Dummy arg passed."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 702
    :cond_2
    move/from16 v0, p5

    int-to-short v2, v0

    .line 703
    .local v2, band:S
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 704
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v7

    .line 705
    .local v7, equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v7, :cond_0

    .line 706
    int-to-short v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v2, v0}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 707
    invoke-virtual {v7, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v14

    .line 710
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 711
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_3
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 719
    .end local v2           #band:S
    .end local v7           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :pswitch_4
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v7

    .line 720
    .restart local v7       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v7, :cond_0

    .line 721
    int-to-short v11, v14

    .line 727
    .local v11, preset:S
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v17, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 728
    .local v9, numBands:I
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v17, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 729
    .local v10, numPresets:I
    if-ge v11, v10, :cond_6

    .line 731
    invoke-virtual {v7, v11}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 732
    invoke-virtual {v7}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S

    move-result v14

    .line 760
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #band:S
    :goto_2
    if-ge v2, v9, :cond_0

    .line 761
    invoke-virtual {v7, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v8

    .line 763
    .local v8, level:S
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 764
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_5
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v16, "MusicFXControlPanelEffect"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setParameterInt: key "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", level"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", numBands = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",numPresets ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    add-int/lit8 v16, v2, 0x1

    move/from16 v0, v16

    int-to-short v2, v0

    goto/16 :goto_2

    .line 739
    .end local v2           #band:S
    .end local v8           #level:S
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #band:S
    :goto_3
    if-ge v2, v9, :cond_4

    .line 740
    const/4 v3, 0x0

    .line 741
    .local v3, bandLevel:S
    if-ne v11, v10, :cond_7

    .line 746
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    .line 755
    :goto_4
    invoke-virtual {v7, v2, v3}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 739
    add-int/lit8 v16, v2, 0x1

    move/from16 v0, v16

    int-to-short v2, v0

    goto :goto_3

    .line 752
    :cond_7
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    goto :goto_4

    .line 779
    .end local v2           #band:S
    .end local v3           #bandLevel:S
    .end local v7           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v9           #numBands:I
    .end local v10           #numPresets:I
    .end local v11           #preset:S
    :pswitch_5
    const/16 v16, -0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 780
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Dummy arg passed."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 782
    :cond_8
    move/from16 v0, p5

    int-to-short v2, v0

    .line 783
    .restart local v2       #band:S
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 784
    goto/16 :goto_1

    .line 789
    .end local v2           #band:S
    :pswitch_6
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getPresetReverbEffect(I)Landroid/media/audiofx/PresetReverb;

    move-result-object v12

    .line 790
    .local v12, presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    if-eqz v12, :cond_0

    .line 791
    int-to-short v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/media/audiofx/PresetReverb;->setPreset(S)V

    .line 792
    invoke-virtual {v12}, Landroid/media/audiofx/PresetReverb;->getPreset()S

    move-result v14

    goto/16 :goto_1

    .line 800
    .end local v12           #presetReverbEffect:Landroid/media/audiofx/PresetReverb;
    :cond_9
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    .line 892
    const-string v16, "MusicFXControlPanelEffect"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setParameterInt: Unknown/unsupported key "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    :pswitch_7
    const/16 v16, -0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 817
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Dummy arg passed."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 819
    :cond_a
    move/from16 v0, p5

    int-to-short v2, v0

    .line 820
    .restart local v2       #band:S
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 823
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 824
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_b
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 831
    .end local v2           #band:S
    :pswitch_8
    int-to-short v11, v14

    .line 836
    .restart local v11       #preset:S
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v17, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 837
    .restart local v9       #numBands:I
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    sget-object v17, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 845
    .restart local v10       #numPresets:I
    const/4 v2, 0x0

    .restart local v2       #band:S
    :goto_5
    if-ge v2, v9, :cond_0

    .line 846
    const/4 v3, 0x0

    .line 847
    .restart local v3       #bandLevel:S
    if-ge v11, v10, :cond_d

    .line 852
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    .line 868
    :goto_6
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 869
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mNeedSaved:Ljava/util/List;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_c
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntParameter:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    add-int/lit8 v16, v2, 0x1

    move/from16 v0, v16

    int-to-short v2, v0

    goto/16 :goto_5

    .line 854
    :cond_d
    if-ne v11, v10, :cond_e

    .line 859
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    goto/16 :goto_6

    .line 865
    :cond_e
    sget-object v16, Lcom/android/musicfx/ControlPanelEffect;->mIntStatus:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    goto/16 :goto_6

    .line 881
    .end local v2           #band:S
    .end local v3           #bandLevel:S
    .end local v9           #numBands:I
    .end local v10           #numPresets:I
    .end local v11           #preset:S
    :pswitch_9
    const/16 v16, -0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 882
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Dummy arg passed."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 884
    :cond_f
    move/from16 v0, p5

    int-to-short v2, v0

    .line 885
    .restart local v2       #band:S
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 886
    goto/16 :goto_1

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 800
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
