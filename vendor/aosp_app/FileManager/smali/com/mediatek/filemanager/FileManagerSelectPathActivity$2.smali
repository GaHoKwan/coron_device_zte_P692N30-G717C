.class Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;
.super Ljava/lang/Object;
.source "FileManagerSelectPathActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->setMainContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "download path"

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "FileManagerSelectPathActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMainContentView,OK confirmed,Current Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    iget-object v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 107
    return-void
.end method
