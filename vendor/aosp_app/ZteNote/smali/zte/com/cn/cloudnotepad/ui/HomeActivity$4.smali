.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;)Lzte/com/cn/cloudnotepad/ui/HomeActivity;
    .locals 1
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$10(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    move-result-object v0

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4$1;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4$1;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->setOnServiceConnectedListener(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;)V

    .line 436
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$10(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->bindService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const/4 v1, 0x0

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initViewOnConnect(Z)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$12(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Z)V

    .line 439
    :cond_0
    return-void
.end method
