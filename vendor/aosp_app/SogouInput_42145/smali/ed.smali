.class final Led;
.super Lef;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Z

.field private final b:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lef;-><init>(I)V

    .line 40
    iput-object p2, p0, Led;->a:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Led;->a:Z

    .line 42
    iput v0, p0, Led;->b:I

    .line 43
    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lef;-><init>(I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Led;->a:Z

    .line 48
    iput p3, p0, Led;->b:I

    .line 49
    iput-object p2, p0, Led;->a:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Led;->b:I

    return v0
.end method

.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Led;->a:Ljava/lang/String;

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Led;->a:Z

    return v0
.end method
