.class Lcom/autonavi/xmgd/citydata/DataRemover$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataRemover;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataRemover;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataRemover$1;->this$0:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover$1;->this$0:Lcom/autonavi/xmgd/citydata/DataRemover;

    #calls: Lcom/autonavi/xmgd/citydata/DataRemover;->pickNext()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->access$000(Lcom/autonavi/xmgd/citydata/DataRemover;)V

    return-void
.end method
