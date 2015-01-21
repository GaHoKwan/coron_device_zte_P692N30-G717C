.class public final Lo/aux;
.super Ljava/io/Writer;
.source ""


# instance fields
.field private 櫯:Ljava/lang/StringBuilder;

.field private final 鷭:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lo/aux;->櫯:Ljava/lang/StringBuilder;

    .line 40
    iput-object p1, p0, Lo/aux;->鷭:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private 鷭()V
    .locals 3

    .line 0
    iget-object v0, p0, Lo/aux;->櫯:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lo/aux;->鷭:Ljava/lang/String;

    iget-object v1, p0, Lo/aux;->櫯:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lo/aux;->櫯:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aux;->櫯:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lo/aux;->鷭()V

    .line 45
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lo/aux;->鷭()V

    .line 49
    return-void
.end method

.method public final write([CII)V
    .locals 3

    .line 0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 53
    add-int v0, p2, v1

    aget-char v2, p1, v0

    .line 54
    const/16 v0, 0xa

    if-ne v2, v0, :cond_0

    .line 55
    invoke-direct {p0}, Lo/aux;->鷭()V

    goto :goto_1

    .line 58
    :cond_0
    iget-object v0, p0, Lo/aux;->櫯:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method
