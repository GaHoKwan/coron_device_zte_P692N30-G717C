.class Laci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lace;


# direct methods
.method constructor <init>(Lace;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Laci;->a:Lace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Laci;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)I

    .line 462
    return-void
.end method
