.class Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "MagicSmokeSelector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/magicsmoke/MagicSmokeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final synthetic this$0:Lcom/android/magicsmoke/MagicSmokeSelector;


# direct methods
.method constructor <init>(Lcom/android/magicsmoke/MagicSmokeSelector;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->this$0:Lcom/android/magicsmoke/MagicSmokeSelector;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 151
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-boolean v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 206
    iput-object p1, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    return-void

    .line 214
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 209
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->this$0:Lcom/android/magicsmoke/MagicSmokeSelector;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v0, 0x0

    monitor-exit p0

    .line 160
    :goto_0
    return v0

    .line 159
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mConnected:Z

    .line 160
    monitor-exit p0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    .line 166
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mConnected:Z

    .line 167
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->this$0:Lcom/android/magicsmoke/MagicSmokeSelector;

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .parameter "engine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->this$0:Lcom/android/magicsmoke/MagicSmokeSelector;

    #getter for: Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;
    invoke-static {v0}, Lcom/android/magicsmoke/MagicSmokeSelector;->access$000(Lcom/android/magicsmoke/MagicSmokeSelector;)Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 182
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->this$0:Lcom/android/magicsmoke/MagicSmokeSelector;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 185
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 186
    .local v8, root:Landroid/view/View;
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v8           #root:Landroid/view/View;
    .end local v9           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v7

    .line 190
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MagicSmokeSelector"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 197
    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 198
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->this$0:Lcom/android/magicsmoke/MagicSmokeSelector;

    #getter for: Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;
    invoke-static {v0}, Lcom/android/magicsmoke/MagicSmokeSelector;->access$000(Lcom/android/magicsmoke/MagicSmokeSelector;)Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 199
    const-string v0, "MagicSmokeSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method
