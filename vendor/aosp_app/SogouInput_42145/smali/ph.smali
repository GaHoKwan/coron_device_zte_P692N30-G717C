.class Lph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Lpc;

.field final synthetic a:Lpi;


# direct methods
.method constructor <init>(Lpc;Lpi;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lph;->a:Lpc;

    iput-object p2, p0, Lph;->a:Lpi;

    iput-object p3, p0, Lph;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lph;->a:Lpi;

    iget-object v1, p0, Lph;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lpi;->a(Ljava/lang/Integer;)V

    .line 162
    return-void
.end method
