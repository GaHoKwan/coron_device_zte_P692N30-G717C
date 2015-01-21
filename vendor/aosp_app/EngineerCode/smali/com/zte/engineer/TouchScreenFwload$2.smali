.class Lcom/zte/engineer/TouchScreenFwload$2;
.super Ljava/lang/Object;
.source "TouchScreenFwload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/TouchScreenFwload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/TouchScreenFwload;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TouchScreenFwload;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwload$2;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>rebootForTPUpdateThread--run()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "TouchScreenFwload"

    const-string v1, "------touchscreenfwloader(5)----qian-----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->touchscreenfwloader(I)Ljava/lang/String;

    .line 68
    const-string v0, "TouchScreenFwload"

    const-string v1, "------touchscreenfwloader(5)----hou-----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<rebootForTPUpdateThread--run()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
