.class Lacg;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lace;


# direct methods
.method constructor <init>(Lace;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lacg;->a:Lace;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lacg;->a:Lace;

    invoke-virtual {v0}, Lace;->g()V

    .line 357
    return-void
.end method
