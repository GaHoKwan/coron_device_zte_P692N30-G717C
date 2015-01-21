.class Lahw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lahr;

.field final synthetic a:Lahx;

.field final synthetic a:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lahr;Lahx;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lahw;->a:Lahr;

    iput-object p2, p0, Lahw;->a:Lahx;

    iput-object p3, p0, Lahw;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lahw;->a:Lahx;

    iget-object v1, p0, Lahw;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lahx;->a(Ljava/lang/Integer;)V

    .line 159
    return-void
.end method
