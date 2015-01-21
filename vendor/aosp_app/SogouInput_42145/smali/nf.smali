.class Lnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Lnb;

.field final synthetic a:Lng;


# direct methods
.method constructor <init>(Lnb;Lng;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lnf;->a:Lnb;

    iput-object p2, p0, Lnf;->a:Lng;

    iput-object p3, p0, Lnf;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lnf;->a:Lng;

    iget-object v1, p0, Lnf;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lng;->a(Ljava/lang/Integer;)V

    .line 144
    return-void
.end method
