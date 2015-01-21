.class Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "PreviewStubActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/PreviewStubActivity;
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

.field final synthetic this$0:Lcom/android/wallpaper/PreviewStubActivity;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/PreviewStubActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/android/wallpaper/PreviewStubActivity;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 148
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    const-string v1, "PreviewStubActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachEngine start engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-boolean v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mConnected:Z

    if-eqz v1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    const-string v1, "PreviewStubActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachEngine engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 223
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 217
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/android/wallpaper/PreviewStubActivity;

    iget-object v2, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const/4 v0, 0x0

    monitor-exit p0

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_0
    const-string v1, "PreviewStubActivity"

    const-string v2, "connect() connecting..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mConnected:Z

    .line 157
    monitor-exit p0

    goto :goto_0

    .line 158
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
    .line 162
    monitor-enter p0

    .line 163
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mConnected:Z

    .line 164
    iget-object v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/android/wallpaper/PreviewStubActivity;

    invoke-virtual {v1, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 174
    const-string v1, "PreviewStubActivity"

    const-string v2, "disconnect() successfully"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    monitor-exit p0

    .line 176
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 175
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
    .line 227
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/android/wallpaper/PreviewStubActivity;

    #getter for: Lcom/android/wallpaper/PreviewStubActivity;->mWallpaperConnection:Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0}, Lcom/android/wallpaper/PreviewStubActivity;->access$000(Lcom/android/wallpaper/PreviewStubActivity;)Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 180
    const-string v0, "PreviewStubActivity"

    const-string v1, "connect() successfully"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/android/wallpaper/PreviewStubActivity;

    #getter for: Lcom/android/wallpaper/PreviewStubActivity;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/wallpaper/PreviewStubActivity;->access$100(Lcom/android/wallpaper/PreviewStubActivity;)Landroid/view/View;

    move-result-object v9

    .line 184
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 185
    .local v8, root:Landroid/view/View;
    iget-object v0, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

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

    .line 188
    const-string v0, "PreviewStubActivity"

    const-string v1, "onServiceConnected end"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v8           #root:Landroid/view/View;
    .end local v9           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v7

    .line 191
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "PreviewStubActivity"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 198
    iput-object v0, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 199
    iget-object v0, p0, Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;->this$0:Lcom/android/wallpaper/PreviewStubActivity;

    #getter for: Lcom/android/wallpaper/PreviewStubActivity;->mWallpaperConnection:Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0}, Lcom/android/wallpaper/PreviewStubActivity;->access$000(Lcom/android/wallpaper/PreviewStubActivity;)Lcom/android/wallpaper/PreviewStubActivity$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 200
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

    .line 202
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method
