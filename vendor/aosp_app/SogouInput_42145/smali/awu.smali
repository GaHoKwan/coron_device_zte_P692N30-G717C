.class Lawu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lawt;


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lawu;->a:Ljava/util/HashMap;

    .line 936
    invoke-static {}, Lawu;->b()Lawt;

    move-result-object v0

    sput-object v0, Lawu;->a:Lawt;

    .line 937
    return-void
.end method

.method public static a()Lawt;
    .locals 1

    .prologue
    .line 946
    sget-object v0, Lawu;->a:Lawt;

    return-object v0
.end method

.method private final a(Lawt;Lawt;Ljava/lang/String;Layx;)Lawt;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 976
    const-string v0, "SHADOW_RADIUS_NORMAL"

    iget v1, p2, Lawt;->a:F

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lawt;->a:F

    .line 977
    const-string v0, "SHADOW_RADIUS_PRESSED"

    iget v1, p2, Lawt;->d:F

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lawt;->d:F

    .line 978
    const-string v0, "SHADOW_COLOR_NORMAL"

    iget v1, p2, Lawt;->a:I

    invoke-static {p4, p3, v0, v1}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lawt;->a:I

    .line 979
    const-string v0, "SHADOW_COLOR_PRESSED"

    iget v1, p2, Lawt;->b:I

    invoke-static {p4, p3, v0, v1}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lawt;->b:I

    .line 980
    const-string v0, "SHADOW_DX_NORMAL"

    iget v1, p2, Lawt;->b:F

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lawt;->b:F

    .line 981
    const-string v0, "SHADOW_DX_PRESSED"

    iget v1, p2, Lawt;->e:F

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lawt;->e:F

    .line 982
    const-string v0, "SHADOW_DY_NORMAL"

    iget v1, p2, Lawt;->c:F

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lawt;->c:F

    .line 983
    const-string v0, "SHADOW_DY_PRESSED"

    iget v1, p2, Lawt;->f:F

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lawt;->f:F

    .line 984
    return-object p1
.end method

.method static synthetic a(Lawu;Ljava/lang/String;)Lawt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lawu;->a(Ljava/lang/String;)Lawt;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Lawt;
    .locals 3
    .parameter

    .prologue
    .line 964
    iget-object v0, p0, Lawu;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawt;

    .line 965
    if-nez v0, :cond_0

    .line 966
    sget-object v1, Lawu;->a:Lawt;

    .line 967
    invoke-virtual {v1}, Lawt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawt;

    .line 968
    iput-object p1, v0, Lawt;->a:Ljava/lang/String;

    .line 969
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lawu;->a(Lawt;Lawt;Ljava/lang/String;Layx;)Lawt;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lawu;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_0
    return-object v0
.end method

.method private static b()Lawt;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 950
    new-instance v0, Lawt;

    invoke-direct {v0}, Lawt;-><init>()V

    .line 951
    const/4 v1, 0x0

    iput-object v1, v0, Lawt;->a:Ljava/lang/String;

    .line 952
    iput v2, v0, Lawt;->a:F

    .line 953
    iput v2, v0, Lawt;->d:F

    .line 954
    iput v2, v0, Lawt;->b:F

    .line 955
    iput v2, v0, Lawt;->e:F

    .line 956
    iput v2, v0, Lawt;->c:F

    .line 957
    iput v2, v0, Lawt;->f:F

    .line 958
    iput v3, v0, Lawt;->a:I

    .line 959
    iput v3, v0, Lawt;->b:I

    .line 960
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 940
    iget-object v0, p0, Lawu;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 941
    iput-object v1, p0, Lawu;->a:Ljava/util/HashMap;

    .line 942
    sput-object v1, Lawu;->a:Lawt;

    .line 943
    return-void
.end method
