.class Lcom/mediatek/gallery3d/video/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/SettingsActivity;->showBufferSizeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/SettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$4;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    iput p2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 470
    iget v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$4;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$4;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    #calls: Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshBufferSizeHttp()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->access$500(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity$4;->this$0:Lcom/mediatek/gallery3d/video/SettingsActivity;

    #calls: Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshBufferSizeRtsp()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->access$600(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    goto :goto_0
.end method
