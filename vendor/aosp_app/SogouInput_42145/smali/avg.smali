.class Lavg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lavf;


# direct methods
.method constructor <init>(Lavf;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lavg;->a:Lavf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lavg;->a:Lavf;

    iget-boolean v0, v0, Lavf;->u:Z

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lavg;->a:Lavf;

    invoke-virtual {v0}, Lavf;->f()V

    goto :goto_0
.end method
