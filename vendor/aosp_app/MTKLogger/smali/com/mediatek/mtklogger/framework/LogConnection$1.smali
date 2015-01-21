.class Lcom/mediatek/mtklogger/framework/LogConnection$1;
.super Ljava/lang/Thread;
.source "LogConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/framework/LogConnection;->connect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/LogConnection;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/LogConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/LogConnection$1;->this$0:Lcom/mediatek/mtklogger/framework/LogConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection$1;->this$0:Lcom/mediatek/mtklogger/framework/LogConnection;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogConnection;->listen()V

    .line 83
    return-void
.end method
