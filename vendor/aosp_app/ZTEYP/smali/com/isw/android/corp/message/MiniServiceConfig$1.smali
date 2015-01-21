.class Lcom/isw/android/corp/message/MiniServiceConfig$1;
.super Ljava/lang/Thread;
.source "MiniServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniServiceConfig;->update(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bNotify:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/isw/android/corp/message/MiniServiceConfig$1;->val$bNotify:Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isw/android/corp/message/MiniServiceConfig;->access$0(I)V

    .line 65
    iget-boolean v0, p0, Lcom/isw/android/corp/message/MiniServiceConfig$1;->val$bNotify:Z

    #calls: Lcom/isw/android/corp/message/MiniServiceConfig;->process(Z)V
    invoke-static {v0}, Lcom/isw/android/corp/message/MiniServiceConfig;->access$1(Z)V

    .line 66
    return-void
.end method
