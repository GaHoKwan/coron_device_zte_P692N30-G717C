.class public abstract Lah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lai;


# direct methods
.method protected constructor <init>(Lai;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lah;->a:Lai;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_1
    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p0, :cond_2

    .line 62
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 63
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lai;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lah;->a:Lai;

    return-object v0
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lah;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
