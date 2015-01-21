.class Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;
.super Ljava/lang/Thread;
.source "PortingInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->loadNetQinData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    #calls: Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->loadLogs()V
    invoke-static {v0}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->access$000(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    .line 254
    return-void
.end method
