.class Lnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Lni;

.field final synthetic a:Lno;


# direct methods
.method constructor <init>(Lni;Lno;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lnn;->a:Lni;

    iput-object p2, p0, Lnn;->a:Lno;

    iput-object p3, p0, Lnn;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lnn;->a:Lno;

    iget-object v1, p0, Lnn;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lno;->a(Ljava/lang/Integer;)V

    .line 151
    return-void
.end method
