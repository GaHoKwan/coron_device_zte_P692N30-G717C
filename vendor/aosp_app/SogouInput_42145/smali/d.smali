.class public final Ld;
.super Lm;
.source "SourceFile"


# static fields
.field private static final a:Ld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ld;

    invoke-direct {v0}, Ld;-><init>()V

    sput-object v0, Ld;->a:Ld;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lm;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Ld;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ld;->a:Ld;

    return-object v0
.end method
