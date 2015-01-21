.class Lawp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lawo;

.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lawp;->a:Ljava/util/HashMap;

    .line 752
    invoke-direct {p0}, Lawp;->a()Lawo;

    move-result-object v0

    iput-object v0, p0, Lawp;->a:Lawo;

    .line 753
    return-void
.end method

.method private final a()Lawo;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3fe0

    const/4 v5, 0x0

    .line 774
    new-instance v0, Lawo;

    invoke-direct {v0}, Lawo;-><init>()V

    .line 775
    const-wide v1, 0x3fb999999999999aL

    sget v3, Laox;->a:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lawo;->b:I

    .line 776
    const-wide v1, 0x3fc999999999999aL

    sget v3, Laox;->a:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lawo;->c:I

    .line 777
    iget v1, v0, Lawo;->b:I

    int-to-double v1, v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, v0, Lawo;->d:I

    .line 778
    iget v1, v0, Lawo;->c:I

    int-to-double v1, v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, v0, Lawo;->e:I

    .line 779
    const/4 v1, 0x1

    iput-boolean v1, v0, Lawo;->a:Z

    .line 780
    invoke-static {}, Laww;->a()Lawv;

    move-result-object v1

    iput-object v1, v0, Lawo;->a:Lawv;

    .line 781
    invoke-static {}, Lawu;->a()Lawt;

    move-result-object v1

    iput-object v1, v0, Lawo;->a:Lawt;

    .line 782
    iput v5, v0, Lawo;->f:I

    .line 783
    iput v5, v0, Lawo;->g:I

    .line 784
    iput-boolean v5, v0, Lawo;->b:Z

    .line 785
    invoke-static {}, Laww;->a()Lawv;

    move-result-object v1

    iput-object v1, v0, Lawo;->b:Lawv;

    .line 786
    invoke-static {}, Lawu;->a()Lawt;

    move-result-object v1

    iput-object v1, v0, Lawo;->b:Lawt;

    .line 787
    iput v5, v0, Lawo;->h:I

    .line 788
    return-object v0
.end method

.method private final a(Lawo;Lawo;Ljava/lang/String;Layx;)Lawo;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    const-string v0, "W"

    sget v1, Laox;->a:I

    iget v2, p2, Lawo;->b:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lawo;->b:I

    .line 794
    const-string v0, "H"

    sget v1, Laox;->a:I

    iget v2, p2, Lawo;->c:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lawo;->c:I

    .line 795
    const-string v0, "LABEL_ORIENTATION"

    const/4 v1, 0x0

    invoke-static {p4, p3, v0, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lawo;->a:I

    .line 796
    const-string v0, "LABEL_X"

    iget v1, p1, Lawo;->b:I

    iget v2, p2, Lawo;->d:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lawo;->d:I

    .line 797
    const-string v0, "LABEL_Y"

    iget v1, p1, Lawo;->c:I

    iget v2, p2, Lawo;->e:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lawo;->e:I

    .line 798
    const-string v0, "LABEL_VISIBLE"

    iget-boolean v1, p2, Lawo;->a:Z

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lawo;->a:Z

    .line 799
    const-string v0, "LABEL_STYLE"

    iget-object v1, p2, Lawo;->a:Lawv;

    invoke-static {p4, p3, v0, v1}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p1, Lawo;->a:Lawv;

    .line 800
    const-string v0, "LABEL_SHADOW_STYLE"

    iget-object v1, p2, Lawo;->a:Lawt;

    invoke-static {p4, p3, v0, v1}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawt;)Lawt;

    move-result-object v0

    iput-object v0, p1, Lawo;->a:Lawt;

    .line 802
    const-string v0, "MINOR_LABEL_X"

    iget v1, p1, Lawo;->b:I

    iget v2, p2, Lawo;->f:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lawo;->f:I

    .line 803
    const-string v0, "MINOR_LABEL_Y"

    iget v1, p1, Lawo;->c:I

    iget v2, p2, Lawo;->g:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lawo;->g:I

    .line 804
    const-string v0, "MINOR_LABEL_VISIBLE"

    iget-boolean v1, p2, Lawo;->b:Z

    invoke-static {p4, p3, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lawo;->b:Z

    .line 805
    const-string v0, "MINOR_LABEL_STYLE"

    iget-object v1, p2, Lawo;->b:Lawv;

    invoke-static {p4, p3, v0, v1}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p1, Lawo;->b:Lawv;

    .line 806
    const-string v0, "LABEL_SHADOW_MINOR_STYLE"

    iget-object v1, p2, Lawo;->b:Lawt;

    invoke-static {p4, p3, v0, v1}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawt;)Lawt;

    move-result-object v0

    iput-object v0, p1, Lawo;->b:Lawt;

    .line 807
    const-string v0, "MODE"

    iget v1, p2, Lawo;->h:I

    invoke-static {p4, p3, v0, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lawo;->h:I

    .line 808
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lawo;
    .locals 3
    .parameter

    .prologue
    .line 762
    iget-object v0, p0, Lawp;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 763
    if-nez v0, :cond_0

    .line 764
    iget-object v1, p0, Lawp;->a:Lawo;

    .line 765
    invoke-virtual {v1}, Lawo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 766
    iput-object p1, v0, Lawo;->a:Ljava/lang/String;

    .line 767
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lawp;->a(Lawo;Lawo;Ljava/lang/String;Layx;)Lawo;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lawp;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 756
    iget-object v0, p0, Lawp;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 757
    iput-object v1, p0, Lawp;->a:Ljava/util/HashMap;

    .line 758
    iput-object v1, p0, Lawp;->a:Lawo;

    .line 759
    return-void
.end method
