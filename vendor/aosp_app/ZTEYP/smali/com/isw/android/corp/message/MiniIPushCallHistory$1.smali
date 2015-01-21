.class Lcom/isw/android/corp/message/MiniIPushCallHistory$1;
.super Ljava/lang/Thread;
.source "MiniIPushCallHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniIPushCallHistory;->upload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isw/android/corp/message/MiniIPushCallHistory;->access$0(I)V

    .line 62
    #calls: Lcom/isw/android/corp/message/MiniIPushCallHistory;->process()V
    invoke-static {}, Lcom/isw/android/corp/message/MiniIPushCallHistory;->access$1()V

    .line 63
    return-void
.end method
