.class public final Laps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Laps;


# instance fields
.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a()Laps;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Laps;->a:Laps;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Laps;

    invoke-direct {v0}, Laps;-><init>()V

    sput-object v0, Laps;->a:Laps;

    .line 18
    :cond_0
    sget-object v0, Laps;->a:Laps;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Laps;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 35
    return-void
.end method
