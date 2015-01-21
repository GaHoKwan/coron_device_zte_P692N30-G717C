.class Lcom/mediatek/lbs/em/FileBrowser$4;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/FileBrowser;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/FileBrowser;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/FileBrowser;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/lbs/em/FileBrowser$4;->this$0:Lcom/mediatek/lbs/em/FileBrowser;

    iput-object p2, p0, Lcom/mediatek/lbs/em/FileBrowser$4;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.lbs.em.loadnmea"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "nmeaFile"

    iget-object v2, p0, Lcom/mediatek/lbs/em/FileBrowser$4;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser$4;->this$0:Lcom/mediatek/lbs/em/FileBrowser;

    invoke-virtual {v1, v0}, Lcom/mediatek/lbs/em/FileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser$4;->this$0:Lcom/mediatek/lbs/em/FileBrowser;

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/FileBrowser;->finish()V

    .line 82
    return-void
.end method
