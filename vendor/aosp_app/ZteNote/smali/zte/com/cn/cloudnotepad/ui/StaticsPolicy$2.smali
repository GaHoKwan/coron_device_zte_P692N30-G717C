.class Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$2;
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$2;->this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$2;->this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    #getter for: Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->access$1(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$2;->this$0:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    #getter for: Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->access$1(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->checkUpdate()V

    .line 151
    :cond_0
    return-void
.end method
