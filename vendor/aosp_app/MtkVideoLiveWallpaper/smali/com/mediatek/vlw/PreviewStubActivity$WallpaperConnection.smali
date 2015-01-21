.class Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "PreviewStubActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/PreviewStubActivity;
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

.field final synthetic this$0:Lcom/mediatek/vlw/PreviewStubActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/PreviewStubActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 196
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mConnected:Z

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/vlw/PreviewStubActivity;->mEngineConnected:Z
    invoke-static {v1, v2}, Lcom/mediatek/vlw/PreviewStubActivity;->access$202(Lcom/mediatek/vlw/PreviewStubActivity;Z)Z

    .line 264
    iput-object p1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {p1, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 279
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PreviewStubActivity"

    const-string v2, "Failed set engine visible "

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 278
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 272
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/vlw/PreviewStubActivity;->mEngineConnected:Z
    invoke-static {v1, v2}, Lcom/mediatek/vlw/PreviewStubActivity;->access$202(Lcom/mediatek/vlw/PreviewStubActivity;Z)Z

    .line 273
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "PreviewStubActivity"

    const-string v2, "Failed destory engine "

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    iget-object v2, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const-string v0, "PreviewStubActivity"

    const-string v1, "connect() bindService failed!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    monitor-exit p0

    .line 206
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mConnected:Z

    .line 206
    monitor-exit p0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 214
    monitor-enter p0

    .line 215
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mConnected:Z

    .line 216
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 218
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    invoke-virtual {v1, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PreviewStubActivity"

    const-string v2, "Failed destory mEngine "

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 283
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    .line 231
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    #getter for: Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0}, Lcom/mediatek/vlw/PreviewStubActivity;->access$000(Lcom/mediatek/vlw/PreviewStubActivity;)Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 232
    const-string v0, "PreviewStubActivity"

    const-string v1, "connect() successfully"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    #setter for: Lcom/mediatek/vlw/PreviewStubActivity;->mServiceConnected:Z
    invoke-static {v0, v2}, Lcom/mediatek/vlw/PreviewStubActivity;->access$102(Lcom/mediatek/vlw/PreviewStubActivity;Z)Z

    .line 235
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 238
    .local v7, decorView:Landroid/view/View;
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v7           #decorView:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v8

    .line 242
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "PreviewStubActivity"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    #setter for: Lcom/mediatek/vlw/PreviewStubActivity;->mServiceConnected:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/PreviewStubActivity;->access$102(Lcom/mediatek/vlw/PreviewStubActivity;Z)Z

    .line 249
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    #setter for: Lcom/mediatek/vlw/PreviewStubActivity;->mEngineConnected:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/PreviewStubActivity;->access$202(Lcom/mediatek/vlw/PreviewStubActivity;Z)Z

    .line 250
    iput-object v2, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 251
    iput-object v2, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 252
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    #getter for: Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0}, Lcom/mediatek/vlw/PreviewStubActivity;->access$000(Lcom/mediatek/vlw/PreviewStubActivity;)Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 253
    const-string v0, "PreviewStubActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method
