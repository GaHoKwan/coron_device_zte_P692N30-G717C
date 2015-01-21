.class Lcom/zte/zdmdaemon/redbend/Fota$1;
.super Ljava/lang/Object;
.source "Fota.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zdmdaemon/redbend/Fota;->reboot(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zdmdaemon/redbend/Fota;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/zdmdaemon/redbend/Fota;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/zdmdaemon/redbend/Fota$1;->this$0:Lcom/zte/zdmdaemon/redbend/Fota;

    iput-object p2, p0, Lcom/zte/zdmdaemon/redbend/Fota$1;->val$context:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    const-string v1, "zdmDaemon"

    const-string v2, "recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/zte/zdmdaemon/redbend/Fota$1;->val$context:Landroid/content/Context;

    .line 107
    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    check-cast v0, Landroid/os/PowerManager;

    .line 108
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 109
    return-void
.end method
