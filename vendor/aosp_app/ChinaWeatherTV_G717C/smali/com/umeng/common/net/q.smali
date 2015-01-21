.class final Lcom/umeng/common/net/q;
.super Ljava/lang/Object;
.source "ResUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:J


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/umeng/common/net/q;->a:Ljava/io/File;

    iput-wide p2, p0, Lcom/umeng/common/net/q;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/umeng/common/net/q;->a:Ljava/io/File;

    iget-wide v1, p0, Lcom/umeng/common/net/q;->b:J

    invoke-static {v0, v1, v2}, Lcom/umeng/common/net/p;->a(Ljava/io/File;J)V

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/common/net/p;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 260
    return-void
.end method
