.class Laim;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Laim;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Laim;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lrr;

    move-result-object v0

    invoke-virtual {v0}, Lrr;->f()I

    .line 285
    return-void
.end method
