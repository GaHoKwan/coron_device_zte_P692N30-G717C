.class Lzte/com/cn/cloudnotepad/ui/SplashActivity$splashHandler;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "splashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SplashActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SplashActivity$splashHandler;->this$0:Lzte/com/cn/cloudnotepad/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SplashActivity$splashHandler;->this$0:Lzte/com/cn/cloudnotepad/ui/SplashActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/SplashActivity;->isFirstEnter()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/SplashActivity;)V

    .line 28
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SplashActivity$splashHandler;->this$0:Lzte/com/cn/cloudnotepad/ui/SplashActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->finish()V

    .line 29
    return-void
.end method
