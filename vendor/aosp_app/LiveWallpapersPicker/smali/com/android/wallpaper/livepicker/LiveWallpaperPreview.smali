.class public Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;
.super Landroid/app/Activity;
.source "LiveWallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    }
.end annotation


# static fields
.field static final EXTRA_LIVE_WALLPAPER_INTENT:Ljava/lang/String; = "android.live_wallpaper.intent"

.field static final EXTRA_LIVE_WALLPAPER_PACKAGE:Ljava/lang/String; = "android.live_wallpaper.package"

.field static final EXTRA_LIVE_WALLPAPER_SETTINGS:Ljava/lang/String; = "android.live_wallpaper.settings"

.field private static final LOG_TAG:Ljava/lang/String; = "LiveWallpaperPreview"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialog:Landroid/app/Dialog;

.field private mPackageName:Ljava/lang/String;

.field private mSettings:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

.field private mWallpaperIntent:Landroid/content/Intent;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    return-object v0
.end method

.method private finishIfStorageLow()Z
    .locals 6

    .prologue
    .line 130
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 132
    .local v3, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    const-string v4, "LiveWallpaperPreview"

    const-string v5, "Storage low, stop preview activity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 136
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)V

    .line 143
    .local v1, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$2;

    invoke-direct {v2, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$2;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)V

    .line 150
    .local v2, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08000b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 157
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .end local v2           #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    const/4 v4, 0x1

    .line 165
    :goto_0
    return v4

    .line 162
    :catch_0
    move-exception v4

    .line 165
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showLoading()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 233
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 234
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040003

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 236
    .local v0, content:Landroid/widget/TextView;
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x1030008

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    .line 238
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 239
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 241
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 245
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 249
    return-void
.end method

.method static showPreview(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/WallpaperInfo;)V
    .locals 4
    .parameter "activity"
    .parameter "code"
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 69
    if-nez p3, :cond_0

    .line 70
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure showing preview"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, preview:Landroid/content/Intent;
    const-string v1, "android.live_wallpaper.intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    const-string v1, "android.live_wallpaper.settings"

    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "android.live_wallpaper.package"

    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public configureLiveWallpaper(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    const-string v1, "android.service.wallpaper.PREVIEW_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 271
    .local v7, dup:Landroid/view/MotionEvent;
    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0, v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchPointer(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    .end local v7           #dup:Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 280
    .local v8, handled:Z
    if-nez v8, :cond_2

    .line 281
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 284
    :cond_2
    if-nez v8, :cond_3

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 287
    .local v6, action:I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v1, "android.wallpaper.tap"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 300
    .end local v6           #action:I
    :cond_3
    :goto_1
    return v8

    .line 291
    .restart local v6       #action:I
    :cond_4
    const/4 v0, 0x6

    if-ne v6, v0, :cond_3

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 293
    .local v9, pointerIndex:I
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v1, "android.wallpaper.secondaryTap"

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 297
    .end local v9           #pointerIndex:I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 272
    .end local v6           #action:I
    .end local v8           #handled:Z
    .restart local v7       #dup:Landroid/view/MotionEvent;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 214
    invoke-direct {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->showLoading()V

    .line 216
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$3;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$3;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "android.live_wallpaper.intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 87
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 91
    :cond_0
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    .line 94
    const-string v1, "android.live_wallpaper.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    .line 95
    const-string v1, "android.live_wallpaper.package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mPackageName:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 102
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    .line 103
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 255
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-boolean v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->disconnect()V

    .line 263
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    .line 264
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 204
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mAlertDialog:Landroid/app/AlertDialog;

    .line 208
    :cond_0
    return-void
.end method

.method public setLiveWallpaper(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 109
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f00

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 110
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 111
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure setting wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
