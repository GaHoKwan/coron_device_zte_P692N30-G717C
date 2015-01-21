.class Lcom/isw/android/corp/message/MiniCallData$1;
.super Ljava/lang/Thread;
.source "MiniCallData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniCallData;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "MiniCallData"

    const-string v1, "MiniCallData.update..."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isw/android/corp/message/MiniCallData;->access$0(I)V

    .line 40
    #calls: Lcom/isw/android/corp/message/MiniCallData;->process()V
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallData;->access$1()V

    .line 41
    return-void
.end method
