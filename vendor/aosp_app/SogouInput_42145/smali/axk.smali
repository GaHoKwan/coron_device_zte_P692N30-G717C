.class public Laxk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field static final synthetic a:Z


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private a:[Landroid/graphics/drawable/Drawable;

.field private a:[Ljava/lang/String;

.field private b:Z

.field private b:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Laxk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laxk;->a:Z

    .line 8
    const-string v0, "KeyboardSwitchImage"

    sput-object v0, Laxk;->a:Ljava/lang/String;

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
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v4, p0, Laxk;->b:Z

    .line 77
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "IME_Function_Switch_Pinyin"

    const-string v2, "ICONS"

    invoke-static {p1, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "IME_Function_Switch_Pinyin9"

    const-string v2, "ICONS"

    invoke-static {p1, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "IME_Function_Switch_Pinyin26"

    const-string v2, "ICONS"

    invoke-static {p1, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "IME_Function_Switch_En9"

    const-string v2, "ICONS"

    invoke-static {p1, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "IME_Function_Switch_En26"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IME_Function_Switch_Bihua"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IME_Function_Switch_HW"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Keyboard_Switch_Area_Frame"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Keyboard_Switch_Left"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Keyboard_Switch_Right"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Keyboard_Switch_OFF_Left"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Keyboard_Switch_OFF_RIGHT"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxk;->a:[Landroid/graphics/drawable/Drawable;

    .line 92
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "IME_Function_Switch_Pinyin"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "IME_Function_Switch_Pinyin9"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "IME_Function_Switch_Pinyin26"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "IME_Function_Switch_En9"

    invoke-static {p1, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "IME_Function_Switch_En26"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IME_Function_Switch_Bihua"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IME_Function_Switch_HW"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Keyboard_Switch_Area_Frame"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Keyboard_Switch_Left"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Keyboard_Switch_Right"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Keyboard_Switch_OFF_Left"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Keyboard_Switch_OFF_RIGHT"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxk;->b:[Landroid/graphics/drawable/Drawable;

    .line 107
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IME_Function_Switch_Pinyin"

    const-string v2, "LABEL"

    invoke-static {p1, v1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "IME_Function_Switch_Pinyin9"

    const-string v2, "LABEL"

    invoke-static {p1, v1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "IME_Function_Switch_Pinyin26"

    const-string v2, "LABEL"

    invoke-static {p1, v1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "IME_Function_Switch_En9"

    const-string v2, "LABEL"

    invoke-static {p1, v1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "IME_Function_Switch_En26"

    const-string v3, "LABEL"

    invoke-static {p1, v2, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IME_Function_Switch_Bihua"

    const-string v3, "LABEL"

    invoke-static {p1, v2, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IME_Function_Switch_HW"

    const-string v3, "LABEL"

    invoke-static {p1, v2, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Keyboard_Switch_Area_Frame"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Keyboard_Switch_Left"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Keyboard_Switch_Right"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Keyboard_Switch_OFF_Left"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Keyboard_Switch_OFF_RIGHT"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxk;->a:[Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 37
    sget-boolean v0, Laxk;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    iget-object v0, p0, Laxk;->b:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    sget-boolean v0, Laxk;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iget-object v0, p0, Laxk;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Laxk;->a:[Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v0, p0, Laxk;->b:[Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v0, p0, Laxk;->a:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Laxk;->a:Landroid/graphics/drawable/Drawable;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxk;->b:Z

    .line 73
    return-void
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 42
    sget-boolean v0, Laxk;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_1
    iget-object v0, p0, Laxk;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method
