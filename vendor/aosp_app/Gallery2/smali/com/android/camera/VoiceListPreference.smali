.class public Lcom/android/camera/VoiceListPreference;
.super Lcom/android/camera/IconListPreference;
.source "VoiceListPreference.java"

# interfaces
.implements Lcom/android/camera/VoiceManager$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceListPreference"


# instance fields
.field private mCamera:Lcom/android/camera/Camera;

.field private mDefaultValue:Ljava/lang/String;

.field private mVoiceManager:Lcom/android/camera/VoiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/VoiceListPreference;->mCamera:Lcom/android/camera/Camera;

    .line 18
    return-void
.end method

.method private getSupportedDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mDefaultValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VoiceListPreference;->mDefaultValue:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getExtendValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getVoiceManager()Lcom/android/camera/VoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VoiceManager;->getVoiceEntryValues()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/camera/VoiceManager;->getVoiceValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/android/camera/VoiceListPreference;->getSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 30
    :cond_0
    :goto_0
    const-string v0, "VoiceListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    return-object v0

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VoiceListPreference;->getSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 61
    const-string v0, "VoiceListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled() mVoiceManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/camera/VoiceManager;->getVoiceValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public onVoiceValueUpdated(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 83
    const-string v0, "VoiceListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceValueUpdated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/camera/VoiceListPreference;->getSupportedDefaultValue()Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingManager()Lcom/android/camera/manager/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 91
    :cond_3
    return-void
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 53
    const-string v0, "VoiceListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistStringValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mVoiceManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/VoiceManager;->setVoiceValue(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 43
    const-string v0, "VoiceListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/camera/VoiceListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setVoiceManager(Lcom/android/camera/VoiceManager;)V
    .locals 3
    .parameter "voiceManager"

    .prologue
    .line 69
    const-string v0, "VoiceListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceManager("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mVoiceManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    if-eq v0, p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/VoiceManager;->removeListener(Lcom/android/camera/VoiceManager$Listener;)Z

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/camera/VoiceListPreference;->mVoiceManager:Lcom/android/camera/VoiceManager;

    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1, p0}, Lcom/android/camera/VoiceManager;->addListener(Lcom/android/camera/VoiceManager$Listener;)Z

    .line 79
    :cond_1
    return-void
.end method
