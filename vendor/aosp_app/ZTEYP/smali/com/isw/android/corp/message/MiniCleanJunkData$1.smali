.class Lcom/isw/android/corp/message/MiniCleanJunkData$1;
.super Ljava/lang/Thread;
.source "MiniCleanJunkData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniCleanJunkData;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 51
    #calls: Lcom/isw/android/corp/message/MiniCleanJunkData;->process()V
    invoke-static {}, Lcom/isw/android/corp/message/MiniCleanJunkData;->access$0()V

    .line 52
    return-void
.end method
