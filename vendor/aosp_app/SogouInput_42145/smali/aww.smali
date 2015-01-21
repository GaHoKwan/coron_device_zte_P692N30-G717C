.class Laww;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lawv;


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laww;->a:Ljava/util/HashMap;

    .line 851
    invoke-static {}, Laww;->b()Lawv;

    move-result-object v0

    sput-object v0, Laww;->a:Lawv;

    .line 852
    return-void
.end method

.method public static a()Lawv;
    .locals 1

    .prologue
    .line 861
    sget-object v0, Laww;->a:Lawv;

    return-object v0
.end method

.method private final a(Lawv;Lawv;Ljava/lang/String;Layx;)Lawv;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 889
    const-string v0, "TEXT_SIZE"

    sget v1, Laox;->a:I

    iget v2, p2, Lawv;->a:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lawv;->a:I

    .line 890
    const-string v0, "TEXT_COLOR"

    iget v1, p2, Lawv;->b:I

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lawv;->b:I

    .line 891
    const-string v0, "TEXT_COLOR_PRESSED"

    iget v1, p1, Lawv;->b:I

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lawv;->c:I

    .line 892
    const-string v0, "ALIGN"

    iget-object v1, p2, Lawv;->a:Landroid/graphics/Paint$Align;

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;)Landroid/graphics/Paint$Align;

    move-result-object v0

    iput-object v0, p1, Lawv;->a:Landroid/graphics/Paint$Align;

    .line 893
    const-string v0, "TYPEFACE"

    iget-object v1, p2, Lawv;->a:Landroid/graphics/Typeface;

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p1, Lawv;->a:Landroid/graphics/Typeface;

    .line 894
    const-string v0, "BOLD"

    const/4 v1, 0x0

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lawv;->a:Z

    .line 895
    return-object p1
.end method

.method static synthetic a(Laww;Ljava/lang/String;)Lawv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 845
    invoke-direct {p0, p1}, Laww;->a(Ljava/lang/String;)Lawv;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Lawv;
    .locals 3
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Laww;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawv;

    .line 878
    if-nez v0, :cond_0

    .line 879
    sget-object v1, Laww;->a:Lawv;

    .line 880
    invoke-virtual {v1}, Lawv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawv;

    .line 881
    iput-object p1, v0, Lawv;->a:Ljava/lang/String;

    .line 882
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Laww;->a(Lawv;Lawv;Ljava/lang/String;Layx;)Lawv;

    move-result-object v0

    .line 883
    iget-object v1, p0, Laww;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    :cond_0
    return-object v0
.end method

.method private static b()Lawv;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 865
    new-instance v0, Lawv;

    invoke-direct {v0}, Lawv;-><init>()V

    .line 866
    const/4 v1, 0x0

    iput-object v1, v0, Lawv;->a:Ljava/lang/String;

    .line 867
    const-wide v1, 0x3fb199999999999aL

    sget v3, Laox;->a:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lawv;->a:I

    .line 868
    iput v5, v0, Lawv;->b:I

    .line 869
    iput v5, v0, Lawv;->c:I

    .line 870
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Typeface;

    .line 871
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Paint$Align;

    .line 872
    const/4 v1, 0x0

    iput-boolean v1, v0, Lawv;->a:Z

    .line 873
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 855
    iget-object v0, p0, Laww;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 856
    iput-object v1, p0, Laww;->a:Ljava/util/HashMap;

    .line 857
    sput-object v1, Laww;->a:Lawv;

    .line 858
    return-void
.end method
