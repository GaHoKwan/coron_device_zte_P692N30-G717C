.class Lcom/mediatek/lbs/em/FileBrowser$1;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/FileBrowser;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/FileBrowser;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/FileBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/lbs/em/FileBrowser$1;->this$0:Lcom/mediatek/lbs/em/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser$1;->this$0:Lcom/mediatek/lbs/em/FileBrowser;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/lbs/em/FileBrowser;->mExit:Z
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/FileBrowser;->access$002(Lcom/mediatek/lbs/em/FileBrowser;Z)Z

    .line 54
    iget-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser$1;->this$0:Lcom/mediatek/lbs/em/FileBrowser;

    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser$1;->this$0:Lcom/mediatek/lbs/em/FileBrowser;

    #getter for: Lcom/mediatek/lbs/em/FileBrowser;->mSdcardPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/lbs/em/FileBrowser;->access$100(Lcom/mediatek/lbs/em/FileBrowser;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/em/FileBrowser;->getFileDir(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/FileBrowser;->access$200(Lcom/mediatek/lbs/em/FileBrowser;Ljava/lang/String;)V

    .line 55
    return-void
.end method
