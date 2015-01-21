.class public Lgr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgq;

.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lgq;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-object p1, p0, Lgr;->a:Lgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, Lgr;->a:Z

    .line 71
    iput-boolean v0, p0, Lgr;->b:Z

    .line 72
    iput-boolean v0, p0, Lgr;->c:Z

    .line 73
    return-void
.end method
