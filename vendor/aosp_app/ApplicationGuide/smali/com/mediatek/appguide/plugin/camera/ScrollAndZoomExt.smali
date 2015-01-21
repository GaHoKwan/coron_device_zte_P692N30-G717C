.class public Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;
.super Ljava/lang/Object;
.source "ScrollAndZoomExt.java"

# interfaces
.implements Lcom/mediatek/camera/ext/IAppGuideExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;
    }
.end annotation


# static fields
.field private static final KEY_CAMERA_GUIDE:Ljava/lang/String; = "camera_guide"

.field private static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "application_guide"

.field private static final TAG:Ljava/lang/String; = "ScrollAndZoomExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "ScrollAndZoomExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public showCameraGuide(Landroid/app/Activity;Ljava/lang/String;Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;)V
    .locals 6
    .parameter "activity"
    .parameter "type"
    .parameter "onFinishListener"

    .prologue
    const/16 v5, 0x400

    .line 90
    const-string v2, "ScrollAndZoomExt"

    const-string v3, "showCameraGuide()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v2, "application_guide"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 93
    iget-object v2, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "camera_guide"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "ScrollAndZoomExt"

    const-string v3, "already show camera guide, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-interface {p3}, Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;->onGuideFinish()V

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;-><init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;Landroid/app/Activity;)V

    .line 100
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 103
    move-object v1, p3

    .line 104
    .local v1, finishListener:Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;
    new-instance v2, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$1;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$1;-><init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
