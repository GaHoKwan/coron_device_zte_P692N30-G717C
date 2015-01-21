.class public final Lk;
.super Lm;
.source "SourceFile"


# static fields
.field private static final a:Lk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lk;

    invoke-direct {v0}, Lk;-><init>()V

    sput-object v0, Lk;->a:Lk;

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

.method public static a()Lk;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lk;->a:Lk;

    return-object v0
.end method
