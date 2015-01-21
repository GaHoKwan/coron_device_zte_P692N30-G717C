.class Lcom/mediatek/filemanager/FileManagerSelectPathActivity$3;
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
    .line 111
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$3;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$3;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 116
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$3;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 118
    return-void
.end method
