.class Lagx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lagw;


# direct methods
.method constructor <init>(Lagw;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lagx;->a:Lagw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    invoke-static {v1}, Lage;->b(Lage;)Lhk;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lhr;->a(Lhk;Z)V

    .line 294
    return-void
.end method
