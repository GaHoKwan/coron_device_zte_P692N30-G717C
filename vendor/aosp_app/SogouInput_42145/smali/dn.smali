.class final Ldn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ldh;

.field private final a:Ldi;

.field private final a:Z

.field private final b:Ldh;


# direct methods
.method constructor <init>(Ldh;Ldh;Ldi;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ldn;->a:Ldh;

    .line 44
    iput-object p2, p0, Ldn;->b:Ldh;

    .line 45
    iput-object p3, p0, Ldn;->a:Ldi;

    .line 46
    iput-boolean p4, p0, Ldn;->a:Z

    .line 47
    return-void
.end method


# virtual methods
.method a()Ldh;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ldn;->a:Ldh;

    return-object v0
.end method

.method a()Ldi;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldn;->a:Ldi;

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Ldn;->a:Z

    return v0
.end method

.method b()Ldh;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ldn;->b:Ldh;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ldn;->b:Ldh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
