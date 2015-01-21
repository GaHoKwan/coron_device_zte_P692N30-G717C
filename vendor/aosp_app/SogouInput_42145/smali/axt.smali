.class public Laxt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field static final synthetic a:Z


# instance fields
.field private a:[Landroid/graphics/drawable/Drawable;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Laxt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laxt;->a:Z

    .line 8
    const-string v0, "TriangleImage"

    sput-object v0, Laxt;->a:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Layx;Lawm;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v3, p0, Laxt;->b:Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "IME_Function_Up_Triangle"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "IME_Function_Down_Triangle"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxt;->a:[Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 22
    sget-boolean v0, Laxt;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_1
    iget-object v0, p0, Laxt;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Laxt;->a:[Landroid/graphics/drawable/Drawable;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxt;->b:Z

    .line 37
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Laxt;->b:Z

    return v0
.end method
