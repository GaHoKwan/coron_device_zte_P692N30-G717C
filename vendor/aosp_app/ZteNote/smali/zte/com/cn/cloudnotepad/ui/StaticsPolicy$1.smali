.class Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$1;
.super Ljava/lang/Object;
.source "StaticsPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->showCheckUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$1;->this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$1;->this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    #calls: Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->checkNetworkState()Z
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->access$0(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 140
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$1;->this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    #getter for: Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->access$1(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$1;->this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    #getter for: Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->access$1(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->setIsNeedReSend(Z)V

    goto :goto_0
.end method
