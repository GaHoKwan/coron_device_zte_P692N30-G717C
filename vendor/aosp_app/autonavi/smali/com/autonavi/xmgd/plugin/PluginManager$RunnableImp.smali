.class Lcom/autonavi/xmgd/plugin/PluginManager$RunnableImp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mDir:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mInHostAssets:Z

.field mWhat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginManager$RunnableImp;->mDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/xmgd/plugin/PluginManager$RunnableImp;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/autonavi/xmgd/plugin/PluginManager$RunnableImp;->mWhat:I

    iput-boolean p4, p0, Lcom/autonavi/xmgd/plugin/PluginManager$RunnableImp;->mInHostAssets:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
