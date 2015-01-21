.class public Lawl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field static final synthetic a:Z


# instance fields
.field private a:[Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private b:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lawl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lawl;->a:Z

    .line 8
    const-string v0, "IMEFunctionImage"

    sput-object v0, Lawl;->a:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Layx;Lawm;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v4, p0, Lawl;->b:Z

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "IME_Function_Edit"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "IME_Function_Expression"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "IME_Function_Mic"

    const-string v2, "ICONS"

    invoke-static {p1, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "IME_Function_Multimedia"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "IME_Function_Switch_Settings"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "IME_Function_Switch"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lawl;->a:[Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "IME_Function_Edit"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "IME_Function_Expression"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "IME_Function_Mic"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "IME_Function_Multimedia"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "IME_Function_Switch_Settings"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "IME_Function_Switch"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lawl;->b:[Landroid/graphics/drawable/Drawable;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 32
    sget-boolean v0, Lawl;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    iget-object v0, p0, Lawl;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lawl;->a:[Landroid/graphics/drawable/Drawable;

    .line 50
    iput-object v0, p0, Lawl;->b:[Landroid/graphics/drawable/Drawable;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawl;->b:Z

    .line 52
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lawl;->b:Z

    return v0
.end method
