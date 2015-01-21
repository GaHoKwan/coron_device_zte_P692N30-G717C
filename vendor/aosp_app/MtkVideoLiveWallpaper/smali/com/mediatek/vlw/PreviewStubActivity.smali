.class public Lcom/mediatek/vlw/PreviewStubActivity;
.super Landroid/app/Activity;
.source "PreviewStubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PreviewStubActivity"


# instance fields
.field private mAttachedToWindow:Z

.field private mEngineConnected:Z

.field private mServiceConnected:Z

.field private mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/vlw/PreviewStubActivity;)Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/vlw/PreviewStubActivity;Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;)Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/vlw/PreviewStubActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/vlw/PreviewStubActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mEngineConnected:Z

    return p1
.end method


# virtual methods
.method public attachedToWindow()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mAttachedToWindow:Z

    return v0
.end method

.method public detachedFromWindow()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mAttachedToWindow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineConnected()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mEngineConnected:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mAttachedToWindow:Z

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 166
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/mediatek/vlw/PreviewStubActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/vlw/PreviewStubActivity$1;-><init>(Lcom/mediatek/vlw/PreviewStubActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x400

    const/4 v4, -0x1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 118
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 119
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 124
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/mediatek/vlw/VideoLiveWallpaper;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v2, vlw:Landroid/content/Intent;
    new-instance v3, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;-><init>(Lcom/mediatek/vlw/PreviewStubActivity;Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    .line 126
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mAttachedToWindow:Z

    .line 182
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    invoke-virtual {v0}, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->disconnect()V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    .line 186
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PreviewStubActivity"

    const-string v2, "Failed set mEngine invisible "

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PreviewStubActivity"

    const-string v2, "Failed set mEngine visible "

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendWallpaperCommand(Ljava/lang/String;)V
    .locals 7
    .parameter "command"

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public serviceConnected()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/vlw/PreviewStubActivity;->mServiceConnected:Z

    return v0
.end method
