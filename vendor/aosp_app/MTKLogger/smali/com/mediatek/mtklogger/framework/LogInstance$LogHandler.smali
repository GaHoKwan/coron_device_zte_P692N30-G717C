.class Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
.super Landroid/os/Handler;
.source "LogInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/LogInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/LogInstance;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/LogInstance;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->this$0:Lcom/mediatek/mtklogger/framework/LogInstance;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method
