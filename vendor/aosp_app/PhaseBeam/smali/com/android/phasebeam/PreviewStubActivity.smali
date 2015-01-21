.class public Lcom/android/phasebeam/PreviewStubActivity;
.super Landroid/app/Activity;
.source "PreviewStubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;
    }
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "CLASS_NAME"

.field private static final LOG_TAG:Ljava/lang/String; = "PreviewStubActivity"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"


# instance fields
.field private mView:Landroid/view/View;

.field private mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

.field private mWallpaperIntent:Landroid/content/Intent;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/phasebeam/PreviewStubActivity;)Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phasebeam/PreviewStubActivity;Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;)Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phasebeam/PreviewStubActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phasebeam/PreviewStubActivity;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 115
    const-string v1, "PreviewStubActivity"

    const-string v2, "onAttachedToWindow() "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 117
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/phasebeam/PreviewStubActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phasebeam/PreviewStubActivity$1;-><init>(Lcom/android/phasebeam/PreviewStubActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v3, "PreviewStubActivity"

    const-string v4, "onCreate() "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 55
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phasebeam/PreviewStubActivity;->mView:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 58
    .local v1, extra:Landroid/os/Bundle;
    const-string v3, "PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, pkg:Ljava/lang/String;
    const-string v3, "CLASS_NAME"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, cls:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperIntent:Landroid/content/Intent;

    .line 62
    iget-object v3, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperIntent:Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v3, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperIntent:Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    const-string v3, "PreviewStubActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWallpaperIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 67
    new-instance v3, Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    iget-object v4, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperIntent:Landroid/content/Intent;

    invoke-direct {v3, p0, v4}, Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;-><init>(Lcom/android/phasebeam/PreviewStubActivity;Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    .line 68
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 135
    iget-object v0, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;->disconnect()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    const-string v1, "PreviewStubActivity"

    const-string v2, "onPause() ......"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V

    .line 105
    const-string v1, "PreviewStubActivity"

    const-string v2, "onPause() setVisibility(false)"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    const-string v1, "PreviewStubActivity"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    const-string v1, "PreviewStubActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() inner mWallpaperConnection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperConnection:Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;

    iget-object v1, v1, Lcom/android/phasebeam/PreviewStubActivity$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V

    .line 91
    const-string v1, "PreviewStubActivity"

    const-string v2, "onResume() setVisibility(true)"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLiveWallpaper(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 71
    const-string v1, "PreviewStubActivity"

    const-string v2, "setLiveWallpaper() "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 75
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f00

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 76
    iget-object v1, p0, Lcom/android/phasebeam/PreviewStubActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
