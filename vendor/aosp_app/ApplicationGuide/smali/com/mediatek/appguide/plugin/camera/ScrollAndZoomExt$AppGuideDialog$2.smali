.class Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$2;
.super Ljava/lang/Object;
.source "ScrollAndZoomExt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$2;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 160
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "click ok, finish app guide"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$2;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    iget-object v0, v0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->this$0:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;

    #getter for: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;->access$400(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_guide"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$2;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    #calls: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->releaseMediaPlayer()V
    invoke-static {v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->access$500(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)V

    .line 165
    return-void
.end method
