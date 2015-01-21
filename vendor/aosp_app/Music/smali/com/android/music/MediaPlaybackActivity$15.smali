.class Lcom/android/music/MediaPlaybackActivity$15;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 2255
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v2

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$2902(Lcom/android/music/MediaPlaybackActivity;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 2256
    const-string v1, "MediaPlayback"

    const-string v2, "Music ServiceConnection onServiceConnected."

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2258
    .local v0, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->registerVoiceCommand(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/music/MediaPlaybackActivity;->access$3000(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/String;)V

    .line 2259
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/android/music/MediaPlaybackActivity;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->access$3100(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 2261
    const-string v1, "MediaPlayback"

    const-string v2, "Music register voice listener onServiceConnected."

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2266
    const-string v0, "MediaPlayback"

    const-string v1, "Music service disconnected"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$3202(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 2268
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$2902(Lcom/android/music/MediaPlaybackActivity;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 2269
    return-void
.end method
