.class Lcom/mediatek/gallery3d/video/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/SettingsActivity;->showProxyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$2;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 261
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$2;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    #getter for: Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;
    invoke-static {v1}, Lcom/mediatek/gallery3d/video/SettingsActivity;->access$100(Lcom/mediatek/gallery3d/video/SettingsActivity;)Lcom/mediatek/gallery3d/video/ProxyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/ProxyDialog;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$2;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    #calls: Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshRtspProxy()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->access$200(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$2;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    #calls: Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshHttpProxy()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->access$300(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    goto :goto_0
.end method
