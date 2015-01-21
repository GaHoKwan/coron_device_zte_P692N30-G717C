.class Lcom/mediatek/filemanager/FileManagerSelectPathActivity$4;
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
    .line 122
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$4;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$4;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->showCreateFolderDialog()V

    .line 126
    return-void
.end method
