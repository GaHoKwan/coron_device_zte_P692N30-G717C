.class Lcom/mediatek/gallery3d/video/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/SettingsActivity;->showUdpPortDialog()V
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
    .line 231
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$1;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$1;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    #calls: Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshUdpPort()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->access$000(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    .line 235
    return-void
.end method
