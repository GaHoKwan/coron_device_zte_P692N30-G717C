.class Lwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Lwo;

.field final synthetic a:Lwu;


# direct methods
.method constructor <init>(Lwo;Lwu;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lwt;->a:Lwo;

    iput-object p2, p0, Lwt;->a:Lwu;

    iput-object p3, p0, Lwt;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lwt;->a:Lwu;

    iget-object v1, p0, Lwt;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lwu;->a(Ljava/lang/Integer;)V

    .line 152
    return-void
.end method
