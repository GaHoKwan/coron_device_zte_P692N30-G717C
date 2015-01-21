.class public Lcom/mediatek/voicecommand/service/VoiceCommandApp;
.super Landroid/app/Application;
.source "VoiceCommandApp.java"


# instance fields
.field private mVoiceServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandApp;->mVoiceServiceIntent:Landroid/content/Intent;

    .line 16
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandApp;->mVoiceServiceIntent:Landroid/content/Intent;

    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandApp;->mVoiceServiceIntent:Landroid/content/Intent;

    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandApp;->mVoiceServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    return-void
.end method
