.class public final Lfd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfd;

.field private static final a:[Lfd;

.field public static final b:Lfd;

.field public static final c:Lfd;

.field public static final d:Lfd;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lfd;

    const-string v1, "L"

    invoke-direct {v0, v2, v3, v1}, Lfd;-><init>(IILjava/lang/String;)V

    sput-object v0, Lfd;->a:Lfd;

    .line 36
    new-instance v0, Lfd;

    const-string v1, "M"

    invoke-direct {v0, v3, v2, v1}, Lfd;-><init>(IILjava/lang/String;)V

    sput-object v0, Lfd;->b:Lfd;

    .line 40
    new-instance v0, Lfd;

    const-string v1, "Q"

    invoke-direct {v0, v4, v5, v1}, Lfd;-><init>(IILjava/lang/String;)V

    sput-object v0, Lfd;->c:Lfd;

    .line 44
    new-instance v0, Lfd;

    const-string v1, "H"

    invoke-direct {v0, v5, v4, v1}, Lfd;-><init>(IILjava/lang/String;)V

    sput-object v0, Lfd;->d:Lfd;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lfd;

    sget-object v1, Lfd;->b:Lfd;

    aput-object v1, v0, v2

    sget-object v1, Lfd;->a:Lfd;

    aput-object v1, v0, v3

    sget-object v1, Lfd;->d:Lfd;

    aput-object v1, v0, v4

    sget-object v1, Lfd;->c:Lfd;

    aput-object v1, v0, v5

    sput-object v0, Lfd;->a:[Lfd;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lfd;->a:I

    .line 54
    iput p2, p0, Lfd;->b:I

    .line 55
    iput-object p3, p0, Lfd;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static a(I)Lfd;
    .locals 1
    .parameter

    .prologue
    .line 79
    if-ltz p0, :cond_0

    sget-object v0, Lfd;->a:[Lfd;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_1
    sget-object v0, Lfd;->a:[Lfd;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lfd;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lfd;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lfd;->a:Ljava/lang/String;

    return-object v0
.end method
