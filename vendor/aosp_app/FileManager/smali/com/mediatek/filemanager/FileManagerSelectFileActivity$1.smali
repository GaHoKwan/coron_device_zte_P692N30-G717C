.class Lcom/mediatek/filemanager/FileManagerSelectFileActivity$1;
.super Ljava/lang/Object;
.source "FileManagerSelectFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/FileManagerSelectFileActivity;->setMainContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerSelectFileActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/FileManagerSelectFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSelectFileActivity$1;->this$0:Lcom/mediatek/filemanager/FileManagerSelectFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 70
    const-string v0, "FileManagerSelectFileActivity"

    const-string v1, "click \'Cancel\' to quit directly "

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectFileActivity$1;->this$0:Lcom/mediatek/filemanager/FileManagerSelectFileActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    return-void
.end method
