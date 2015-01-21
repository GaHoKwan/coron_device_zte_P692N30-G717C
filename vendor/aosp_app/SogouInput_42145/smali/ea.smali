.class final Lea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Led;

.field private final a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lea;->a:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lea;->a:Led;

    .line 41
    return-void
.end method

.method constructor <init>(Led;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p2, p0, Lea;->a:Z

    .line 50
    iput-object p1, p0, Lea;->a:Led;

    .line 51
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lea;->a:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lea;->a:Led;

    .line 46
    return-void
.end method


# virtual methods
.method a()Led;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lea;->a:Led;

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lea;->a:Z

    return v0
.end method
