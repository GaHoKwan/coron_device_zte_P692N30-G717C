.class public final Lfq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lfm;

.field private final b:Lfm;

.field private final c:Lfm;


# direct methods
.method public constructor <init>([Lfm;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lfq;->a:Lfm;

    .line 33
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lfq;->b:Lfm;

    .line 34
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lfq;->c:Lfm;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lfm;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfq;->a:Lfm;

    return-object v0
.end method

.method public b()Lfm;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lfq;->b:Lfm;

    return-object v0
.end method

.method public c()Lfm;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lfq;->c:Lfm;

    return-object v0
.end method
